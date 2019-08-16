#!/usr/bin/env ruby
#
# wimgs - Wiki images bulk downloader
#
# developed and maintained by Asaf Bartov <asaf.bartov@gmail.com>
#
# tested on Ruby 2.0.  Should work on 1.9.3 as well.

require 'rubygems'
require 'getoptlong'
require 'mediawiki_api'
#require 'media_wiki'
require 'sqlite3'

VERSION = "0.1 2015-01-13"
NONE = 1
PARTIAL = 2
DONE = 3
MISSING = 4
UNREACHABLE = 5

def usage
  puts <<-EOF
wimgs - Wiki images bulk downloader - version #{VERSION}

Usage: 

1. To dump all images for a set of articles with titles listed in UTF-8 in <fname> (one per line), from Wiki <wiki>, to directory <dumpdir>:

 wimgs --wiki <wiki> --articles <fname> --images-dir <dumpdir>
 Example: wimgs --wiki en.wikipedia.org --articles my_favorite_articles.txt --images-dir /home/moose/dump/images 
 Example with abbreviated options: wimgs -w en.wikipedia.org -i my_favorite_articles.txt -d /home/moose/dump/images

 --images-dir defaults to './images'

3. To dump all images of a particular category on Commons, use --category instead of --articles:

 wimgs --wiki commons.wikimedia.org --category "Images from Wiki Loves Africa 2014 in Ghana" --images-dir /home/moose/wlm_gh/images
 
4. To NOT download the full/original resolution, but a given width, specify the maximum width using --width:

 wimgs --wiki tr.wikipedia.org --articles my_favorite_turkish_articles.txt --width 800

5. To NOT resume an interrupted dump, add the --no-resume (or -r) argument

6. To only check and show the status of a dump, add the --status (or -s) argument.  Nothing will be downloaded.

NOTE: wimgs will create a sqlite3 database in the current working directory named wimgs.db.  If the database already exists, wimgs will attempt to resume the dump unless instructed not to, in which case the database will be recreated and any existing image files overwritten.

To report issues or contribute to the code, see http://github.com/abartov/wimgs
  EOF
  exit
end
def valid_config?(dbcfg, cfg, mode)
  return false if dbcfg[:mode] != mode
  [:wiki, :list, :width, :imgdir].each {|s| return false if dbcfg[s] != cfg[s] }
  return true
end

def prepare_db(cfg, mode)
  db = SQLite3::Database.new "wimgs.db"
  db.results_as_hash = true
  # check whether existing DB is from a previous run with same params; clobber if not, or if no-resume specified
  clobber = false
  config_exists = !(db.get_first_row("SELECT * FROM sqlite_master WHERE name = 'config' and type='table';").nil?)
  if config_exists
    # read config and compare to command line
    dbcfg = db.get_first_row("SELECT * FROM config;")
    clobber = true unless valid_config?(dbcfg, cfg, mode)
    if mode == 'articles'
      clobber = true if db.get_first_row("SELECT * FROM sqlite_master WHERE name ='articles' and type='table';").nil?
    end
    clobber = true if db.get_first_row("SELECT * FROM sqlite_master WHERE name = 'images' and type='table';").nil?
    clobber = true unless cfg[:resume]
  else
    clobber = true
  end

  if clobber
    # clobber everything and start afresh
    begin
      db.execute("DROP TABLE config;")
    rescue
    end
    begin
      db.execute("DROP TABLE articles;")
    rescue
    end
    begin
      db.execute("DROP TABLE images;")
    rescue
    end
    db.execute("CREATE TABLE config (mode varchar(10), wiki varchar(200), category varchar(400), list varchar(400), imgdir varchar(400), width varchar(10));")
    db.execute("INSERT INTO config VALUES (?, ?, ?, ?, ?, ?);", mode, cfg[:wiki], cfg[:category], cfg[:list], cfg[:imgdir], cfg[:width])
    db.execute("CREATE TABLE articles (id integer primary key autoincrement, title varchar(1000), status int);")
    db.execute("CREATE TABLE images (id integer primary key autoincrement, article_id int, filename varchar(1000), status int, filepath varchar(1000))")
    puts "Empty database created."
  end
  return db
end

