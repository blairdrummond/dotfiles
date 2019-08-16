(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-engine (quote luatex))
 '(TeX-view-program-list (quote (("Zathura" "zathura %o"))))
 '(TeX-view-program-selection
   (quote
    (((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Zathura")
     (output-html "xdg-open"))))
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#cccccc" "#f2777a" "#99cc99" "#ffcc66" "#6699cc" "#cc99cc" "#66cccc" "#515151"))
 '(circe-format-say "{nick:-16s} {body}")
 '(circe-format-self-say "{nick:-15s}» {body}")
 '(circe-reduce-lurker-spam t)
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("47aa6e82734866b2915781c6e1d9517bd897d45fe8aec360dd4b6294fec73068" "eaf07d1628bc01547cb79d2879e8a0d776cc802aaab7ff57b9d06a9a807d4ba8" "b45f6cc3c34ce94ecfd36a6729bdb7a3a58985a215e68be0fd6df9510cb1599c" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "97d039a52cfb190f4fd677f02f7d03cf7dbd353e08ac8a0cb991223b135ac4e6" "3c98d13ae2fc7aa59f05c494e8a15664ff5fe5db5256663a907272869c4130dd" "d320493111089afba1563bc3962d8ea1117dd2b3abb189aeebdc8c51b5517ddb" "0eea76fe89061a7f6da195f4a976c0b91150de987b942fac2dd10992aea33833" "c39ae5721fce3a07a27a685c08e4b856a13780dbc755a569bb4393c932f226d7" "a25c42c5e2a6a7a3b0331cad124c83406a71bc7e099b60c31dc28a1ff84e8c04" "b747fb36e99bc7f497248eafd6e32b45613ee086da74d1d92a8da59d37b9a829" "e93d61fac6b09f8cf81e18fd441db4a72f45fd53e5ec1f28ef7bd7bfe4954126" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bbf759c7abc48267b9cb2dd5273eb08d968a45d9eb76abdd2959ef2cf98b3397" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "5436e5df71047d1fdd1079afa8341a442b1e26dd68b35b7d3c5ef8bd222057d1" "71182be392aa922f3c05e70087a40805ef2d969b4f8f965dfc0fc3c2f5df6168" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "98b064a160e7e2a6cb334191798b35ef0e66a1d5ead00f5458958579b0da6511" "a20bc847fc4a95813b6156ff3e0d421e1452786ae5bacffa4ea53f726ecd13aa" "580a5df0ff4756d59cc11f5f41c11bf3d405aab3a1c0e840fbf0992c68202268" "1b38682537b41a24a2b8e39a01caf3894e8010898ea85d2e630d1f2843e984e2" "a7599d385c1e78fb9f1f64db2e6bb546f5303eb01e7cb77f57b5224610946fa3" "7d893364a3032f55099e6d879c5c1ce21dd949811525f23155e2d90fc609cb24" default)))
 '(dired-details-hidden-string "")
 '(fci-rule-color "#515151")
 '(font-latex-fontify-script nil)
 '(font-latex-fontify-sectioning (quote color))
 '(font-latex-script-display (quote (nil)))
 '(fringe-mode 0 nil (fringe))
 '(helm-descbinds-mode t)
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
 '(hl-sexp-background-color "#1c1f26")
 '(inhibit-startup-screen t)
 '(lui-fill-type "                 ")
 '(lui-flyspell-p t)
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(neo-mode-line-type (quote none))
 '(neo-theme (quote nerd))
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (github-notifier circe-notifications circe weechat smart-mode-line helm-descbinds helm-themes which-key hydra suscolors-theme gruvbox-theme jazz-theme white-sand-theme silkworm-theme yoshi-theme color-theme-sanityinc-tomorrow darktooth-theme neotree writeroom-mode rainbow-delimiters openwith markdown-mode helm flycheck-haskell evil ess dired-details centered-window-mode auto-complete auctex)))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(require-final-newline nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f2777a")
     (40 . "#f99157")
     (60 . "#ffcc66")
     (80 . "#99cc99")
     (100 . "#66cccc")
     (120 . "#6699cc")
     (140 . "#cc99cc")
     (160 . "#f2777a")
     (180 . "#f99157")
     (200 . "#ffcc66")
     (220 . "#99cc99")
     (240 . "#66cccc")
     (260 . "#6699cc")
     (280 . "#cc99cc")
     (300 . "#f2777a")
     (320 . "#f99157")
     (340 . "#ffcc66")
     (360 . "#99cc99"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil :family "GohuFont" :foundry "Gohu" :slant normal :weight normal :height 105 :width normal))))
 '(font-latex-sectioning-2-face ((t (:inherit nil :height 1.0))))
 '(font-latex-verbatim-face ((t (:inherit nil :foreground "burlywood"))))
 '(neo-file-link-face ((t (:foreground "cyan")))))
 
