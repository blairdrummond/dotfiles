" set so=999
" set so=0

" Change Leader and LocalLeader keys:
let maplocalleader = ","
" let mapleader="\<SPACE>"
let mapleader = ";"

noremap <space> :

" set paste
" set formatoptions+=a

set t_Co=16

" syntax highlighting
syntax on

" Tab specific option
set tabstop=8                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces

" set wrap
" set linebreak
" set nolist
" 
" set textwidth=0
" set wrapmargin=0
" 


" set wrap lbr                  " smart line breaking
"
"
"
" set list
" set listchars=tab:\»\ 

"hi CursorLine     NONE cterm=Reverse
"hi CursorLine NONE ctermbg=cyan ctermfg=white
"nnoremap <Leader>c :set cursorline! <CR>
" hi CursorLine NONE ctermbg=white ctermfg=black
" set cursorline

" set noshowmode

"set modeline
"set ls=2
"" hi statusline ctermbg=white ctermfg=cyan
"hi statusline ctermbg=bg ctermfg=black
" hi statusline cterm=Reverse

set statusline=\ \ %F\ %m%r%h%w\ [%{&ff}]\ %y\ %=[%l,%c]\ 
" Formats the statusline
" set statusline=\ \ %f\ \  " file name
" set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
" set statusline+=%{&ff}] "file format
" set statusline+=%y      "filetype
" set statusline+=%h      "help file flag
" set statusline+=%m      "modified flag
" set statusline+=%r      "read only flag
" set statusline+=\ %=
" set statusline+=%l,%c\ 
" 

set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
" set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif


" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

noremap <c-u>  <c-w>t<c-w>K
" horizontal to vertical ( -- -> | )
noremap <c-o>  <c-w>t<c-w>H


" " put \begin{} \end{} tags tags around the current word
" map  <C-i>      YpkI\ <ESC>A<ESC>jI\end<ESC>A<esc>kA
" map! <C-i> <ESC>YpkI\ <ESC>A<ESC>jI\end<ESC>A<esc>kA

"imap <c-o> <esc>viw<esc>a><esc>bi<<esc>lela
"imap <c-c> <esc>viw<esc>a><esc>bi</<esc>lela
"
"imap <c-o> <esc>viw<esc>a><esc>bi<<esc>lela
"imap <c-c> <esc>viw<esc>a><esc>bi</<esc>lela



"        :! pdflatex %
function FOLD()
      write
        :silent %!fold -s -w 80 %
endfunction
command Fold :call FOLD()










"        :! pdflatex %
function WriteCompileTex()
      write
        :! pdftex %
endfunction
command MB :call WriteCompileTex()
command Mb :call WriteCompileTex()


function WriteCompileLaTex()
      write
        :! pdflatex %
endfunction
command ML :call WriteCompileLaTex()
command Ml :call WriteCompileLaTex()



function ViewTex ()
      write
        :silent ! echo % | sed 's/tex/pdf/' | xargs mupdf-x11 &
        :execute ':redraw!'
endfunction
command CV :call ViewTex()
command Cv :call ViewTex()




" Visual line instead of physical line
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk


" make Y =~ D
noremap Y y$

" = <C-Space>. Don't ask why
nnoremap <NUL> v
inoremap <NUL> v
vnoremap <NUL> v



" A few emacs keybinds
inoremap <C-A> <Home>
inoremap <C-B> <Left>
inoremap <C-E> <End>
inoremap <C-F> <Right>
" inoremap <C-K> <Esc>lDa
inoremap <C-U> <Esc>d0xi
inoremap <C-Y> <Esc>Pa
inoremap <C-X><C-S> <Esc>:w<CR>a



"disable cursor blinking
" set gcr=a:blinkon0

" set guioptions-=m  "remove menu bar
" set guioptions-=T  "remove toolbar
" set guioptions-=r  "remove right-hand scroll bar
" set guioptions-=L  "remove left-hand scroll bar
" set gfn=GohuFont\ 12

" Spell check
hi clear SpellBad
set spell
hi SpellBad cterm=underline


" Ignore CamelCase words when spell checking
fun! IgnoreCamelCaseSpell()
  syn match CamelCase /\<[A-Z][a-z]\+[A-Z].\{-}\>/ contains=@NoSpell transparent
    syn cluster Spell add=CamelCase
    endfun
    autocmd BufRead,BufNewFile * :call IgnoreCamelCaseSpell()


highlight Normal  ctermfg=grey ctermbg=black
highlight Normal  ctermbg=NONE
highlight NonText ctermbg=NONE



   " " Theme
set background=dark

" Add format option 'w' to add trailing white space, indicating that paragraph
" continues on next line. This is to be used with mutt's 'text_flowed' option.
augroup mail_trailing_whitespace " {
    autocmd!
    " autocmd FileType mail setlocal formatoptions+=w
augroup END " }


" call plug#begin('~/.vim/plugged')
" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'
" call plug#end()
" 
" 
" 
" function EMAIL_WRITE()
" 
"    " Prepend signature
"    if (search('^Blair','n') == 0)
"        call append(0, "")
"        call append(1, "")
"        call append(2, "Best Regards,")
"        call append(3, "Blair")
"        call append(4, "")
"    endif
" 
"    
"    " Email settings
"    set nobackup
"    set noswapfile
"    set nowritebackup
"    set ft=mail noautoindent
"    set formatoptions=l
"    set lbr

" 
"   " Goyo
"   Goyo
" 
"   " top of file
"   normal gg
" 
"   " insert mode
"   " startinsert
" 
" endfunction
" command EMAIL :call EMAIL_WRITE()
" 
" 
" 
" function! s:goyo_enter()
"   " silent !tmux set status off
"   " silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
"   set noshowmode
"   set noshowcmd
"   set scrolloff=999
"   " Limelight
"   " ...
" endfunction
" 
" function! s:goyo_leave()
"   " silent !tmux set status on
"   " silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
"   set showmode
"   set showcmd
"   set scrolloff=5
"   " Limelight!
"   quit
"   " ...
" endfunction
" 
" autocmd! User GoyoEnter nested call <SID>goyo_enter()
" autocmd! User GoyoLeave nested call <SID>goyo_leave()