def print_stats(db)
  images_count = db.execute("SELECT COUNT(id) FROM images")[0]['COUNT(id)']
  none_count = db.execute("SELECT COUNT(id) FROM images WHERE status = ?", NONE)[0]['COUNT(id)']
  done_count = db.execute("SELECT COUNT(id) FROM images WHERE status = ?", DONE)[0]['COUNT(id)']
  missing_count = db.execute("SELECT COUNT(id) FROM images WHERE status = ?", MISSING)[0]['COUNT(id)']
  puts "of #{images_count} known images:\n  #{done_count} have been downloaded\n  #{missing_count} were not found when we tried\n  #{none_count} are yet to be downloaded."
  return { :total => images_count, :done => done_count, :missing => missing_count, :todo => none_count}
end

def category_files(mw, cat)
  ret = []
  last_continue = ''
  done = false
  while not done do
    opts = {cmtitle: "Category:#{cat}", cmlimit: 500, cmtype: 'file', continue: '', cmcontinue: last_continue}
    r = mw.list(:categorymembers, opts)
    ret += r.data.map {|item| item["title"]}
    unless r['continue'] # no need to continue
      done = true
    else
      last_continue = r['continue']['cmcontinue']
    end
  end
  return ret
end

def get_image(mw, cfg, img)
  begin
    filename = img['filename'][5..-1]
    outfile = cfg[:imgdir]+"/#{filename}"
    opts = {iiprop: "url", titles: "#{img['filename']}"}
    key = "url"
    unless cfg[:width].nil? # download full resolution if no thumbnail width specified
      opts.merge!({iiurlwidth: cfg[:width]})
      key = "thumburl"
    end
    ii = mw.prop(:imageinfo, opts)
    url = ii.data["pages"][ii.data["pages"].keys[0]]["imageinfo"][0][key] # if actual width <= cfg[:width], the original image would be in thumburl
    `wget -O "#{outfile}" "#{url}"`
    return nil unless $?.success?
    img['filepath'] = outfile
    return img
  rescue
    return nil # failed download handled by caller
  end
end

# main
cfg = { :list => nil, :imgdir => './images', :resume => true, :status => false, :wiki => nil, :width => nil, :category => nil }

opts = GetoptLong.new(
  [ '--help', '-h', GetoptLong::NO_ARGUMENT ],
  [ '--articles', '-i', GetoptLong::NO_ARGUMENT],
  [ '--category', '-c', GetoptLong::OPTIONAL_ARGUMENT],
  [ '--images-dir', '-d', GetoptLong::REQUIRED_ARGUMENT],
  [ '--no-resume', '-r', GetoptLong::NO_ARGUMENT],
  [ '--status', '-s', GetoptLong::NO_ARGUMENT],
  [ '--wiki', '-w', GetoptLong::REQUIRED_ARGUMENT],
  [ '--width', '-x', GetoptLong::OPTIONAL_ARGUMENT]
)

opts.each {|opt, arg|
  case opt
    when '--help'
      usage
    when '--articles'
      cfg[:list] = arg
    when '--wiki'
      cfg[:wiki] = arg
    when '--status'
      cfg[:status] = true
    when '--no-resume'
      cfg[:resume] = false
    when '--images-dir'
      cfg[:imgdir] = arg
    when '--category'
      cfg[:category] = arg.gsub(' ','_')
    when '--width'
      cfg[:width] = arg
  end
}

usage if cfg[:wiki].nil? or (cfg[:category].nil? and cfg[:list].nil?) or (not cfg[:category].nil? and not cfg[:list].nil?) # check args, print usage

mode = cfg[:category].nil? ? 'articles' : 'category' # then articles mode

db = prepare_db(cfg, mode)

# initialize resources
mw = MediawikiApi::Client.new("https://#{cfg[:wiki]}/w/api.php")

if mode == 'category'
  print "reading category image list... "
  resp = category_files(mw, "#{cfg[:category]}") 
  files = []
  resp.each {|r| files << r if r[0..4] == 'File:'}
  print "done!\nInserting into DB... "
  files.each {|img| 
    res = nil
    begin
      res = db.execute("SELECT id FROM images WHERE filename = ?", img)[0] # don't insert dupes
    rescue
    end
    db.execute("INSERT INTO images VALUES (NULL, NULL, ?, ?, NULL)", img, NONE) if res.nil?
  }
  puts "done!"
  images_count = db.execute("SELECT COUNT(id) FROM images")[0]['COUNT(id)']
  done_count = db.execute("SELECT COUNT(id) FROM images WHERE status = ?", DONE)[0]['COUNT(id)']
  puts "Stats: #{images_count} total images in category, #{done_count} downloaded in previous runs so far."
  exit 0 if cfg[:status] # in which case we're done! :)