(setq use-file-dialog nil)

;; Add Melpa packages
(require 'package)
(add-to-list
 'package-archives
 '("melpa" . "http://melpa.org/packages/")
 t)
(package-initialize)



(require 'evil)
(evil-mode 1)
(setq evil-default-state 'normal)
(define-key evil-normal-state-map (kbd ";") 'evil-ex)


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

(defun newline-without-break-of-line ()
  (interactive)
  (let ((oldpos (point)))
    (end-of-line)
    (newline-and-indent)))
(define-key evil-normal-state-map "\\" 'newline-without-break-of-line)



(require 'dired-details)
(dired-details-install)
;; Dired Settings
(require 'dired)
(defun dired-dotfiles-toggle ()
  "Show/hide dot-files"
  (interactive)
  (when (equal major-mode 'dired-mode)
    ;; if currently showing
    (if (or (not (boundp 'dired-dotfiles-show-p)) dired-dotfiles-show-p)
	(progn
	  (set (make-local-variable 'dired-dotfiles-show-p) nil)
	  (message "h")
	  (dired-mark-files-regexp "^\\\.")
	  (dired-do-kill-lines))
      (progn (revert-buffer) ; otherwise just revert to re-show
	     (set (make-local-variable 'dired-dotfiles-show-p) t)))))

(define-key dired-mode-map "h" 'dired-dotfiles-toggle)  ;; hide dot-files

(require 'neotree)
(define-key neotree-mode-map          (kbd "n") 'neotree-toggle)
(define-key neotree-mode-map          (kbd "M-SPC") 'neotree-toggle)
(define-key evil-normal-state-map     (kbd "M-SPC") 'neotree-toggle)

;; yes/no -> y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; Smooth scrolling
(setq scroll-step 1) 

;; Don't follow symlinks
(setq vc-follow-symlinks nil)


;; Helm
(require 'helm)
(helm-autoresize-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(setq helm-autoresize-min-height 10)
(setq helm-autoresize-max-height 30)



; (when (display-graphic-p)
;   ;; Change colour of cursor
;   (setq evil-normal-state-cursor   '("#FFD4E6" box))
;   (setq evil-visual-state-cursor   '("orange" box))
;   (setq evil-insert-state-cursor   '("green" bar))
;   (setq evil-replace-state-cursor  '("red" box))
;   (setq evil-operator-state-cursor '("pink" hollow)))


;; M-w already works, but sometimes I want these...
;; I like being able to copy in insert mode in particular
(define-key evil-normal-state-map "\C-y" 'yank)
(define-key evil-insert-state-map "\C-y" 'yank)
(define-key evil-normal-state-map "\C-w" 'evil-delete)
(define-key evil-insert-state-map "\C-w" 'evil-delete)
(define-key evil-insert-state-map "\C-a" 'evil-beginning-of-line)
(define-key evil-insert-state-map "\C-e"
  (lambda () (interactive)
    (evil-end-of-line)
    (forward-char)))




;; Initialize in mode X
 (mapc (lambda (pair)
	   (let
	       ((mode  (car pair))
		(state (cadr pair)))
	     (evil-set-initial-state mode state)))
      '((inferior-emacs-lisp-mode emacs)
	(haskell-interactive-mode emacs)
	(inferior-haskell-mode    emacs)
	(neotree-mode             emacs)
	(inferior-ess-mode        emacs)
	(shell-mode               emacs)
	(inferior-ess-mode        emacs)
	(dired-mode               emacs)
	(circe-channel-mode       emacs)
	(wdired-mode              normal)))



;;; Escape the minibuffer with escape
(define-key  evil-normal-state-map            [escape]  'keyboard-quit)
(define-key  evil-visual-state-map            [escape]  'keyboard-quit)
(define-key  minibuffer-local-map             [escape]  'keyboard-escape-quit)
(define-key  minibuffer-local-ns-map          [escape]  'keyboard-escape-quit)
(define-key  minibuffer-local-completion-map  [escape]  'keyboard-escape-quit)
(define-key  minibuffer-local-must-match-map  [escape]  'keyboard-escape-quit)
(define-key  minibuffer-local-isearch-map     [escape]  'keyboard-escape-quit)



;; Remove the arrow in word wrap mode
;(set-display-table-slot standard-display-table 'wrap ?\ )
;; I don't like the bitmaps
(define-fringe-bitmap 'right-curly-arrow
  [#b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000])
(define-fringe-bitmap 'left-curly-arrow
  [#b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000])




;; Haskell
(add-hook 'haskell-mode-hook 'inf-haskell-mode)
(require 'inf-haskell)
(add-hook 'haskell-mode-hook 'haskell-indent-mode)
(setq haskell-process-type (quote ghci))

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))


; 
; (setq TeX-auto-save t)
; (setq TeX-parse-self t)
; (setq-default tex-master nil)
; (setq reftex-plug-into-AUCTeX t)
; (setq-default TeX-engine 'xelatex)
; (setq reftex-plug-into-AUCTeX t)
; (setq TeX-show-compilation nil)
; (setq font-latex-fontify-sectioning 1.0)
; 
; (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)

(setq-default TeX-PDF-mode t)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 
          (lambda()
             (add-to-list 'TeX-command-list '("XeLaTeX"  "%`xelatex%(mode)%' %t"  TeX-run-TeX nil t))
	     (add-to-list 'TeX-command-list '("LuaLaTeX" "%`lualatex%(mode)%' %t" TeX-run-TeX nil t))
             ;; (setq TeX-command-default "XeLaTeX")
             (setq TeX-save-query nil)
             (setq TeX-show-compilation nil)))

;; Markdown
;; (setq markdown-enable-math 1)
;; (add-hook 'markdown-mode-hook 'pandoc-mode)
;; (add-hook 'markdown-mode-hook 'visual-line-mode)
;; (add-hook 'markdown-mode-hook 'toggle-word-wrap)

;; (evil-define-key 'normal markdown-mode-map
;;   (kbd "C-c C-c")
;;   (lambda () (interactive) (pandoc-convert-to-pdf "latex")))
;; 
;; (evil-define-key 'normal markdown-mode-map
;;   (kbd "TAB")
;;   (lambda () (interactive) (markdown-cycle)))


;; (defun shell-command-on-buffer ()
;;   "Asks for a command and executes it in inferior shell with current buffer
;; as input."
;;   (interactive)
;;   (call-process-shell-command
;;    (concat "zathura \"" (file-name-sans-extension (buffer-file-name)) ".pdf\" > /dev/null 2>&1 &")
;;    nil "*Shell Command Output*" t))

;; (evil-define-key 'normal markdown-mode-map (kbd "C-c C-v") 'shell-command-on-buffer)



;; ##################### open pdfs externally ###################
(require 'openwith)
(setq openwith-associations '(("\\.pdf\\'"  "zathura" (file))
			      ("\\.png\\'"  "feh" (file))
			      ("\\.jpg\\'"  "feh" (file))
			      ("\\.jpeg\\'" "feh" (file))))
(openwith-mode t)
;; ################# end open pdfs externally ###################



;; move between windows
(global-set-key (kbd "M-<down>")  'windmove-down)
(global-set-key (kbd "M-<up>")    'windmove-up)
(global-set-key (kbd "M-<Left>")  'Windmove-Left)
(global-set-key (kbd "M-<right>") 'windmove-right)


(global-set-key (kbd "M-j")  'windmove-down)
(global-set-key (kbd "M-k")  'windmove-up)
(global-set-key (kbd "M-h")  'windmove-left)
(global-set-key (kbd "M-l")  'windmove-right)


;    (load "ess-site.el")
;    ; (setq ess-ask-for-ess-directory nil)
;    (setq ess-eval-visibly nil)
;    (setq ess-eval-visibly-p nil)
;    (setq inferior-ess-own-frame t)



(require 'ibuffer)
(setq ibuffer-saved-filter-groups
      (quote (("default"
	       ("Text" (or (name . ".*\\.txt")
			   (name . ".*\\.md")
			   (name . ".*\\.tex")
			   (name . ".*\\.org")
			   ))
	       ("Programming" ;; prog stuff not already in MyProjectX
		(or
		 (mode . haskell-mode)
		 (mode . python-mode)
		 (mode . emacs-lisp-mode)
		 (mode . sh-mode)
		 (mode . ess-mode)
		 ))
	       ("Tramp" (filename . "/ssh:.*"))
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

(defalias 'list-buffers 'ibuffer)
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

;; github
(require 'github-notifier)
(setq github-notifier-token "9b567438e67f1f400825cfb736211cf09168eb72")
; (github-notifier-mode 1)


;; Circe
(setq circe-reduce-lurker-spam t)

(add-hook 'circe-chat-mode-hook 'writeroom-mode)
(setq circe-network-options `(("Freenode" :nick "blair_" :channels '("#math"))))
(setq circe-format-say "{nick:-16s} {body}")

(setq lui-flyspell-p t
    lui-flyspell-alist '((".*" "american")))

(autoload 'enable-circe-notifications "circe-notifications" nil t)

(eval-after-load "circe-notifications"
'(setq circe-notifications-watch-strings
	'("blair_"
	"haskell"
	"emacs"
	;; "Z-module"
	;; "Millenial"
	;; "antonfire"
	;; "drazak"
	)))

(add-hook 'circe-server-connected-hook 'enable-circe-notifications)
(require 'circe-color-nicks)
(enable-circe-color-nicks)



;; Rainbow Brackets
(require 'rainbow-delimiters)
(mapc (lambda (x) (add-hook x #'rainbow-delimiters-mode))
    '(
	python-mode-hook
	latex-mode-hook
	LaTeX-mode-hook
	markdown-mode-hook
	emacs-lisp-mode-hook
	haskell-mode-hook
	ess-mode-hook
	))


;; Auto-Complete
(ac-config-default)
(add-hook 'LaTeX-mode-hook       'flyspell-mode)
(add-hook 'markdown-mode-hook    'flyspell-mode)

;; Mutt
(add-to-list 'auto-mode-alist '(".*mutt.*" . message-mode))  
(setq mail-header-separator "")               
(add-hook 'message-mode-hook 'auto-fill-mode)  

; (add-to-list 'load-path "~/.emacs.d/post")
; (autoload 'post-mode "post" "mode for e-mail" t)
; (add-to-list 'auto-mode-alist 
;              '("\\.*mutt-*\\|.article\\|\\.followup" . post-mode))
; 
; (add-hook 'post-mode-hook 'flyspell-mode)






; (require 'whitespace)
; (add-hook 'before-save-hook 'delete-trailing-whitespace)
; (setq whitespace-line-column 80) ;; limit line length
; (setq whitespace-style '(face lines-tail))
; (add-hook 'prog-mode-hook 'whitespace-mode)



;; Theme
; (add-to-list 'custom-theme-load-path "~/.emacs.d/gruvbox/")
; (add-to-list 'load-path "~/.emacs.d/gruvbox")
; 
(add-to-list 'custom-theme-load-path "~/.emacs.d/suscolors/")
(add-to-list 'load-path "~/.emacs.d/suscolors")


(add-to-list 'custom-theme-load-path "~/.emacs.d/xresources/")
(add-to-list 'load-path "~/.emacs.d/xresources")
; (load-theme 'xresources)





; ;;; Fully undo the effects of one theme when loading
; (defadvice load-theme
;     (before theme-dont-propagate activate)
;   (mapc #'disable-theme custom-enabled-themes))
; 
; ;; Get rid of the modeline box, and remove the fringe
; (defadvice load-theme
;     (after theme-dont-propagate activate)
;     ; (set-face-attribute 'mode-line nil :box nil)
;   ;; (set-face-attribute 'fringe nil :background nil)
;    )


;
;
;
; (defun get-xresource (name)
;   (let ((x-resource-class "Emacs") (x-resource-name "emacs"))
;   (x-get-resource name "")))
;
;
;  ;; Current color-theme
;  (defvar theme-color "")
;  (defvar theme-color-set nil)
;
;  ;; Dark
;  (defun load-dark ()
;    (progn
;      (disable-theme 'custom-enabled-themes)
;      (load-theme 'suscolors)
;      (setq theme-color "dark")))
;
;  ;; Light
;  (defun load-light ()
;    (progn
;      (disable-theme 'custom-enabled-themes)
;      (load-theme 'gruvbox-light)
;      (setq theme-color "light")))
;
;  (provide 'load-light)
;  (provide 'load-dark)
;
;  (if (daemonp)
;      (add-hook 'after-make-frame-functions
;  	      (lambda (frame)
;  		(select-frame frame)
;  		(when (display-graphic-p)
;  		    (progn
;  		      (unless theme-color-set
;  			(progn
;  			  (setq theme-color-set 1)
;  			  (when (equal theme-color "dark")
;  			    (load-dark))
;  			  (when (equal theme-color "light")
;  			    (load-light)))))))))
;
				    ;


;; ;; Auto-detect theme
;; (when (file-exists-p "/tmp/color")
;;   (let  ((theme
;; 	  (with-temp-buffer
;; 	    (insert-file-contents "/tmp/color") (car (split-string (buffer-string) "\n" t)))))
;;     (if (equal theme "dark")
;; 	(load-theme 'suscolors t)
;;       (load-theme 'white-sand t))))




; (if (daemonp)
;     (add-hook 'after-make-frame-functions
; 	      (lambda (frame)
; 		(select-frame frame)
; 		(when (display-graphic-p)
; 		  (load-theme 'suscolors t)))))
; (load-theme 'suscolors t)



(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 100))
; (setq-default left-margin-width 1 right-margin-width 1)
(add-to-list 'default-frame-alist '(internal-border-width . 7))


;; Nice window title
;;  (setq frame-title-format
;;        '(:eval (if (and
;;  		   (buffer-modified-p)
;;  		   (not (string-match-p
;;  			 (regexp-quote ".*\*.*")
;;  			 (buffer-name))))
;;  		  (concat " *" (buffer-name))
;;  		(buffer-name))))
;;  
;;  
;;  
;;  (defun on-frame-open (frame)
;;    (if (not (display-graphic-p frame))
;;        (set-face-background 'default "unspecified-bg" frame)))
;;  (on-frame-open (selected-frame))
;;  (add-hook 'after-make-frame-functions 'on-frame-open)
;;  
;;  
;;  (defun on-after-init ()
;;    (unless (display-graphic-p (selected-frame))
;;      (set-face-background 'default "unspecified-bg" (selected-frame))))
;;  
;;  (add-hook 'window-setup-hook 'on-after-init)


;;; Temporary files stored in a smarter way
;;; (setq backup-directory-alist `(("." . "~/.saves")))
(setq make-backup-files nil)



;; Ignore Whitespace in ediff mode
(setq ediff-diff-options "-w")



;; Remove annoying buffers
(setq-default message-log-max nil)
(when (get-buffer "*Messages*")
(kill-buffer "*Messages*"))
(when (get-buffer "*ESS*")
(kill-buffer "*ESS*"))
(add-hook 'compilation-finish-functions
	(lambda
	(buf strg)
	(kill-buffer buf)))

;; If you want to hide the mode-line in every buffer by default
(setq writeroom-width 82)
;; (global-set-key (kbd "M-c") 'writeroom-mode)


;;  ;; Vim blank lines
;;  (add-to-list 'load-path "~/.emacs.d/vim-empty-lines")
;;  (require 'vim-empty-lines-mode)
;;  (add-hook 'prog-mode-hook 'vim-empty-lines-mode)
;;  (add-hook 'text-mode-hook 'vim-empty-lines-mode)


;; ;; Write A Function to do the spacing
;; (defun simple-mode-line-render (left right)
;;   "Return a string of `window-width' length containing LEFT, and RIGHT
;;  aligned respectively."
;;   (let* ((available-width (- (+ (- (window-width) (length left)) (/ (apply '+ (butlast (window-fringes) 1)) 6)) 5)))
;;     (format (format " %%s %%%ds " available-width) left right)))
;; 
;; 
;; 
;; ;; use the function in conjunction with :eval and format-mode-line in your mode-line-format
;; (setq-default mode-line-format
;;       '((:eval (simple-mode-line-render
;;                 ;; Left
;;                 (format-mode-line
;; 		 (concat
;; 		  "    "
;; 		  (if (buffer-modified-p) "*" "")
;; 		  (format-mode-line mode-line-buffer-identification)
;; 		  (if buffer-file-truename "   " "")
;; 		"%m"))
;;                 ;; right
;;                 (format-mode-line (concat  "%l" "," "%c "))))))


;;; This seems like a good idea

;; (define-key evil-normal-state-map (kbd "SPC") 'helm-M-x)

(require 'which-key)
(which-key-mode)


(require 'helm-descbinds)
(helm-descbinds-mode)


(defhydra hydra-window-stuff (:color teal :hint nil :exit nil)
"
^Directional^       ^buffer^            ^Actions^         
^^^^^^^^-------------------------------------------------
_h_: move left       _k_: kill buffer    _u_: undo
_j_: move down       _c_: kill window    _r_: redo
_k_: move up         _o_: kill other     _q_: quit
_l_: move right      _b_: ibuffer        _f_: C-x C-f
_[_: scroll up       _p_: prev buffer
_]_: scroll down     _n_: next buffer
"

("[" scroll-up-line :exit nil)
("]" scroll-down-line :exit nil)

("u" winner-undo :exit nil)
("r" winner-redo :exit nil)

("h" windmove-left)
("j" windmove-down)
("k" windmove-up)
("l" windmove-right)

("p" previous-buffer :exit nil)
("n" next-buffer :exit nil)
("b" ibuffer) 
("f" helm-find-files)

("k" kill-buffer)
("c" delete-window)
("o" delete-other-windows)

				    ; ("H" hydra-move-splitter-left)
				    ; ("J" hydra-move-splitter-down)
				    ; ("K" hydra-move-splitter-up)
				    ; ("L" hydra-move-splitter-right)

("q" nil))


(defhydra hydra-help (:color teal :exit t)
;; Better to exit after any command because otherwise helm gets in a
;; mess, set hint to nil: written out manually.

"
Describe        ^^Keys                    ^^Search                    ^^Documentation
---------------------------------------------------------------------------------------
_f_unction        _k_eybinding              _a_propros                  _i_nfo
_p_ackage         _w_here-is                _d_oc strings               _n_: man
_m_ode            _b_: show all bindings    _s_: info by symbol         _h_elm-dash
_v_ariable

"
;; Boring help commands...
("e" view-echo-area-messages "messages")
("l" view-lossage "lossage")
("C" describe-coding-system "coding-system")
("I" describe-input-method "input-method")


;; Documentation
("i" info nil)
("n" helm-man-woman nil)
("h" helm-dash)

;; Keybinds
("b" describe-bindings nil)
("c" describe-key-briefly nil)
("k" describe-key nil)
("w" where-is nil)

;; Search
("a" apropos-command nil)
("d" apropos-documentation nil)
("s" info-lookup-symbol nil)

;; Describe
("f" describe-function nil)
("p" describe-package nil)
("m" describe-mode nil)
("v" describe-variable)
("y" describe-syntax nil)

;; quit
("q" help-quit "quit")
("ESC" nil "quit"))


(defhydra hydra-theme-menu (:color teal :hint nil :exit t)
"theme"
("w" writeroom-mode "writeroom")
("s" helm-themes "select themes")
("q" nil "quit")
("ESC" nil "quit"))

(defhydra hydra-latex (:color teal :hint nil :exit t)
"LaTeX"
("b" (TeX-command "LuaLaTeX" 'TeX-master-file) "Compile")
("l" (TeX-command "LuaLaTeX" 'TeX-master-file) "LuaLaTeX")
("x" (TeX-command "XeLaTeX"  'TeX-master-file) "XeLaTeX")
("L" (TeX-command "LaTeX"    'TeX-master-file) "LaTeX")
("v" (TeX-view) "View")
("ESC" nil "quit"))



(defhydra hydra-spelling (:color teal :hint nil :exit t)
"flyspell"
("b" flyspell-buffer "buffer")
("d" ispell-change-dictionary  "dict")
("n" flyspell-goto-next-error "next")
("ESC" nil "quit"))



(defhydra hydra-unicode/fraktur (:color teal :hint nil :exit t)
"Fraktur"
("A" (insert-char #x1D51E)) 
("B" (insert-char #x1D51F))
("C" (insert-char #x1D520))
("D" (insert-char #x1D521))
("E" (insert-char #x1D522))
("F" (insert-char #x1D523))
("G" (insert-char #x1D524))
("H" (insert-char #x1D525))
("I" (insert-char #x1D526))
("J" (insert-char #x1D527))
("K" (insert-char #x1D528))
("L" (insert-char #x1D529))
("M" (insert-char #x1D52A))
("N" (insert-char #x1D52B))
("O" (insert-char #x1D52C))
("P" (insert-char #x1D52D))
("Q" (insert-char #x1D52E))
("R" (insert-char #x1D52F))
("S" (insert-char #x1D530))
("T" (insert-char #x1D531))
("U" (insert-char #x1D532))
("V" (insert-char #x1D533))
("W" (insert-char #x1D534))
("X" (insert-char #x1D535))
("Y" (insert-char #x1D536))
("Z" (insert-char #x1D537)) ;; CAPS

("a" (insert-char #x1D504))
("b" (insert-char #x1D505)) ;; 
("c" (insert-char #x0212D)) ;; Weird
("d" (insert-char #x1D507)) 
("e" (insert-char #x1D508))
("f" (insert-char #x1D509))
("g" (insert-char #x1D50A))
("h" (insert-char #x0210F)) ;; Weird
("i" (insert-char #x02111)) ;; Weird
("j" (insert-char #x1D50D))
("k" (insert-char #x1D50E))
("l" (insert-char #x1D50F))
("m" (insert-char #x1D510))
("n" (insert-char #x1D511))
("o" (insert-char #x1D512))
("p" (insert-char #x1D513))
("q" (insert-char #x1D514))
("r" (insert-char #x1D515))
("s" (insert-char #x1D516))
("t" (insert-char #x1D517))
("u" (insert-char #x1D518))
("v" (insert-char #x1D519))
("w" (insert-char #x1D51A))
("x" (insert-char #x1D51B))
("y" (insert-char #x1D51C))
("z" (insert-char #x1D51D))
("ESC" nil "quit"))


(defhydra hydra-unicode/blackboard (:color teal :hint nil :exit t)
"Blackboard"
;; Blackboard
("A" (insert-char #x1d552))
("B" (insert-char #x1d553))
("C" (insert-char #x1d554))
("D" (insert-char #x1d555))
("E" (insert-char #x1d556))
("F" (insert-char #x1d557))
("G" (insert-char #x1d558))
("H" (insert-char #x1d559))
("I" (insert-char #x1d55a))
("J" (insert-char #x1d55b))
("K" (insert-char #x1d55c))
("L" (insert-char #x1d55d))
("M" (insert-char #x1d55e))
("N" (insert-char #x1d55f))
("O" (insert-char #x1d560))
("P" (insert-char #x1d561))
("Q" (insert-char #x1d562))
("R" (insert-char #x1d563))
("S" (insert-char #x1d564))
("T" (insert-char #x1d565))
("U" (insert-char #x1d566))
("V" (insert-char #x1d567))
("W" (insert-char #x1d568))
("X" (insert-char #x1d569))
("Y" (insert-char #x1d56a))
("Z" (insert-char #x1d56b))

("a" (insert-char #x1d538))
("b" (insert-char #x1d539)) 
("c" (insert-char #x02102))
("d" (insert-char #x1d53b))
("e" (insert-char #x1d53c))
("f" (insert-char #x1d53d))
("g" (insert-char #x1d53e))
("h" (insert-char #x0210D))
("i" (insert-char #x1d540))
("j" (insert-char #x1d541))
("k" (insert-char #x1d542))
("l" (insert-char #x1d543))
("m" (insert-char #x1d544))
("n" (insert-char #x02115))
("o" (insert-char #x1d546))
("p" (insert-char #x02119))
("q" (insert-char #x0211a))
("r" (insert-char #x0211d))
("s" (insert-char #x1d54a))
("t" (insert-char #x1d54b))
("u" (insert-char #x1d54c))
("v" (insert-char #x1d54d))
("w" (insert-char #x1d54e))
("x" (insert-char #x1d54f))
("y" (insert-char #x1d550))
("z" (insert-char #x02124))
("ESC" nil "quit"))


(defhydra hydra-unicode/script (:color teal :hint nil :exit t)
"Script"
;; Script
("A" (insert-char #x1D4EA))
("B" (insert-char #x1D4EB))
("C" (insert-char #x1D4EC))
("D" (insert-char #x1D4ED))
("E" (insert-char #x1D4EE))
("F" (insert-char #x1D4EF))
("G" (insert-char #x1D4F0))
("H" (insert-char #x1D4F1))
("I" (insert-char #x1D4F2))
("J" (insert-char #x1D4F3))
("K" (insert-char #x1D4F4))
("L" (insert-char #x1D4F5))
("M" (insert-char #x1D4F6))
("N" (insert-char #x1D4F7))
("O" (insert-char #x1D4F8)) 
("P" (insert-char #x1D4F9))
("Q" (insert-char #x1D4FA))
("R" (insert-char #x1D4FB))
("S" (insert-char #x1D4FC))
("T" (insert-char #x1D4FD))
("U" (insert-char #x1D4FE))
("V" (insert-char #x1D4FF))
("W" (insert-char #x1D500))
("X" (insert-char #x1D501))
("Y" (insert-char #x1D502))
("Z" (insert-char #x1D503))

("a" (insert-char #x1D49C))
("b" (insert-char #x0212C))
("c" (insert-char #x1D49E))
("d" (insert-char #x1D49F))
("e" (insert-char #x02130))
("f" (insert-char #x02131))
("g" (insert-char #x1D4A2))
("h" (insert-char #x0210B))
("i" (insert-char #x02110))
("j" (insert-char #x1D4A5))
("k" (insert-char #x1D4A6))
("l" (insert-char #x02112))
("m" (insert-char #x02133))
("n" (insert-char #x1D4A9))
("o" (insert-char #x1D4AA))
("p" (insert-char #x1D4AB))
("q" (insert-char #x1D4AC))
("r" (insert-char #x0211B))
("s" (insert-char #x1D4AE))
("t" (insert-char #x1D4AF))
("u" (insert-char #x1D4B0))
("v" (insert-char #x1D4B1))
("w" (insert-char #x1D4B2))
("x" (insert-char #x1D4B3))
("y" (insert-char #x1D4B4))
("z" (insert-char #x1D4B5))
("ESC" nil "quit"))

(defhydra hydra-unicode/greek (:color teal :hint nil :exit t)
"Greek"
;; Greek
("a" (insert-char #x03b1))
("b" (insert-char #x03b2))
("c" (insert-char #x03be))
("d" (insert-char #x03b4))
("e" (insert-char #x03b5))
("f" (insert-char #x03c6))
("g" (insert-char #x03b3))
("h" (insert-char #x03b8))
("i" (insert-char #x03b9))
("j" (insert-char #x03ca))
("k" (insert-char #x03ba))
("l" (insert-char #x03bb))
("m" (insert-char #x03bc))
("n" (insert-char #x03bd))
("o" (insert-char #x03bf))
("p" (insert-char #x03c0))
("q" (insert-char #x03c8))
("r" (insert-char #x03c1))
("s" (insert-char #x03c3))
("t" (insert-char #x03c4))
("u" (insert-char #x03c5))
("v" (insert-char #x03cb))
("w" (insert-char #x03c9))
("x" (insert-char #x03c7))
("y" (insert-char #x03b7))
("z" (insert-char #x03b6))

("A" (insert-char #x0391))
("B" (insert-char #x0392))
("C" (insert-char #x039e))
("D" (insert-char #x0394))
("E" (insert-char #x0395))
("F" (insert-char #x03a6))
("G" (insert-char #x0393))
("H" (insert-char #x0398))
("I" (insert-char #x0399))
("J" (insert-char #x03aa))
("K" (insert-char #x039a))
("L" (insert-char #x039b))
("M" (insert-char #x039c))
("N" (insert-char #x039d))
("O" (insert-char #x039f))
("P" (insert-char #x03a0))
("Q" (insert-char #x03a8))
("R" (insert-char #x03a1))
("S" (insert-char #x03a3))
("T" (insert-char #x03a4))
("U" (insert-char #x03a5))
("V" (insert-char #x03ab))
("W" (insert-char #x03a9))
("X" (insert-char #x03a7))
("Y" (insert-char #x0397))
("Z" (insert-char #x0396))
("ESC" nil "quit"))

(defhydra hydra-unicode (:color teal :hint nil :exit t)
"Scripts"
("f" (hydra-unicode/fraktur/body) "Fraktur")
("s" (hydra-unicode/script/body) "Script")
("b" (hydra-unicode/blackboard/body) "Blackboard")
("SPC" (hydra-unicode/greek/body) "Greek")
("ESC" nil "quit"))



(defun hydra-by-major-mode ()
(interactive)
(cl-case major-mode
(latex-mode
    (hydra-latex/body)) 
(t
    (error "%S not supported" major-mode))))


(defhydra hydra-main-menu (:color teal :hint nil :exit t)
"hydra"
("SPC" helm-M-x "M-x")
("S-SPC" helm-find-files "C-x C-f")
("M-SPC" (hydra-window-stuff/body) "Window")
("S" (hydra-spelling/body) "spell")
("m" hydra-by-major-mode "mode")
("n" neotree-toggle "neotree")
("u" (hydra-unicode/body) "unicode")
("h" (hydra-help/body) "help")
("i" ibuffer "ibuffer")
("t" (hydra-theme-menu/body) "theme")
("e" (find-file "~/.emacs") ".emacs")
("k" kill-buffer "kill")
("ESC" nil "quit"))

(define-key evil-normal-state-map " " 'hydra-main-menu/body)
(define-key evil-visual-state-map " " 'hydra-main-menu/body)
(define-key evil-emacs-state-map "C-i" 'hydra-unicode/body)
(define-key evil-emacs-state-map "C-j" 'evil-insert-digraph)

(setq
evil-digraphs-table-user
(quote
(
    ;; Brackets
    ((?< ? ) . ?\x027e8) ;; Angle brackets
    ((?> ? ) . ?\x027e9)

    ((?< ?<) . ?\x027ea) ;; Double bracket
    ((?> ?>) . ?\x027eb)

    ((?f ?[) . ?\x02308) ;; floor
    ((?f ?]) . ?\x02309)

    ((?c ?[) . ?\x0230a) ;; ciel
    ((?c ?]) . ?\x0230b)

    ((?[ ?[) . ?\x027e7) ;; valuation
    ((?] ?]) . ?\x027e8)

    ((?| ? ) . ?\x02016) ;; Norms
    ((?| ?|) . ?\x02980) 

    ;; Arrows
    ((?< ?:) . ?\x021e0) ;; dotted arrows
    ((?: ?^) . ?\x021e1)
    ((?: ?>) . ?\x021e2)
    ((?: ?_) . ?\x021e3)

    
    ;; Arrows
    ((?< ?.) . ?\x022f1) ;; dotted arrows
    ((?. ?^) . ?\x022ee)
    ((?. ?>) . ?\x022ef)
    ((?. ?_) . ?\x022f0)


    ((?. ?.) . ?\x022ef) ;; hdots
    ((?: ?:) . ?\x022ee) ;; hdots
    ((?~ ?~) . ?\x0223c) ;; sim



    ((?n ?w) . ?\x02196) ;; north east south west
    ((?n ?e) . ?\x02197)
    ((?s ?w) . ?\x02198)
    ((?s ?e) . ?\x02199)

    ((?s ?>) . ?\x0219e) ;; Surjection
    ((?s ?<) . ?\x021a0)

    ((?i ?>) . ?\x021aa) ;; Injection
    ((?i ?<) . ?\x021a9) 

    ((?m ?>) . ?\x021a6) ;; mapsto
    ((?< ?m) . ?\x021a4)

    ((?= ?=) . ?\x021d4) ;; Implications
    ((?= ?>) . ?\x021d2)
    ((?< ?=) . ?\x021d0)

    ;; ell
    ((?l ?l) .  ?\x02113) ;; \ell

    
    ;; Symbols
    ((?o ?.) .  ?\x02218) ;; Compose
    ((?~ ?=) . ?\x02245) ;; iso
    ((?: ?=) . ?\x02254) ;; :=
    ((?d ?=) . ?\x0225d) ;; defeq 
    ((?? ?=) . ?\x0225f) ;; =?= 

    ((?% ?=) . ?\x02261) ;; \equiv
    ((?% ?/) . ?\x02262) ;; \not\equiv

    
    ;; Blackboard
    ((?F ?F) . ?\x1d53d)
    ((?K ?K) . ?\x1d542)
    ((?N ?N) . ?\x02115)
    ((?Q ?Q) . ?\x0211a)
    ((?R ?R) . ?\x0211d)
    ((?Z ?Z) . ?\x02124)

    )))
