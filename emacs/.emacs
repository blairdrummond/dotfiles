(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(TeX-command-list
   (quote
	(("TeX-Mupdf" "%(PDF)%(tex) %(file-line-error) %(extraopts) %`%S%(PDFout)%(mode)%' %t; pkill -HUP mupdf" TeX-run-command nil
	  (plain-tex-mode latex-mode ams-tex-mode))
	 ("TeX" "%(PDF)%(tex) %(file-line-error) %(extraopts) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
	  (plain-tex-mode texinfo-mode ams-tex-mode)
	  :help "Run plain TeX")
	 ("LaTeX" "%`%l%(mode)%' %t" TeX-run-TeX nil
	  (latex-mode doctex-mode)
	  :help "Run LaTeX")
	 ("Makeinfo" "makeinfo %(extraopts) %t" TeX-run-compile nil
	  (texinfo-mode)
	  :help "Run Makeinfo with Info output")
	 ("Makeinfo HTML" "makeinfo %(extraopts) --html %t" TeX-run-compile nil
	  (texinfo-mode)
	  :help "Run Makeinfo with HTML output")
	 ("AmSTeX" "amstex %(PDFout) %(extraopts) %`%S%(mode)%' %t" TeX-run-TeX nil
	  (ams-tex-mode)
	  :help "Run AMSTeX")
	 ("ConTeXt" "%(cntxcom) --once --texutil %(extraopts) %(execopts)%t" TeX-run-TeX nil
	  (context-mode)
	  :help "Run ConTeXt once")
	 ("ConTeXt Full" "%(cntxcom) %(extraopts) %(execopts)%t" TeX-run-TeX nil
	  (context-mode)
	  :help "Run ConTeXt until completion")
	 ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX")
	 ("Biber" "biber %s" TeX-run-Biber nil t :help "Run Biber")
	 ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer")
	 ("Print" "%p" TeX-run-command t t :help "Print the file")
	 ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command)
	 ("File" "%(o?)dvips %d -o %f " TeX-run-dvips t t :help "Generate PostScript file")
	 ("Dvips" "%(o?)dvips %d -o %f " TeX-run-dvips nil t :help "Convert DVI file to PostScript")
	 ("Dvipdfmx" "dvipdfmx %d" TeX-run-dvipdfmx nil t :help "Convert DVI file to PDF with dvipdfmx")
	 ("Ps2pdf" "ps2pdf %f" TeX-run-ps2pdf nil t :help "Convert PostScript file to PDF")
	 ("Glossaries" "makeglossaries %s" TeX-run-command nil t :help "Run makeglossaries to create glossary file")
	 ("Index" "makeindex %s" TeX-run-index nil t :help "Run makeindex to create index file")
	 ("upMendex" "upmendex %s" TeX-run-index t t :help "Run upmendex to create index file")
	 ("Xindy" "texindy %s" TeX-run-command nil t :help "Run xindy to create index file")
	 ("Check" "lacheck %s" TeX-run-compile nil
	  (latex-mode)
	  :help "Check LaTeX file for correctness")
	 ("ChkTeX" "chktex -v6 %s" TeX-run-compile nil
	  (latex-mode)
	  :help "Check LaTeX file for common mistakes")
	 ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document")
	 ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
	 ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files")
	 ("Other" "" TeX-run-command t t :help "Run an arbitrary command"))))
 '(TeX-view-program-list (quote (("mupdf" "mupdf-x11 %o"))))
 '(TeX-view-program-selection
   (quote
	(((output-dvi style-pstricks)
	  "dvips and gv")
	 (output-dvi "xdvi")
	 (output-pdf "mupdf")
	 (output-html "xdg-open"))))
 '(alert-fade-time 0)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#ffffff" "#32ffff" "#659dd2" "#3234ff" "#ffc30f" "#32ff40" "#ff420f" "#80818d"])
 '(ansi-term-color-vector
   [unspecified "#3f3f3f" "#dca3a3" "#5f7f5f" "#e0cf9f" "#7cb8bb" "#dc8cc3" "#7cb8bb" "#dcdccc"] t)
 '(beacon-color "#f2777a")
 '(column-number-mode t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
	("04232a0bfc50eac64c12471607090ecac9d7fd2d79e388f8543d1c5439ed81f5" "170bb47b35baa3d2439f0fd26b49f4278e9a8decf611aa33a0dad1397620ddc3" "b73c03f4c3ecc890cbbb42d3dd017a5f0790394ccf0e5db0b0aceb40f0af5ac6" "8d805143f2c71cfad5207155234089729bb742a1cb67b7f60357fdd952044315" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "ab564a7ce7f2b2ad9e2cfe9fe1019b5481809dd7a0e36240c9139e230cc2bc32" "36bab4e2aa8165f538e6d223ee1d2a0ef918ccba09e18c62cf8594467685a3b6" "fa2af0c40576f3bde32290d7f4e7aa865eb6bf7ebe31eb9e37c32aa6f4ae8d10" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "abd7719fd9255fcd64f631664390e2eb89768a290ee082a9f0520c5f12a660a8" "1127f29b2e4e4324fe170038cbd5d0d713124588a93941b38e6295a58a48b24f" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "a77ced882e25028e994d168a612c763a4feb8c4ab67c5ff48688654d0264370c" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "2a7beed4f24b15f77160118320123d699282cbf196e0089f113245d4b729ba5d" "b35a14c7d94c1f411890d45edfb9dc1bd61c5becd5c326790b51df6ebf60f402" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "b54826e5d9978d59f9e0a169bbd4739dd927eead3ef65f56786621b53c031a7c" "bd51a329aa9b8e29c6cf2c8a8cf136e0d2960947dfa5c1f82b29c9178ad89a27" "1195d71dfd46c43492993a528336ac7f8c7400b4c58338e5b40329d6cad655b6" "b8c5adfc0230bd8e8d73450c2cd4044ad7ba1d24458e37b6dec65607fc392980" "72085337718a3a9b4a7d8857079aa1144ea42d07a4a7696f86627e46ac52f50b" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" "7f89ec3c988c398b88f7304a75ed225eaac64efa8df3638c815acc563dfd3b55" "12bacee81d067acf07dec4c867be541a04744a6ac6a39636de25a2c77e9b573c" "bf390ecb203806cbe351b966a88fc3036f3ff68cd2547db6ee3676e87327b311" "356e5cbe0874b444263f3e1f9fffd4ae4c82c1b07fe085ba26e2a6d332db34dd" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "0c32e4f0789f567a560be625f239ee9ec651e524e46a4708eb4aba3b9cdc89c5" "57f95012730e3a03ebddb7f2925861ade87f53d5bbb255398357731a7b1ac0e0" "f153e8ed90e4d79cf2c61560da2b3091d2f3b94da42aaddc707012be4608cf52" "cbe892ce669f001193ccbb3b50a6fa402fe2560b3fe802354d73aeb0710a1c63" "9e6ac467fa1e5eb09e2ac477f61c56b2e172815b4a6a43cf48def62f9d3e5bf9" "83db918b06f0b1df1153f21c0d47250556c7ffb5b5e6906d21749f41737babb7" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "a566448baba25f48e1833d86807b77876a899fc0c3d33394094cf267c970749f" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "9d9fda57c476672acd8c6efeb9dc801abea906634575ad2c7688d055878e69d6" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "85e6bb2425cbfeed2f2b367246ad11a62fb0f6d525c157038a0d0eaaabc1bfee" "78496062ff095da640c6bb59711973c7c66f392e3ac0127e611221d541850de2" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "a25c42c5e2a6a7a3b0331cad124c83406a71bc7e099b60c31dc28a1ff84e8c04" "cabc32838ccceea97404f6fcb7ce791c6e38491fd19baa0fcfb336dcc5f6e23c" "66881e95c0eda61d34aa7f08ebacf03319d37fe202d68ecf6a1dbfd49d664bc3" "f2dd097452b79276ce522df2f8aeb37f6d90f504529616aa46122d549910e46d" "bcc6775934c9adf5f3bd1f428326ce0dcd34d743a92df48c128e6438b815b44f" "25c06a000382b6239999582dfa2b81cc0649f3897b394a75ad5a670329600b45" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "190a9882bef28d7e944aa610aa68fe1ee34ecea6127239178c7ac848754992df" "dd4628d6c2d1f84ad7908c859797b24cc6239dfe7d71b3363ccdd2b88963f336" "ad16a1bf1fd86bfbedae4b32c269b19f8d20d416bd52a87cd50e355bf13c2f23" "2a998a3b66a0a6068bcb8b53cd3b519d230dd1527b07232e54c8b9d84061d48d" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "fc7fd2530b82a722ceb5b211f9e732d15ad41d5306c011253a0ba43aaf93dccc" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "4486ade2acbf630e78658cd6235a5c6801090c2694469a2a2b4b0e12227a64b9" default)))
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-default-load-average nil)
 '(display-time-format "%H:%M")
 '(display-time-load-average-threshold 10)
 '(ein:completion-backend (quote ein:use-company-backend))
 '(epa-file-select-keys nil)
 '(fci-rule-character-color "#192028")
 '(fci-rule-color "#3E4451")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(font-use-system-font t)
 '(fringe-mode 4 nil (fringe))
 '(global-hl-line-mode nil)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
	(solarized-color-blend it "#002b36" 0.25)
	(quote
	 ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
	(("#073642" . 0)
	 ("#546E00" . 20)
	 ("#00736F" . 30)
	 ("#00629D" . 50)
	 ("#7B6000" . 60)
	 ("#8B2C02" . 70)
	 ("#93115C" . 85)
	 ("#073642" . 100))))
 '(hl-bg-colors
   (quote
	("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
	("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(hl-sexp-background-color "#383e4c")
 '(ivy-display-style nil)
 '(ivy-format-function (quote ivy-format-function-arrow) t)
 '(ivy-height 20)
 '(ivy-mode t)
 '(jdee-db-active-breakpoint-face-colors (cons "#0d0d0d" "#41728e"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#0d0d0d" "#b5bd68"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#0d0d0d" "#5a5b5a"))
 '(linum-format " %5i ")
 '(magit-diff-use-overlays nil)
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(message-fill-column nil)
 '(neo-theme (quote nerd))
 '(nrepl-message-colors
   (quote
	("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-agenda-files
   (quote
	("/home/blair/desk/org/contacts.org" "/home/blair/desk/org/drafts.org" "/home/blair/desk/org/math.org" "/home/blair/desk/org/meetings.org" "/home/blair/desk/org/notes.org" "/home/blair/desk/org/reading.org" "/home/blair/desk/org/recipes.org" "/home/blair/desk/org/recurring.org" "/home/blair/desk/org/tasks.org" "/home/blair/desk/org/trip.org" "/home/blair/desk/org/valerie.org")))
 '(org-agenda-show-all-dates nil)
 '(org-agenda-span 14)
 '(org-agenda-todo-list-sublevels nil)
 '(org-agenda-window-setup (quote only-window))
 '(org-blank-before-new-entry (quote ((heading . t) (plain-list-item . t))))
 '(org-capture-templates
   (quote
	(("c" "Contact" entry
	  (file+headline "~/desk/org/contacts.org" "Contacts")
	  "* %(org-contacts-template-name)
:PROPERTIES:
:ADDRESS: %^{289 Cleveland St. Brooklyn, 11206 NY, USA}
:BIRTHDAY: %^{yyyy-mm-dd}
:EMAIL: %(org-contacts-template-email)
:NOTE: %^{NOTE}
:BORROWED: 
:LENT-OUT:
:END:" :empty-lines 1)
	 ("b" "Buy" entry
	  (file+headline "~/desk/org/todo.org" "Buy")
	  "** TODO Pickup %^{WHAT}" :empty-lines 1)
	 ("m" "Meeting" entry
	  (file "~/desk/org/meetings.org")
	  "* Meeting - %^{DETAILS} %?  :meeting:
  :PROPERTIES:
  :LOCATION:
  :VIA:
  :NOTE:
  :END:
  %(org-time-stamp (org-current-time))" :empty-lines 1))))
 '(org-contacts-files (quote ("~/desk/org/contacts.org")))
 '(org-journal-date-format "%A, %B %d, %H:%M:%S")
 '(org-priority-faces (quote ((67 :foreground "orange" :weight bold))))
 '(org-todo-keyword-faces
   (quote
	(("URGENT" . "red")
	 ("TODO" . "OrangeRed")
	 ("EVENTUALLY" . "orange")
	 ("STARTED" . "gold"))))
 '(package-selected-packages
   (quote
	(ein jupyter frames-only-mode openwith org-gcal writegood-mode google-translate guess-language tea-time tomatinho org org-super-agenda org-plus-contrib org-journal color-theme-sanityinc-tomorrow darkokai-theme leuven-theme moe-theme gruvbox-theme deadgrep notmuch elfeed calfw calfw-org org-alert smooth-scrolling dimmer diminish minimap yaml-mode intero dante go-autocomplete flycheck-golangci-lint flycheck-haskell hayoo counsel-gtags sage-shell-mode ztree tramp-theme dashboard ssh-config-mode ssh helm org-ref auctex browse-kill-ring dad-joke px twilight-anti-bright-theme suscolors-theme ess gscholar-bibtex haskell-mode biblio markdown-mode wc-mode writeroom-mode darktooth-theme soothe-theme dired-hide-dotfiles muttrc-mode dired-details neotree which-key transpose-frame rainbow-delimiters py-autopep8 evil elpy doom-themes counsel ace-flyspell)))
 '(pdf-view-midnight-colors (quote ("#6a737d" . "#fffbdd")))
 '(pixel-scroll-mode nil)
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#202020")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
	((20 . "#C99090")
	 (40 . "#D9A0A0")
	 (60 . "#ECBC9C")
	 (80 . "#DDCC9C")
	 (100 . "#EDDCAC")
	 (120 . "#FDECBC")
	 (140 . "#6C8C6C")
	 (160 . "#8CAC8C")
	 (180 . "#9CBF9C")
	 (200 . "#ACD2AC")
	 (220 . "#BCE5BC")
	 (240 . "#CCF8CC")
	 (260 . "#A0EDF0")
	 (280 . "#79ADB0")
	 (300 . "#89C5C8")
	 (320 . "#99DDE0")
	 (340 . "#9CC7FB")
	 (360 . "#E090C7"))))
 '(vc-annotate-very-old-color "#E090C7")
 '(weechat-color-list
   (quote
	(unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(writeroom-border-width 10)
 '(writeroom-bottom-divider-width 0)
 '(writeroom-width 120)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) (:foreground "#cccdd6" :background "#2b2d39"))))
 '(cfw:face-title ((t (:inherit nil :foreground "#9899a4" :weight bold))))
 '(doom-neotree-data-file-face ((t (:inherit nil))))
 '(elfeed-search-title-face ((t nil)))
 '(font-latex-sectioning-0-face ((t (:inherit nil :weight bold))))
 '(font-latex-sectioning-1-face ((((class color) (min-colors 89)) (:family "Sans Serif" :height 2.7 :weight bold :foreground "#9b6c20"))))
 '(fringe ((((class color) (min-colors 89)) (:foreground "#b36334" :background "#2b2d39"))))
 '(markdown-code-face ((t (:inherit nil))))
 '(menu ((((class color) (min-colors 89)) (:foreground "#2b2d39" :background "#cccdd6"))))
 '(neo-file-link-face ((((class color) (min-colors 89)) (:foreground "#626262"))))
 '(org-agenda-date-today ((((class color) (min-colors 89)) (:weight bold :foreground "#b0b6cd" :background "#2b2d65"))))
 '(tomatinho-time-face ((t (:weight bold :height 2.0 :width semi-condensed :family "screen")))))


;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:family "GohuFont" :foundry "Gohu" :slant normal :weight normal :height 105 :width normal))))
;;  '(doom-neotree-data-file-face ((t (:inherit nil))))
;;  '(font-lock-builtin-face ((t (:foreground "brightcyan"))))
;;  '(font-lock-constant-face ((t (:foreground "brightyellow"))))
;;  '(font-lock-string-face ((t (:foreground "yellow"))))
;;  '(markdown-code-face ((t (:inherit nil)))))



;; Add Melpa packages
(require 'package)
(add-to-list
 'package-archives
 '("melpa" . "http://melpa.org/packages/")
 t)
(package-initialize)


(set-face-attribute 'fringe nil :background nil)
;; (setq use-file-dialog nil)

;; Chromium, for now
(setq browse-url-browser-function 'browse-url-chromium)
(add-hook 'after-init-hook #'global-emojify-mode)



'(ivy-display-style nil)
'(ivy-format-function (quote ivy-format-function-arrow))
'(ivy-height 20)
'(ivy-mode t)
;; (setq ivy-extra-directories nil)
(setq ivy-use-virtual-buffers t)



;; Woah man.
(setq gc-cons-threshold 200000000)




(require 'evil)
(evil-mode 1)
(setq evil-default-state 'normal)
(define-key evil-normal-state-map (kbd ";") 'evil-ex)
;; (define-key evil-normal-state-map (kbd "SPC") 'evil-ex)


(setq-default c-basic-offset 4
              tab-width 4
              indent-tabs-mode t)


;; Tabs
;; (define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)
;; (global-whitespace-mode)
;(set-face-attribute 'whitespace-space nil :background nil :foreground "gray30")

(require 'whitespace)
;; (setq whitespace-display-mappings
;;       ;; all numbers are Unicode codepoint in decimal. try (insert-char 182 ) to see it
;;       '(
;; 	(space-mark 32 [183] [46]) ; 32 SPACE, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
;; 	(newline-mark 10 [182 10]) ; 10 LINE FEED
;; 	(tab-mark 9 [187 9] [9655 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「▷」
;; 	))
(setq whitespace-style '(face tabs trailing tab-mark))
(set-face-attribute 'whitespace-tab nil
		    :background "color-254"
		    :foreground "brightblack"
		    :weight 'bold)
(set-face-attribute 'whitespace-trailing nil
		    :background "color-254"
		    :foreground "brightwhite"
		    :weight 'bold)
(set-face-attribute 'whitespace-space-before-tab nil
		    :background "color-254"
		    :foreground "white"
		    :weight 'bold)
(set-face-attribute 'whitespace-space-after-tab nil
		    :background "color-254"
		    :foreground "brightwhite"
		    :weight 'bold)
;; (add-hook 'prog-mode-hook 'whitespace-mode)






(defun copy-to-end-of-line ()
  (interactive)
  (evil-yank (point) (point-at-eol)))

(define-key evil-normal-state-map "Y" 'copy-to-end-of-line)

;; These get me all the time.
(evil-ex-define-cmd "E[dit]" 'evil-edit)
(evil-ex-define-cmd "W[rite]" 'evil-write)


;; Indent whole region sensibly
(defun evil-shift-right-and-indent()
  (interactive)
  (evil-indent (region-beginning) (region-end))
  (indent-region (region-beginning) (region-end)))

(define-key evil-visual-state-map ">" 'evil-shift-right-and-indent)
(define-key evil-visual-state-map (kbd "TAB") 'indent-region)

(defun newline-without-break-of-line ()
  (interactive)
  (let ((oldpos (point)))
    (end-of-line)
    (newline-and-indent)))
(define-key evil-normal-state-map "\\" 'newline-without-break-of-line)


;; Make movement keys work like they should
(define-key evil-normal-state-map (kbd "<remap> <evil-next-line>") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)
(define-key evil-motion-state-map (kbd "<remap> <evil-next-line>") 'evil-next-visual-line)
(define-key evil-motion-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)
					; Make horizontal movement cross lines
(setq-default evil-cross-lines t)

;; yes/no -> y/n
(fset 'yes-or-no-p 'y-or-n-p)




;; M-w already works, but sometimes I want these...
;; I like being able to copy in insert mode in particular
; (define-key evil-normal-state-map "\C-y" 'yank)
; (define-key evil-insert-state-map "\C-y" 'yank)
(define-key evil-normal-state-map "\C-w" 'evil-delete)
(define-key evil-insert-state-map "\C-w" 'evil-delete)
(define-key evil-insert-state-map "\C-a" 'evil-beginning-of-line)
(define-key evil-insert-state-map "\C-e"
  (lambda () (interactive)
    (evil-end-of-line)
    (forward-char)))



(show-paren-mode 1)
;; Rainbow Brackets
(require 'rainbow-delimiters)
(mapc (lambda (x) (add-hook x #'rainbow-delimiters-mode))
      '(
	python-mode-hook
	latex-mode-hook
	TeX-mode-hook
	markdown-mode-hook
	emacs-lisp-mode-hook
	haskell-mode-hook
	ess-mode-hook
	))


(global-git-gutter-mode +1)


(when (get-buffer "*Messages*")
  (kill-buffer "*Messages*"))


(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
; (setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(define-key evil-normal-state-map (kbd "/") 'swiper)



(setq make-backup-files nil)
;; (setq backup-directory-alist `(("." . "~/.backups")))



(require 'ibuffer)
(setq ibuffer-saved-filter-groups
      (quote (("default"
	       ("Pdf" (name . ".*\\.pdf"))
	       ("Tramp" (filename . "/ssh:.*"))
	       ("Organization" (or (name . "todo.*")
				   (name . ".*\\.todo")
				   (name . ".*\\.rem")
				   (name . ".*\\.org")))

	       ("Text" (or (name . ".*\\.txt")
			   (name . ".*\\.md")
			   (name . ".*\\.tex")))

	       ("Programming" 
		(or
		 (name . "config.*")
		 (name . "TODO.*")
		 (name . "README.*")
		 (mode . haskell-mode)
		 (mode . python-mode)
		 (mode . emacs-lisp-mode)
		 (mode . sh-mode)
		 (mode . ess-mode)))

	       ("Folder" (mode . dired-mode))
	       ("emacs" (or (filename . ".*\\.emacs")
			    (filename . ".*\\.github-files")
			    (filename . ".*\\.scratchpad")
			    (filename . ".*\\.temp")))
	       ("*running*" (or
			     (mode . shell-mode)
			     (name . "\\*R\\*")))
	       ("*buffer*" (name . "\\*.*\\*"))))))


(add-hook 'ibuffer-mode-hook
	  (lambda ()
	    (ibuffer-switch-to-saved-filter-groups "default")))


(defalias 'list-buffers 'ivy-switch-buffer)
(defalias 'buffer-menu 'ibuffer)

(setq ibuffer-formats
      (quote
       ((mark modified read-only " "
	      (name 30 30 :left :elide)
	      " "
	      (mode 16 16 :left :elide)
	      " " filename-and-process)
	(mark " "
	      (name 16 -1)
	      " " filename))))



(defun switch-bury-or-kill-buffer (&optional aggr)
  "With no argument, switch (but unlike C-x b, without the need
to confirm).  With C-u, bury current buffer.  With double C-u,
kill it (unless it's modified)."
  (interactive "P")
  (cond
   ((eq aggr nil) (progn
		    (cl-dolist (buf '("*Buffer List*" "*IBuffer*"))
		      (when (get-buffer buf)
			(bury-buffer buf)))
		    (switch-to-buffer (other-buffer))))
   ((equal aggr '(4)) (bury-buffer))
   ((equal aggr '(16)) (kill-buffer-if-not-modified (current-buffer)))))

(global-set-key (kbd "C-TAB") 'switch-bury-or-kill-buffer)
(define-key evil-normal-state-map (kbd "C-TAB") 'switch-bury-or-kill-buffer)

(define-key evil-normal-state-map (kbd "C-d") 'kill-buffer)





(require 'openwith)
(setq openwith-associations '(("\\.pdf\\'"  "mupdf-x11" (file))
			      ("\\.png\\'"  "feh" (file))
			      ("\\.jpg\\'"  "feh" (file))
			      ("\\.jpeg\\'" "feh" (file))))
(openwith-mode t)






;; Ignore Whitespace in ediff mode
(setq ediff-diff-options "-w")
(setq ediff-split-window-function 'split-window-horizontally)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

(defun ora-ediff-hook ()
  (ediff-setup-keymap)
  (define-key ediff-mode-map "j" 'ediff-next-difference)
  (define-key ediff-mode-map "k" 'ediff-previous-difference))

(add-hook 'ediff-mode-hook 'ora-ediff-hook)



(setq scroll-step 1) ;; keyboard scroll one line at a time




(require 'transpose-frame)
(global-set-key (kbd "C-c C-w r") 'rotate-frame)
(global-set-key (kbd "C-c C-w t") 'transpose-frame)
(global-set-key (kbd "C-c C-w h") 'flop-frame)
(global-set-key (kbd "C-c C-w v") 'flip-frame)

(evil-ex-define-cmd "tr" 'rotate-frame)
(evil-ex-define-cmd "tt" 'transpose-frame)
(evil-ex-define-cmd "th" 'flop-frame)
(evil-ex-define-cmd "tv" 'flip-frame)



(define-key evil-emacs-state-map "\M-k" 'windmove-up)
(define-key evil-emacs-state-map "\M-j" 'windmove-down)
(define-key evil-emacs-state-map "\M-h" 'windmove-left)
(define-key evil-emacs-state-map "\M-l" 'windmove-right)


(define-key evil-normal-state-map "\M-k" 'windmove-up)
(define-key evil-normal-state-map "\M-j" 'windmove-down)
(define-key evil-normal-state-map "\M-h" 'windmove-left)
(define-key evil-normal-state-map "\M-l" 'windmove-right)


(define-key evil-normal-state-map (kbd "<M-up>")    'windmove-up)
(define-key evil-normal-state-map (kbd "<M-down>")  'windmove-down)
(define-key evil-normal-state-map (kbd "<M-left>")  'windmove-left)
(define-key evil-normal-state-map (kbd "<M-right>") 'windmove-right)

(define-key evil-normal-state-map (kbd "<home>") 'previous-buffer)
(define-key evil-normal-state-map (kbd "<end>")  'next-buffer)

(define-key evil-normal-state-map (kbd "Q")  'evil-save-and-close)


(evil-define-key 'normal org-mode-map (kbd "SPC") 'org-cycle)
(evil-define-key 'normal org-mode-map (kbd "DEL") 'org-ctrl-c-ctrl-c)

(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'LaTeX-mode-hook     'flyspell-mode)
(add-hook 'org-mode-hook       'flyspell-mode)
(add-hook 'org-mode-hook       'toggle-truncate-lines)
(add-hook 'org-mode-hook       'toggle-word-wrap)
(add-hook 'markdown-mode-hook  'flyspell-mode)
(add-hook 'message-mode-hook  'flyspell-mode)

;(require 'ace-flyspell)
;(defun jump-correct ()
;  (interactive)
;  (ace-flyspell-jump-word)
;  (flyspell-popup-correct))
;(define-key evil-normal-state-map "z " 'jump-correct)


; (define-key evil-normal-state-map (kbd "SPC") 'avy-goto-word-1)
;; (add-hook 'flyspell-mode-hook #'flyspell-popup-auto-correct-mode)


;; (evil-ex-define-cmd "Tree" 'neotree-toggle)
(define-key evil-normal-state-map (kbd "DEL") 'neotree-toggle)
(setq neo-smart-open t)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "DEL") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "q")   'neotree-hide)


(global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "M-x") 'helm-M-x)
;; (helm-mode 1)
(define-key ivy-minibuffer-map [escape] 'minibuffer-keyboard-quit)
(define-key swiper-map         [escape] 'minibuffer-keyboard-quit)

(setq vc-follow-symlinks t)


(which-key-mode)


;;     (defun w3mext-open-link-or-image-or-url ()
;;     "Opens the current link or image or current page's uri or any url-like text under cursor in firefox."
;;     (interactive)
;;     (let (url)
;;     (if (string= major-mode "w3m-mode")
;;         (setq url (or (w3m-anchor) (w3m-image) w3m-current-url)))
;;     (browse-url-generic (if url url (car (browse-url-interactive-arg "URL: "))))
;;     ))
;;     (global-set-key (kbd "C-c b") 'w3mext-open-link-or-image-or-url) 



(evil-define-key 'normal ess-mode-map (kbd "SPC") 'ess-eval-region-or-line-and-step)


;;; Fully undo the effects of one theme when loading
(defadvice load-theme
    (before theme-dont-propagate activate)
  (mapc #'disable-theme custom-enabled-themes))

;; Get rid of the modeline box, and remove the fringe
(defadvice load-theme
    (after theme-dont-propagate activate)
  ;;(set-face-attribute 'mode-line nil :foreground "white")
  )





(defun my-dired-mode-hook ()
  "My `dired' mode hook."
  ;; To hide dot-files by default
  (dired-hide-dotfiles-mode)

  ;; To toggle hiding
  (define-key dired-mode-map "h" #'dired-hide-dotfiles-mode)
  (evil-define-key 'normal dired-mode-map "h" #'dired-hide-dotfiles-mode))

(add-hook 'dired-mode-hook #'my-dired-mode-hook)




;; (add-to-list 'default-frame-alist '(internal-border-width . 10))

(set-face-attribute 'mode-line nil :box nil)

(if (daemonp)
    (add-hook 'after-make-frame-functions
			  (lambda (frame)
				(select-frame frame)
				(ignore-errors
				  (when (equal server-name "gui")
					(set-face-background 'hl-line "#e8e8e8")
					(set-fringe-mode 0)
					(set-face-foreground 'highlight nil)))
				(if (display-graphic-p)
					(set-frame-font "Gohufont-14")
				  (if (and (eq window-system nil) (not (equal server-name "gui")))
					  (progn
						(set-face-attribute 'mode-line nil :background "brightblack" :foreground "white")
						(set-face-attribute 'mode-line-inactive nil :background "black" :foreground "brightwhite")
						(xterm-mouse-mode t)))))))




;; (load-theme 'suscolors t)
; (require 'doom-themes)
; (doom-themes-neotree-config)  ; all-the-icons fonts must be installed!

(define-key evil-emacs-state-map (kbd "C-c C-c") 'ibuffer-list-buffers)

(global-set-key [M-tab] 'neotree-toggle)

(setq frame-title-format "%b - emacs")
; (load-theme 'adwaita)

;; (load-theme 'twilight-anti-bright)

(column-number-mode)





;; haskell
(global-eldoc-mode -1)
;; (global-linum-mode -1)



;; (add-hook 'haskell-mode-hook 'haskell-indent-mode)
;; (require 'haskell-process)
;; (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;; (setq haskell-process-type (quote ghci))
;; (eval-after-load 'flycheck
;;   '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))
;; (add-hook 'haskell-mode-hook 'flycheck-mode)
 
;; Install Intero
;; (require 'intero)
;; (add-hook 'haskell-mode-hook 'intero-mode)
;; (add-hook 'haskell-mode-hook 'flycheck-mode)


(use-package dante
  :ensure t
  :after haskell-mode
  :commands 'dante-mode
  :init
  (add-hook 'haskell-mode-hook 'dante-mode)
  (add-hook 'haskell-mode-hook 'flycheck-mode))



(setq-default TeX-PDF-mode t)
(fset 'tex-font-lock-suscript 'ignore)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook
          (lambda()
	    (setq TeX-save-query nil)
	    (setq TeX-show-compilation nil)))

(add-hook 'plain-tex-mode-hook 'toggle-truncate-lines)
(add-hook 'plain-tex-mode-hook 'toggle-word-wrap)
(add-hook 'plain-tex-mode-hook 'visual-line-mode)
(add-hook 'plain-tex-mode-hook 'flyspell-mode)
(add-hook 'plain-tex-mode-hook
          (lambda()
	    (setq TeX-save-query nil)
	    (setq TeX-show-compilation nil)))

;; No super/sub-scripts
(setq tex-fontify-script nil)
(setq font-latex-fontify-script nil)


'(TeX-view-program-list (quote (("mupdf" "mupdf-x11 %o"))))
'(TeX-view-program-selection
  (quote
   (((output-dvi style-pstricks)
     "dvips and gv")
    (output-dvi "xdvi")
    (output-pdf "mupdf")
    (output-html "xdg-open"))))


(defun tex-mupdf ()
  (interactive)
  (save-buffer)
  (TeX-command "TeX-Mupdf" 'TeX-master-file))

(setq-default TeX-master nil)
(setq auto-mode-alist (cons '("\\.tex$" . plain-tex-mode) auto-mode-alist))

; (define-key plain-TeX-mode-map (kbd "C-c C-a") 'tex-mupdf)
; (define-key plain-tex-mode-map (kbd "C-c C-a") 'tex-mupdf)




(setq-default TeX-PDF-mode t)
(fset 'tex-font-lock-suscript 'ignore)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'markdown-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 
	  (lambda()
	    (reftex-mode)
	    ; (define-key reftex-toc-mode-map " " 'reftex-toc-quit)
	    ; (define-key reftex-toc-mode-map "j" 'next-line)
	    ; (define-key reftex-toc-mode-map "k" 'previous-line)
	    (setq TeX-save-query nil)
	    (setq TeX-show-compilation nil)))

(add-hook 'TeX-mode-hook 'flyspell-mode)
(add-hook 'TeX-mode-hook 'turn-on-reftex)
(evil-define-key 'normal TeX-mode-map (kbd "TAB") 'reftex-toc)




; Recompile if .el is newer than .elc

(eval-after-load "tex"
  '(progn
     (byte-recompile-directory "~/.emacs.d/git/bibretrieve" 0)
     (add-to-list 'load-path "~/.emacs.d/git/bibretrieve")
     (load "bibretrieve")))


;; (use-package bibretrieve
;;   :load-path "~/.emacs.d/git/bibretrieve")


















(elpy-enable)

(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython"))

;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(setq python-shell-interpreter "ipython3"
      python-shell-interpreter-args "--simple-prompt -i")



; (evil-define-key 'normal python-mode-map " " 'elpy-shell-send-current-statement)

(defun elpy-shell-send-current-line ()
  "Send current block to Python shell."
  (interactive)
  (end-of-line)
  (set-mark (line-beginning-position))
  (elpy-shell-send-region-or-buffer)
  ;(display-buffer (process-buffer (elpy-shell-get-or-create-process))
  ;                nil
  ;                'visible)
  (deactivate-mark)
  (beginning-of-line)
  (next-line))

(evil-define-key 'normal python-mode-map " " 'elpy-shell-send-current-line)





;; C Settings
(setq c-default-style "linux" c-basic-offset 8)
(require 'compile)
(add-hook 'c-mode-hook
	  (lambda ()
	    (unless (file-exists-p "Makefile")
	      (set (make-local-variable 'compile-command)
		   ;; emulate make's .c.o implicit pattern rule, but with
		   ;; different defaults for the CC, CPPFLAGS, and CFLAGS
		   ;; variables:
		   ;; $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $<
		   (let ((file (file-name-nondirectory buffer-file-name)))
		     (format "%s -c -o %s.o %s %s %s"
			     (or (getenv "CC") "gcc")
			     (file-name-sans-extension file)
			     (or (getenv "CPPFLAGS") "-DDEBUG=9")
			     (or (getenv "CFLAGS") "-ansi -std=c99 -pedantic -Wall -g")
			     file))))))
(require 'semantic)
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(global-semantic-decoration-mode 1)
(semantic-mode 1)
(evil-define-key 'normal c-mode-map (kbd "SPC") 'counsel-semantic)

(remove-hook 'python-mode-hook 'wisent-python-default-setup)





;;     (setq reftex-default-bibliography '("~/desk/papers/ref.bib"))
;;     
;;     ;; see org-ref for use of these variables
;;     (setq org-ref-bibliography-notes "~/desk/papers/biboliography.org"
;;           org-ref-default-bibliography '("~/desk/papers/ref.bib")
;;           org-ref-pdf-directory "~/desk/papers/")


(setq bibretrieve-backends '(("mrl" . 10) ("msc" . 30) ("arxiv" . 5) ("zbm" . 5)))

(setq bibretrieve-installed-backends '("mrl" "arxiv" "zbm"))

;; (require 'bibretrieve)
;; (defun bibretrieve-write-bib-items-bibliography (all bibfile marked complement)
;;   "Append item to file.
;; 
;; From ALL, append to a promped file (BIBFILE is the default one) MARKED entries (or unmarked, if COMPLEMENT is t)."
;;   (let ((file bibfile))
;;     (if (find-file-other-window file)
;; 	(save-excursion
;; 	  (goto-char (point-max))
;; 	  (insert "\n")
;; 	  (insert (bibretrieve-extract-bib-items all marked complement))
;; 	  (insert "\n")
;; 	  (save-buffer)
;; 	  file
;; 	  )
;;       (error "Invalid file"))))




(define-fringe-bitmap 'right-curly-arrow
  [#b00000000
   #b00000000
   #b00000000
   #b00000000
   #b01110000
   #b00010000
   #b00010000
   #b00000000])
(define-fringe-bitmap 'left-curly-arrow
  [#b00000000
   #b00000000
   #b00000000
   #b00000000
   #b10000000
   #b10000000
   #b11100000
   #b00000000])




;;    (setq splash-png "http://www.dacosta.net/uploads/2/2/9/8/22981138/1433278799.png")
;;    (setq splash-dest "~/.emacs.d/splash.png")
;;    
;;    (unless (file-exists-p splash-dest)
;;      (url-copy-file splash-png splash-dest))
;;    
;;    (use-package dashboard
;;        :ensure t
;;        :diminish dashboard-mode
;;        :config
;;        (setq dashboard-banner-logo-title "Emacs as configured for the daCosta Lab. 
;;    
;;    To login to the digital-ocean machine, you should now be able 
;;    to press Alt-x, and you will be prompted to run a command. 
;;    
;;        To access the R files, run:
;;    
;;            M-x digital-ocean 
;;    
;;        To deploy your edits, run: 
;;    
;;            M-x digital-ocean-build
;;    
;;    
;;    Administrators may also use 
;;    
;;            M-x digital-ocean-new-user 
;;            M-x digital-ocean-add-user-ssh-key
;;            M-x digital-ocean-add-root-ssh-key
;;    
;;    [See further documentation on Benchling.]")
;;        (setq dashboard-startup-banner splash-dest)
;;        (setq dashboard-items '((recents  . 10)))
;;        (dashboard-setup-startup-hook))
;;    
;;    (require 'dashboard)
;;    (dashboard-setup-startup-hook)








(defun digital-ocean-add-root-ssh-key (pubkey username)
  (interactive
  (list
   (read-file-name "Public Key to send (NOT THE PRIVATE KEY): ")
   (read-string    "Username for new user: ")))
  (message "Sending over public key... ")
  (if
      (eq 0 (shell-command (concat "scp " pubkey " root@digital-ocean:/root/.tmp/PUBLIC_KEY")))
      (progn
	(message "Sent.")
	(dired "/ssh:root@digital-ocean:/root/")
	(kill-matching-buffers "\*eshell\*")
	(if (get-buffer "*eshell*")
		(switch-to-buffer "*eshell*")
	  (eshell))
	(with-current-buffer "*eshell*"
	  (eshell-return-to-prompt)
	  (insert (concat "cat /root/.tmp/PUBLIC_KEY >> /root/.ssh/authorized_keys; rm /root/.tmp/PUBLIC_KEY; usermod -aG sudo " username "; exit"))
	  (eshell-send-input)))
	(message "Failed to send key. Are you sure that's the path of the file?")))


(defun digital-ocean-add-user-ssh-key (pubkey username)
  (interactive
  (list
      (read-file-name "Public Key to send (NOT THE PRIVATE KEY): ")
      (read-string    "Username for new user: ")))
  (message "Sending over public key... ")
  (if
      (eq 0 (shell-command (concat "scp " pubkey " root@digital-ocean:/root/.tmp/PUBLIC_KEY")))
      (progn
	(message "Sent.")
	(dired "/ssh:root@digital-ocean:/root/")
	(kill-matching-buffers "\*eshell\*")
	(if (get-buffer "*eshell*")
		(switch-to-buffer "*eshell*")
	  (eshell))
	(with-current-buffer "*eshell*"
	  (eshell-return-to-prompt)
	  (insert (concat "cat /root/.tmp/PUBLIC_KEY >> /home/" username "/.ssh/authorized_keys; chown -R " username ":" username " /home/" username "/.ssh/; rm /root/.tmp/PUBLIC_KEY; exit"))
	  (eshell-send-input)))
	(message "Failed to send key. Are you sure that's the path of the file?")))


(defun digital-ocean-new-user (pubkey username email)
  (interactive
  (list
      (read-file-name "Public Key to send (NOT THE PRIVATE KEY): ")
      (read-string    "Username for new user: ")
      (read-string    "Email address of new user: ")))
  (message "Sending over public key... ")
  (if
      (eq 0 (shell-command (concat "scp " pubkey " root@digital-ocean:/root/.tmp/PUBLIC_KEY")))
      (progn
	(message "Sent.")
	(dired "/ssh:root@digital-ocean:/root/Administration/")
	(kill-matching-buffers "\*eshell\*")
	(if (get-buffer "*eshell*")
		(switch-to-buffer "*eshell*")
	  (eshell))
	(with-current-buffer "*eshell*"
	  (eshell-return-to-prompt)
	  (insert (concat "./add_new_user.sh " username " " email "; exit"))
	  (eshell-send-input)))
	(message "Failed to send key. Are you sure that's the path of the file?")))



(setq first-login-dest "~/.emacs.d/first-login")

(defun digital-ocean-as-root ()
  (interactive)
  (dired "/ssh:root@digital-ocean:/root/"))



(defun digital-ocean ()
  (interactive)
  (kill-matching-buffers "\*eshell\*")
  (if (file-exists-p first-login-dest)
      (dired "/ssh:blair@digital-ocean:/home/blair/")
    (ignore-errors
	  (kill-matching-buffers "\*eshell\*")
	  (if (get-buffer "*eshell*")
		  (switch-to-buffer "*eshell*")
		  (eshell))
      (with-current-buffer "*eshell*"
	(eshell-return-to-prompt)
	(insert "ssh blair@digital-ocean; [ $(uname -n) = ubuntu-daCosta-lab ] || ssh blair@digital-ocean; exit"))
      (eshell-send-input))
    (shell-command (concat "touch " first-login-dest))
    (message "Please run M-x digital-ocean again.")))



(defun digital-ocean-git-pull ()
  (interactive)
  (dired "/ssh:USERNAME@digital-ocean:/home/USERNAME/uottawaionchannel")
  (eshell)
  (with-current-buffer "*eshell*"
    (eshell-return-to-prompt)
    (insert "git pull")
    (eshell-send-input)))



(defun digital-ocean-build ()
  (interactive)
  (dired "/ssh:blair@digital-ocean:/home/blair/")
  (if (get-buffer "*eshell*")
	  (switch-to-buffer "*eshell*")
	(eshell "build"))
  (with-current-buffer "*eshell*"
    (eshell-return-to-prompt)
    (insert "deploy.sh")
    (eshell-send-input)))



(defun digital-ocean-build-as-root ()
  (interactive)
  (dired "/ssh:root@digital-ocean:/root/")
  (kill-matching-buffers "\*eshell\*")
  (if (get-buffer "*eshell*")
	  (switch-to-buffer "*eshell*")
	(eshell))
  (with-current-buffer "*eshell*"
    (eshell-return-to-prompt)
    (insert "deploy.sh")
    (eshell-send-input)))


(defun digital-ocean-forward-user-files (username email)
  (interactive
  (list
      (read-string    "Username of user: ")
      (read-string    "Email address of user: ")))
  (dired "/ssh:root@digital-ocean:/root/Administration/")
  (kill-matching-buffers "\*eshell\*")
  (if (get-buffer "*eshell*")
	  (switch-to-buffer "*eshell*")
	(eshell))
  (with-current-buffer "*eshell*"
    (eshell-return-to-prompt)
    (insert (concat "./forward_user_files.sh " username " " email))
    (eshell-send-input)))



(defvar my-remote-root-buffer-colors
  (let ((colors '(("orange"   "green"  "yellow")
		  ("red" "purple" "black"))))
    (setcdr (last colors) colors)
    colors)
    "Cyclic list of color combos to use for remote files. 
Elements are in the form: (active-background-color inactive-background-color foreground).")

(defvar my-remote-buffer-colors
  (let ((colors '(("dark cyan"   "green"  "yellow")
		  ("bright cyan" "purple" "black"))))
    (setcdr (last colors) colors)
    colors)
    "Cyclic list of color combos to use for remote files. 
Elements are in the form: (active-background-color inactive-background-color foreground).")

(defvar my-assigned-remote-colors (make-hash-table :test 'equal)
  "Hash table pairing remote hosts to mode-line color overrides.")

(defvar-local my-assigned-remote-color-cookies nil
  "Stores the face remap cookies created by `my-maybe-assign-remote-color' for removal if necessary.")

(defun my-maybe-assign-remote-color ()
  "If newly found file is remote assign it new modeline colors.

Colors are taken from `my-remote-buffer-colors', every file on the same remote
host will have the same colors, each newly accessed remote host will be assigned a new
color cycled from `my-remote-buffer-colors'."
  (let ((remote (file-remote-p default-directory)))
    (when remote
      (let ((color (or (gethash remote my-assigned-remote-colors)
		       (puthash remote (pop (if (equal (file-remote-p default-directory 'user) "root")
			      my-remote-root-buffer-colors
			    my-remote-buffer-colors)) my-assigned-remote-colors))))
	(setq my-assigned-remote-color-cookies
	      (list (face-remap-add-relative 'mode-line (list :background (car color) :foreground (caddr color)))
		    (face-remap-add-relative 'mode-line-inactive (list :background (cadr color) :foreground (car color)))))))))

(add-hook 'find-file-hook 'my-maybe-assign-remote-color)
(add-hook 'dired-mode-hook 'my-maybe-assign-remote-color)



;; for buffer name to show in the term title
(defun xterm-title-update ()
  (interactive)
  (unless (display-graphic-p)
	(send-string-to-terminal (concat "\033]1; " (buffer-name) "\007"))
	(if buffer-file-name
		(send-string-to-terminal (concat "\033]2; " (buffer-file-name) "\007"))
      (send-string-to-terminal (concat "\033]2; " (buffer-name) "\007")))))

(if (not window-system)
        (add-hook 'post-command-hook 'xterm-title-update))



;; Golang
(eval-after-load 'flycheck
    '(add-hook 'flycheck-mode-hook #'flycheck-golangci-lint-setup))
; (add-hook 'completion-at-point-functions 'go-complete-at-point)

(setq-default tab-width 4)

(require 'go-autocomplete)
; (require 'auto-complete-config)
; (ac-config-default)



(require 'projectile)
(projectile-global-mode)
(setq projectile-project-search-path '("~/desk/cur/"))
(setq projectile-completion-system 'ivy)
(setq projectile-enable-caching t)
; (global-set-key (kbd "C-c p .") 'helm-projectile-find-file-dwim)



(unless (display-graphic-p)
  (progn
	(define-key input-decode-map "\e[1;5C" [(control right)])
	(define-key input-decode-map "\e[1;5D" [(control left)])
	(define-key input-decode-map "\e[1;5A" [(control up)])
	(define-key input-decode-map "\e[1;5B" [(control down)])))




(setq
 lexical-binding t
 load-prefer-newer t)


(when (window-system)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1)
  (fringe-mode 0))

(set-fringe-mode 0)

(use-package diminish
  :ensure t)


;; (use-package doom-modeline
;;   :config
;;   (setq doom-modeline-height 18)
;;   (doom-modeline-def-modeline
;;     main
;;    (workspace-number window-number bar evil-state matches " " buffer-info buffer-position  " " selection-info)
;;    (global major-mode process vcs flycheck))
;; (doom-modeline-init))



;; (use-package dimmer
;;   :ensure t
;;   :config
;;   (setq dimmer-fraction 0.15)
;; (dimmer-mode))



(use-package projectile
  :config
  (setq projectile-enable-caching t)
  :diminish)

(require 'projectile)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key evil-normal-state-map (kbd "DEL") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-mode +1)


(setq
  compilation-always-kill t              ; Never prompt to kill a compilation session.
  compilation-scroll-output 'first-error ; Always scroll to the bottom.
  make-backup-files nil                  ; No backups, thanks.
  create-lockfiles nil                   ; Emacs sure loves to put lockfiles everywhere.
  kill-whole-line t                      ; Delete the whole line if C-k is hit at the beginning of a line.
  require-final-newline t                ; Auto-insert trailing newlines.
  ring-bell-function 'ignore             ; Do not ding. Ever.
  use-dialog-box nil                     ; Dialogues always go in the modeline.
  frame-title-format "emacs - %b"        ; Put something useful in the status bar.
  initial-scratch-message nil            ; SHUT UP SHUT UP SHUT UP
  save-interprogram-paste-before-kill t  ; preserve paste to system ring
  enable-recursive-minibuffers t         ; don't fucking freak out if I use the minibuffer twice
  sentence-end-double-space nil          ; are you fucking kidding me with this shit
  )


(setq debug-on-error nil)


(load-theme 'leuven)
; (load-theme 'adwaita)

(use-package all-the-icons
  :demand
  :init
  (progn (defun -custom-modeline-github-vc ()
           (let ((branch (mapconcat 'concat (cdr (split-string vc-mode "[:-]")) "-")))
             (concat
              (propertize (format " %s" (all-the-icons-octicon "git-branch"))
                          'face `(:height 1 :family ,(all-the-icons-octicon-family))
                          'display '(raise 0))
              (propertize (format " %s" branch))
              (propertize "  "))))

         (defun -custom-modeline-svn-vc ()
           (let ((revision (cadr (split-string vc-mode "-"))))
             (concat
              (propertize (format " %s" (all-the-icons-faicon "cloud"))
                          'face `(:height 1)
                          'display '(raise 0))
              (propertize (format " %s" revision) 'face `(:height 0.9)))))

         (defvar mode-line-my-vc
           '(:propertize
             (:eval (when vc-mode
                      (cond
                       ((string-match "Git[:-]" vc-mode) (-custom-modeline-github-vc))
                       ((string-match "SVN-" vc-mode) (-custom-modeline-svn-vc))
                       (t (format "%s" vc-mode)))))
             face mode-line-directory)
           "Formats the current directory."))
  :config
  (progn
    ;; (setq-default mode-line-format
    ;;               (list
    ;;                evil-mode-line-tag
    ;;                mode-line-front-space
    ;;                mode-line-mule-info
    ;;                mode-line-modified
    ;;                mode-line-frame-identification
    ;;                mode-line-buffer-identification
    ;;                " "
    ;;                mode-line-position
    ;;                mode-line-my-vc
    ;;                mode-line-modes))
    ;; (concat evil-mode-line-tag)
    ))


;; (bind-keys ("C-c tl" . (lambda () (interactive) (load-theme 'solarized-light)))
;;            ("C-c td" . (lambda () (interactive) (load-theme 'solarized-dark))))


(define-minor-mode minor-mode-blackout-mode
  "Hides minor modes from the mode line."
  t)

(catch 'done
  (mapc (lambda (x)
          (when (and (consp x)
                     (equal (cadr x) '("" minor-mode-alist)))
            (let ((original (copy-sequence x)))
              (setcar x 'minor-mode-blackout-mode)
              (setcdr x (list "" original)))
            (throw 'done t)))
        mode-line-modes))

(global-set-key (kbd "C-c m") 'minor-mode-blackout-mode)
;; ;; window dividers
;; (window-divider-mode t)
;; (setq window-divider-default-right-width 2)

;; (set-face-attribute 'window-divider nil :foreground "#eee8d5")
;; (set-face-attribute 'window-divider-first-pixel nil :foreground "#eee8d5")
;; (set-face-attribute 'window-divider-last-pixel nil :foreground "#eee8d5")

(global-hl-line-mode t) ; turn it on for all modes by default





(setq scroll-step            1
      scroll-conservatively  10000)
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq mouse-wheel-progressive-speed nil)
(setq redisplay-dont-pause t)

(setq scroll-margin 100
      scroll-conservatively 0
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01)
(setq-default scroll-up-aggressively 0.01
			  scroll-down-aggressively 0.01)

; Autosave every 500 typed characters
(setq auto-save-interval 500)

(require 'smooth-scrolling)
(smooth-scrolling-mode 1)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))

(use-package org
  :ensure org-plus-contrib
  ;; The rest of your org-mode configuration
)

(defun diary-biweekly-from (y m d)
  (let ((from-date (calendar-absolute-from-gregorian (list m d y)))
		(d (calendar-absolute-from-gregorian date)))
	(equal 0 (% (- d from-date) 14))))

(use-package org-contacts
  :ensure nil
  :after org
  :custom (org-contacts-files '("~/desk/org/contacts.org")))


(use-package org-capture
  :ensure nil
  :after org
  :preface
  (defvar my/org-contacts-template "* %(org-contacts-template-name)
:PROPERTIES:
:ADDRESS: %^{289 Cleveland St. Brooklyn, 11206 NY, USA}
:BIRTHDAY: %^{yyyy-mm-dd}
:EMAIL: %(org-contacts-template-email)
:NOTE: %^{NOTE}
:BORROWED: 
:LENT-OUT:
:END:" "Template for org-contacts.")
  :custom
  (org-capture-templates
   `(
	 ("c" "Contact" entry (file+headline "~/desk/org/contacts.org"  "Contacts"),my/org-contacts-template :empty-lines 1)
	 ("b" "Buy"     entry (file+headline "~/desk/org/todo.org" "Buy"),"** TODO Pickup %^{WHAT}" :empty-lines 1)
	 ("m" "Meeting" entry (file          "~/desk/org/meetings.org") "* Meeting - %^{DETAILS} %?  :meeting:
  :PROPERTIES:
  :LOCATION:
  :VIA:
  :NOTE:
  :END:
  %(org-time-stamp (org-current-time))" :empty-lines 1)
	 )))


; (setq org-capture-templates
;       '(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
;          "* TODO %?\n  %i\n  %a")
;         ("j" "Journal" entry (file+datetree "~/org/journal.org")
;          "* %?\nEntered on %U\n  %i\n  %a")))

; (require 'org-super-agenda)
; (org-super-agenda-mode)
; 
; (set-face-attribute 'org-super-agenda-header nil :inherit 'org-level-1)
; (set-face-attribute 'org-agenda-date         nil :inherit 'org-level-2)
; (set-face-attribute 'org-agenda-date-today   nil :inherit 'org-level-2)
; 
; (setq org-super-agenda-groups
;        '(;; Each group has an implicit boolean OR operator between its selectors.
;          (:name "Today " :face (:inherit 'org-level-3)
;                 :and (:time-grid t :date today)) 
;          (:name "Todo " 
;                 :file-path ".*todo.org\(\)?") 
;          (:name "Meetings " 
;                 ;; Single arguments given alone
;                 :tag "meeting")
;          (:name "Important "
;                 ;; Single arguments given alone
;                 :tag "bills"
;                 :priority "A")
; 		 (:name "Trip "
; 				:file-path ".*trip.org")
; 		 (:name "Math "
; 				:tag "math"
; 				:file-path ".*math.org")
; 		 (:name "Software "
; 				:tag "software")
;          ;; Set order of multiple groups at once
; 		 ;; Groups supply their own section names when none are given
;          (:todo "WAITING" :order 8) ; Set order of this section
;          (:todo ("SOMEDAY" "TO-READ" "CHECK" "TO-WATCH" "WATCHING")
;                 ;; Show this group at the end of the agenda (since it has the
;                 ;; highest number). If you specified this group last, items
;                 ;; with these todo keywords that e.g. have priority A would be
;                 ;; displayed in that group instead, because items are grouped
;                 ;; out in the order the groups are listed.
;                 :order 9)
;          (:priority<= "B"
;                       ;; Show this section after "Today" and "Important", because
;                       ;; their order is unspecified, defaulting to 0. Sections
;                       ;; are displayed lowest-number-first.
;                       :order 1)
;          ;; After the last group, the agenda will display items that didn't
;          ;; match any of these groups, with the default order position of 99
;          ))




; ;; Org Journal Settings
(require 'epa-file)
(epa-file-enable)
(setf epa-pinentry-mode 'loopback)
 
 
; (defun pc/new-buffer-p ()
;   (not (file-exists-p (buffer-file-name))))
; 
; (defun add-local-encrypt-to () 
;   (when (pc/new-buffer-p) 
;   (save-excursion
;       (goto-char (point-min))
; 	  (insert "# -*- mode:org; epa-file-encrypt-to: (\"CA52CDC86BD8250C\") -*-\n"))))

(require 'org-journal)
(setq org-journal-dir "~/desk/org/")

; (defun set-encrypt-to () (setq epa-file-encrypt-to '("CA52CDC86BD8250C")))

; (add-hook 'org-journal-after-entry-create-hook #'add-local-encrypt-to)
; (add-hook 'org-journal-mode-hook #'set-encrypt-to)
; (add-hook 'org-mode-hook 'set-encrypt-to)
; (add-hook 'org-mode-hook (lambda () (setq epa-file-select-keys nil)))

; (setq org-journal-date-prefix "# -*- mode:org; epa-file-encrypt-to: (\"CA52CDC86BD8250C\") -*-\n\n* ")
(customize-set-variable 'org-journal-date-format "%A, %B %d, %H:%M:%S")
; (setq org-journal-encrypt-journal t)
(setq org-journal-file-format "%Y%m%d.org")

(setq org-journal-enable-agenda-integration t)

(setq org-agenda-sticky t)
;; (setq org-agenda-file-regexp "\\`[^.].*\\.org\\'\\|\\`[0-9]+\\'")
(setq org-agenda-files (directory-files (expand-file-name "~/desk/org") 1 "^\\([^.]\\|\\.[^.]\\|.projectile\\|\\.\\..\\)"))


(evil-define-key 'normal org-mode-map (kbd "C-+") 'org-priority-up)
(evil-define-key 'normal org-mode-map (kbd "C--") 'org-priority-down)


(require 'org-crypt)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote ("crypt")))
(setq org-crypt-key "CA52CDC86BD8250C")

(setq epa-file-select-keys nil)
(setq epa-file-encrypt-to '("CA52CDC86BD8250C"))
										; Override default function
(eval-after-load "epa-file"
  '(defun epa-file-select-keys () '("CA52CDC86BD8250C")))
(eval-after-load "epa"
  '(defun epa-select-keys () '("CA52CDC86BD8250C")))


;; ;; (require 'org-alert)
;; (when (daemonp)
;;   (byte-recompile-directory "~/desk/.src/org-alert" 0)
;;   (add-to-list 'load-path   "~/desk/.src/org-alert")
;;   (load "org-alert")
;;   (setq alert-default-style 'libnotify)
;;   (setq org-alert-notification-title nil)
;;   (setq org-alert-interval 21600) ;; 6 hours
;;   (setq org-alert-headline-regexp "tasks: .*")
;;   (if (string= "gui" (daemonp))
;; 	  (org-alert-enable)))



;; (require 'dashboard)
;; (dashboard-setup-startup-hook)
;; ;; Or if you use use-package
;; (use-package dashboard
;;   :ensure t
;;   :config
;;   (dashboard-setup-startup-hook))

; (add-to-list 'dashboard-items '(agenda) t)
(setq show-week-agenda-p t)

; (setq dashboard-banner-logo-title "")
;; (setq dashboard-startup-banner 3)
; (setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))

; (setq dashboard-items '((agenda . 10)
; 						(recents  . 5)
;                         (bookmarks . 5)
; 						(projects . 5)
; 						(registers . 5)))

; (setq initial-buffer-choice (lambda ()
; 							  (if (get-buffer "*Blair's Agenda*")
; 								  (get-buffer "*Blair's Agenda*")
; 								(org-agenda "P" "n")
; 								(unless (get-buffer "*Blair's Agenda*")
; 								  (switch-to-buffer (get-buffer-create "*scratch*"))
; 								  (lisp-interaction-mode)))))


(defun org-alert--strip-prefix (headline)
  "Remove the scheduled/deadline prefix from HEADLINE."
  (replace-regexp-in-string ".*:\s+" "" headline))

(defun org-alert--unique-headlines (regexp agenda)
  "Return unique headlines from the results of REGEXP in AGENDA."
  (let ((matches (-distinct (-flatten (s-match-strings-all regexp agenda)))))
    (--map (org-alert--strip-prefix it) matches)))

; (defun list-print (l)
;   "Print each element of LIST on a line of its own."
;   (while l
;     (princ (car l))
;     (setq l (cdr l))))
					   
; (defun ndays-from-now (n)
;   (+ n (org-today)))
; 
; (defun upcoming-tasks (n) 
;   (with-temp-buffer
;       (ignore-errors (org-agenda-list (+ 1 n)))
;       (dotimes (dumb (+ 1 n) 0)
; 		(re-search-forward "^\\(Mon\\|Tues\\|Wednes\\|Thurs\\|Fri\\|Satur\\|Sun\\)day" nil t))
;       (org-alert--unique-headlines "^  *[^ :]*:.*"
; 								   (replace-regexp-in-string
; 									"\\W\\W*[0-9]\\{1,2\\}:[0-9]\\{1,2\\}\\.\\.\\.\\.\\.\\. \\(\\(now \\)?-[ -]*$\\)?"
; 									""
; 									(buffer-substring-no-properties (point) (point-max))))))


 (setq org-todo-keywords
	   '((sequence
		  "TODO"
		  "|"
		  "DONE")))

(run-with-idle-timer 60 t 'org-save-all-org-buffers)
(setq org-agenda-start-day "-0d")
(setq org-agenda-span 10)
(setq org-agenda-start-on-weekday nil)

;; (defun my-custom-agenda-fn ()
;;   (when (get-buffer "*Blair's Agenda*")
;; 	(kill-buffer "*Blair's Agenda*"))
;;   (save-excursion
;;     (let ((delimit "------------------------"))
;; 	  ;; Delete first line (week number)
;; 	  (goto-char (point-min))
;; 	  (save-excursion
;; 		(delete-region
;; 		 (progn (forward-visible-line 0) (point))
;; 		 (progn (forward-visible-line 1) (point))))
;; 	  ;; Start Adding spaces
;;       (goto-char (point-min))
;; 	  (re-search-forward "^\\(Mon\\|Tues\\|Wednes\\|Thurs\\|Fri\\|Satur\\|Sun\\)day" nil t)
;;       (while (re-search-forward "^\\(Mon\\|Tues\\|Wednes\\|Thurs\\|Fri\\|Satur\\|Sun\\)day" nil t)
;;         (goto-char (point-at-bol))
;; 		(insert "\n")
;; 		(re-search-forward "^\\(Mon\\|Tues\\|Wednes\\|Thurs\\|Fri\\|Satur\\|Sun\\)day" nil t))))
;;   (goto-char (point-min))
;;   (rename-buffer "*Blair's Agenda*"))

;; (add-hook 'org-agenda-finalize-hook 'my-custom-agenda-fn)

; (add-hook 'org-agenda-finalize-hook
; 		  (lambda ()
; 			(rename-buffer "*Blair's Agenda*")))



(require 'org-install)
(require 'calfw-org)

;; use org agenda buffer style keybinding.
(setq cfw:org-overwrite-default-keybinding t)

(defun org-cal ()
  (interactive)
  (cfw:open-org-calendar))


(setq cfw:fchar-junction ?╋
      cfw:fchar-vertical-line ?┃
      cfw:fchar-horizontal-line ?━
      cfw:fchar-left-junction ?┣
      cfw:fchar-right-junction ?┫
      cfw:fchar-top-junction ?┯
      cfw:fchar-top-left-corner ?┏
      cfw:fchar-top-right-corner ?┓)
      


;; Org-ql
;; (byte-recompile-directory "~/desk/.src/org-ql" 0)
;; (add-to-list 'load-path   "~/desk/.src/org-ql")
;; (load "org-ql")


(require 'appt)
(appt-activate t)

(setq appt-message-warning-time 30) ; Show notification 30 minutes before event
(setq appt-display-interval appt-message-warning-time) ; Disable multiple reminders
(setq appt-display-mode-line nil)

; Use appointment data from org-mode
(defun my-org-agenda-to-appt ()
  (interactive)
  (setq appt-time-msg-list nil)
  (org-agenda-to-appt))

; Update alarms when...
; (1) ... Starting Emacs
(my-org-agenda-to-appt)

; (2) ... Everyday at 12:05am (useful in case you keep Emacs always on)
(run-at-time "12:05am" (* 24 3600) 'my-org-agenda-to-appt)

; (3) ... When TODO.org() is saved
(add-hook 'after-save-hook
          '(lambda ()
             (if (string-match-p (concat (getenv "HOME") "/desk/org/.*.org.*") (buffer-file-name))
                 (my-org-agenda-to-appt))))

; Display appointments as a window manager notification
(setq appt-disp-window-function 'my-appt-display)
(setq appt-delete-window-function (lambda () t))

(setq my-appt-notification-app "/home/blair/bin/beep") ;; (concat (getenv "HOME") "/bin/appt-notification"))

(defun my-appt-display (min-to-app new-time msg)
  (if (atom min-to-app)
    (start-process "beep" nil my-appt-notification-app min-to-app msg)
  (dolist (i (number-sequence 0 (1- (length min-to-app))))
    (start-process "beep" nil my-appt-notification-app (nth i min-to-app) (nth i msg)))))



;; elfeed
(setq elfeed-feeds
      '(("https://www.voidlinux.org/atom.xml" void)
        ("http://mlb.mlb.com/partnerxml/gen/news/rss/tor.xml" baseball)))

; (setq debug-on-error t)






;; Modify agenda display (spacing and name abbreviations)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; modify agenda "date headings" format (to abbreviate day and month names)

(defun my-org-agenda-format-date-aligned (date)
  "Format a DATE string for display in the daily/weekly agenda.
This function makes sure that dates are aligned for easy reading."
  (require 'cal-iso)
  (let* ((dayname (calendar-day-name date))
	 (day (cadr date))
	 (day-of-week (calendar-day-of-week date))
	 (month (car date))
	 (monthname (calendar-month-name month))
	 (year (nth 2 date))
	 (iso-week (org-days-to-iso-week
		    (calendar-absolute-from-gregorian date)))
	 (weekyear (cond ((and (= month 1) (>= iso-week 52))
			  (1- year))
			 ((and (= month 12) (<= iso-week 1))
			  (1+ year))
			 (t year)))
	 (weekstring (if (= day-of-week 1)
			 (format " W%02d" iso-week)
		       "")))
    (format "\n%-10s %2d %s %4d%s"
	    dayname day monthname year weekstring)))

(setq org-agenda-format-date 'my-org-agenda-format-date-aligned)

;; refresh agenda view regularly
(defun org-agenda-auto-refresh ()
  "Call org-agenda-redo function even in the non-agenda buffer."
  (interactive)
  (let ((agenda-window (get-buffer-window org-agenda-buffer-name t)))
    (when agenda-window
      (with-selected-window agenda-window (org-agenda-redo))))
  (let ((calendar-window (get-buffer-window cfw:calendar-buffer-name)))
    (when calendar-window
      (with-selected-window calendar-window (cfw:refresh-calendar-buffer nil)))))
(run-at-time nil 300 'org-agenda-auto-refresh)


(setq org-icalendar-combined-agenda-file "/home/blair/desk/agenda.ics")

(display-battery-mode)
(display-time)

(setq display-time-format "%a %d, %H:%M")
(setq display-time-default-load-average nil)
(setq global-mode-string (remove 'display-time-string global-mode-string))
(setq mode-line-end-spaces (list (propertize " " 'display '(space :align-to (- right 14))) 'display-time-string))

;; (add-to-list 'load-path "~/.emacs.d/git/notmuch-unread")
;; (require 'notmuch)
;; (require 'notmuch-unread)
;; (setq notmuch-unread-search-term "tag:inbox and tag:unread")
;; (setq notmuch-unread-mode-line-string "tag:inbox and tag:unread")
;; (notmuch-unread-mode)


(setq leuven-scale-outline-headlines nil)
(setq leuven-scale-org-agenda-structure nil)



(require 'tea-time)
(setq tea-time-sound "~/desk/.beep.mp3")




;;; LANGUAGE
;;; ========

;(require 'writegood-mode)
;(global-set-key "\C-cg" 'writegood-mode)
(add-hook 'text-mode-hook (lambda () (guess-language-mode 1)))


;; French!
(require 'guess-language)

;; Optionally:
(setq guess-language-languages '(en fr))
(setq guess-language-min-paragraph-length 35)



;; (require 'google-translate)
;; (require 'google-translate-default-ui)
;; (global-set-key "\C-ct" 'google-translate-at-point)
;; (global-set-key "\C-cT" 'google-translate-query-translate)


(require 'google-translate)
(require 'google-translate-smooth-ui)
(global-set-key "\C-ct" 'google-translate-smooth-translate)



(define-minor-mode sensitive-mode
  "For sensitive files like password lists.
It disables backup creation and auto saving.

With no argument, this command toggles the mode.
Non-null prefix argument turns on the mode.
Null prefix argument turns off the mode."
  ;; The initial value.
  nil
  ;; The indicator for the mode line.
  " Sensitive"
  ;; The minor mode bindings.
  nil
  (if (symbol-value sensitive-mode)
      (progn
		;; disable backups
		(set (make-local-variable 'backup-inhibited) t)	
		;; disable auto-save
		(if auto-save-default
			(auto-save-mode -1)))
										;resort to default value of backup-inhibited
    (kill-local-variable 'backup-inhibited)
										;resort to default auto save setting
    (if auto-save-default
		(auto-save-mode 1))))

(add-to-list 'auto-mode-alist '(".*mutt.*" . message-mode))
(setq mail-header-separator "")
(add-hook 'message-mode-hook 'auto-fill-mode)
(add-hook 'message-mode-hook 'sensitive-mode)
(defvar message-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-c C-c")  '(lambda ()
                                        "save and exit quickly"
                                        (interactive)
                                        (save-buffer)
                                        (server-edit)))
    map)
  "Add Mutt C-c C-c command to message-mode keymap (creating it if needed)"
  )


(define-key message-mode-map (kbd "C-c C-c") 'kill-buffer-and-window)
(defun no-auto-fill ()
  "Turn off auto-fill-mode."
  (auto-fill-mode -1))

(add-hook 'message-mode-hook #'no-auto-fill)