else
  print "reading article list... "
  articles = File.open(cfg[:list], 'r:UTF-8').read.split "\n" # read article list

  print "done!\nChecking database status... "

  # check dump status
  articles_count = db.execute("SELECT COUNT(id) FROM articles")[0]['COUNT(id)']
  if articles_count != articles.length # stale DB, try to complement it from current list and weed out stale rows
    print "stale database!\nAdding articles from list, removing articles no longer on list, preserving status of existing article rows... "
    db.execute("SELECT id, title FROM articles") do |row|
      puts "DBG: title: #{row['title']}"
      unless articles.include?(row['title']) 
        db.execute("DELETE FROM articles WHERE id = #{row['id']}") # delete DB row if not in current list
        db.execute("DELETE FROM images WHERE article_id = #{row['id']}")
      else
        articles.delete(row['title']) # exists in DB, remove from list to leave only ones needing to be added
      end
    end
    articles.each {|a| # add missing articles to DB
     db.execute("INSERT INTO articles VALUES (NULL, ?, ?)", a, NONE)
    }
    puts "done!"
  else
    puts "articles table okay... "
  end
  articles_count = db.execute("SELECT COUNT(id) FROM articles")[0]['COUNT(id)']
  none_count = db.execute("SELECT COUNT(id) FROM articles WHERE status = ?", NONE)[0]['COUNT(id)']
  partial_count = db.execute("SELECT COUNT(id) FROM articles WHERE status = ?", PARTIAL)[0]['COUNT(id)']
  done_count = db.execute("SELECT COUNT(id) FROM articles WHERE status = ?", DONE)[0]['COUNT(id)']
  puts "Stats: #{articles_count} total, #{done_count} done, #{partial_count} partial, #{none_count} not started."

  exit 0 if cfg[:status] # in which case we're done! :)

  # collect image file names through Mediawiki API
  puts "Completing image lists for #{none_count} articles and storing image file names in DB..."
  db.execute("SELECT id, title FROM articles WHERE status = ?", 1) do |row|
    imgs = mw.images(row['title']) # switch API
    unless imgs.nil?
      imgs.each do |img|
        db.execute("INSERT INTO images VALUES (NULL, ?, ?, ?, NULL)", row['id'], img, NONE)
      end
      db.execute("UPDATE articles SET status = ? WHERE id = ?", PARTIAL, row['id']) 
      puts("Noted #{imgs.length} images in article #{row['title']}")
    else
      db.execute("UPDATE articles SET status = ? WHERE id = ?", DONE, row['id'])
      puts("No images in article #{row['title']}")
    end
  end
  puts '-='*3 + Time.now.to_s + '-='*20
  puts 'populated database with image names for all articles in the list!'
  puts '-='*35
end
# TODO: download remaining items, marking status after every download
stats = print_stats(db)
if mode == 'articles'
  db.execute("SELECT id, title FROM articles WHERE status <> ?", DONE) do |article|
  # TODO: attempt to retrieve all non-missing images
  # TODO: update article status
  end
else # category
  puts "Downloading #{stats[:todo]} remaining images... (#{stats[:missing]} missing so far)"
  i = 0
  missing = stats[:missing]
  imgs = db.execute("SELECT id, filename, status FROM images WHERE status <> ?", DONE) 
  imgs.each do |img|
    updimg = get_image(mw, cfg, img)
    unless updimg.nil?
      db.transaction
      db.execute("UPDATE images SET status = ?, filepath = ? WHERE id = ?", DONE, updimg['filepath'], img['id'])
      db.commit
      i += 1
    else
      db.transaction
      db.execute("UPDATE images SET status = ? WHERE id = ?", MISSING, img['id'])
      db.commit
      missing += 1
    end
    puts "==> #{i.to_s} images downloaded so far (#{missing.to_s} missing)" if i % 3 == 0
  end
end

# TODO: finalize DB, report results
print_stats(db)
db.close
puts "wimgs done!"

