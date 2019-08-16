;;; gruvbox.el --- Gruvbox themes.

;; Copyright (C) 2016 by xd1le

;; Author: xd1le
;; Maintainer: xd1le
;; Version: 1.0.0
;; Keywords: gruvbox, pastel, retro, groove, theme
;; URL: http://github.com/vyp/gruvbox-emacs
;; Package-Requires: ((emacs "24"))

;; This file is NOT part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free Software
;; Foundation, either version 3 of the License, or (at your option) any later
;; version.
;;
;; This program is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
;; FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
;; details.
;;
;; You should have received a copy of the GNU General Public License along with
;; this program as a file named `copying` in the root of this repository. If
;; not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Gruvbox is a retro groove colour scheme.

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later."))

(defgroup gruvbox nil
  "Gruvbox theme options."
  :group 'faces)

(defcustom gruvbox-light-contrast "medium"
  "Level of contrast for light variant of theme.
Values can be \"soft\",\"medium\" or \"hard\"."
  :type 'string
  :group 'gruvbox)

(defcustom gruvbox-dark-contrast "medium"
  "Level of contrast for dark variant of theme.
Values can be \"soft\", \"medium\" or \"hard\"."
  :type 'string
  :group 'gruvbox)

(defun create-gruvbox-theme (variant theme-name)
  "Create a VARIANT of the theme named THEME-NAME."

  (let ((gruvbox-dark-0-hard (if (display-graphic-p) "#1d2021" "color-234"))
        ; (gruvbox-dark-0      (if (display-graphic-p) "#282828" "color-235"))
        (gruvbox-dark-0      (if (display-graphic-p) "#0f0d0e" "color-235"))
        (gruvbox-dark-0-soft (if (display-graphic-p) "#32302f" "color-236"))
        (gruvbox-dark-1      (if (display-graphic-p) "#3c3836" "color-237"))
        (gruvbox-dark-2      (if (display-graphic-p) "#504945" "color-239"))
        (gruvbox-dark-3      (if (display-graphic-p) "#665c54" "color-241"))
        (gruvbox-dark-4      (if (display-graphic-p) "#7c6f64" "color-243"))

        ;; Used to be called 'gruvbox-medium'.
        (gruvbox-gray (if (display-graphic-p) "#928374" "color-245"))

        (gruvbox-light-0-hard (if (display-graphic-p) "#f9f5f3" "color-230"))
        (gruvbox-light-0      (if (display-graphic-p) "#fbf1f3" "color-229"))
        (gruvbox-light-0-soft (if (display-graphic-p) "#f2e5bc" "color-228"))
        ; (gruvbox-light-1      (if (display-graphic-p) "#ebdbb2" "color-223"))
        (gruvbox-light-1      (if (display-graphic-p) "#fbf1f3" "color-223"))
        (gruvbox-light-2      (if (display-graphic-p) "#d5c4a1" "color-250"))
        (gruvbox-light-3      (if (display-graphic-p) "#bdae93" "color-248"))
        (gruvbox-light-4      (if (display-graphic-p) "#a89984" "color-246"))

        (gruvbox-bright-red    (if (display-graphic-p) "#fb4934" "color-167"))
        (gruvbox-bright-green  (if (display-graphic-p) "#b8bb26" "color-142"))
        (gruvbox-bright-yellow (if (display-graphic-p) "#fabd2f" "color-214"))
        (gruvbox-bright-blue   (if (display-graphic-p) "#83a598" "color-109"))
        (gruvbox-bright-purple (if (display-graphic-p) "#d3869b" "color-175"))
        (gruvbox-bright-aqua   (if (display-graphic-p) "#8ec07c" "color-108"))
        (gruvbox-bright-orange (if (display-graphic-p) "#fe8019" "color-208"))

        ;; Not currently used but may be of use at some point...
        (gruvbox-neutral-red    (if (display-graphic-p) "#cc241d" "color-124"))
        (gruvbox-neutral-green  (if (display-graphic-p) "#98971a" "color-106"))
        (gruvbox-neutral-yellow (if (display-graphic-p) "#d79921" "color-172"))
        (gruvbox-neutral-blue   (if (display-graphic-p) "#458588" "color-66"))
        (gruvbox-neutral-purple (if (display-graphic-p) "#b16286" "color-132"))
        (gruvbox-neutral-aqua   (if (display-graphic-p) "#689d6a" "color-72"))
        (gruvbox-neutral-orange (if (display-graphic-p) "#d65d0e" "color-166"))

        (gruvbox-faded-red     (if (display-graphic-p) "#9d0006" "color-88"))
        (gruvbox-faded-green   (if (display-graphic-p) "#79740e" "color-100"))
        (gruvbox-faded-yellow  (if (display-graphic-p) "#b57614" "color-136"))
        (gruvbox-faded-blue    (if (display-graphic-p) "#076678" "color-24"))
        (gruvbox-faded-purple  (if (display-graphic-p) "#8f3f71" "color-96"))
        (gruvbox-faded-aqua    (if (display-graphic-p) "#427b58" "color-66"))
        (gruvbox-faded-orange  (if (display-graphic-p) "#af3a03" "color-130"))

        (gruvbox-red)     (gruvbox-dark0) (gruvbox-light0)
        (gruvbox-green)   (gruvbox-dark1) (gruvbox-light1)
        (gruvbox-yellow)  (gruvbox-dark2) (gruvbox-light2)
        (gruvbox-blue)    (gruvbox-dark3) (gruvbox-light3)
        (gruvbox-purple)  (gruvbox-dark4) (gruvbox-light4)
        (gruvbox-aqua)
        (gruvbox-orange)

        ;; TODO: Remove these.
        (gruvbox-delimiter-one   (if (display-graphic-p) "#458588" "color-30"))
        (gruvbox-delimiter-two   (if (display-graphic-p) "#b16286" "color-168"))
        (gruvbox-delimiter-three (if (display-graphic-p) "#8ec07c" "color-108"))
        (gruvbox-delimiter-four  (if (display-graphic-p) "#d65d0e" "color-166"))
        (gruvbox-white           (if (display-graphic-p) "#FFFFFF" "white"))
        (gruvbox-black           (if (display-graphic-p) "#000000" "black"))
        (gruvbox-sienna          (if (display-graphic-p) "#DD6F48" "sienna"))
        (gruvbox-darkslategray4  (if (display-graphic-p) "#528B8B" "DarkSlateGray4"))
        (gruvbox-lightblue4      (if (display-graphic-p) "#66999D" "LightBlue4"))
        (gruvbox-burlywood4      (if (display-graphic-p) "#BBAA97" "burlywood4"))
        (gruvbox-aquamarine4     (if (display-graphic-p) "#83A598" "aquamarine4"))
        (gruvbox-turquoise4      (if (display-graphic-p) "#61ACBB" "turquoise4")))

    (if (eq variant 'light)
        (progn
          (setq gruvbox-dark0 gruvbox-light-0
                gruvbox-dark1 gruvbox-light-1
                gruvbox-dark2 gruvbox-light-2
                gruvbox-dark3 gruvbox-light-3
                gruvbox-dark4 gruvbox-light-4

                gruvbox-light0 gruvbox-dark-0
                gruvbox-light1 gruvbox-dark-1
                gruvbox-light2 gruvbox-dark-2
                gruvbox-light3 gruvbox-dark-3
                gruvbox-light4 gruvbox-dark-4

                gruvbox-red    gruvbox-faded-red
                gruvbox-green  gruvbox-faded-green
                gruvbox-yellow gruvbox-faded-yellow
                gruvbox-blue   gruvbox-faded-blue
                gruvbox-purple gruvbox-faded-purple
                gruvbox-aqua   gruvbox-faded-aqua
                gruvbox-orange gruvbox-faded-orange)

          (if (not (equal gruvbox-light-contrast "medium"))
              (setq gruvbox-dark0
                    (if (equal gruvbox-light-contrast "soft")
                        gruvbox-light-0-soft
                      gruvbox-light-0-hard))))

      (setq gruvbox-dark0 gruvbox-dark-0
            gruvbox-dark1 gruvbox-dark-1
            gruvbox-dark2 gruvbox-dark-2
            gruvbox-dark3 gruvbox-dark-3
            gruvbox-dark4 gruvbox-dark-4

            gruvbox-light0 gruvbox-light-0
            gruvbox-light1 gruvbox-light-1
            gruvbox-light2 gruvbox-light-2
            gruvbox-light3 gruvbox-light-3
            gruvbox-light4 gruvbox-light-4

            gruvbox-red    gruvbox-bright-red
            gruvbox-green  gruvbox-bright-green
            gruvbox-yellow gruvbox-bright-yellow
            gruvbox-blue   gruvbox-bright-blue
            gruvbox-purple gruvbox-bright-purple
            gruvbox-aqua   gruvbox-bright-aqua
            gruvbox-orange gruvbox-bright-orange)

      (if (not (equal gruvbox-dark-contrast "medium"))
          (setq gruvbox-dark0
                (if (equal gruvbox-dark-contrast "soft")
                    gruvbox-dark-0-soft
                  gruvbox-dark-0-hard))))

    (custom-theme-set-faces
     theme-name

     ;;; UI.
     `(cursor                      ((t (:background ,gruvbox-gray))))
     `(default                     ((t ())))
     `(default                     ((t (:background, gruvbox-dark0
     						     :foreground ,gruvbox-light1))))

     `(fringe                      ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-gray))))
     `(hl-line                     ((t (:background ,gruvbox-dark1))))
     ;; Bright red (for the dark variant) does not look so good with the cursor colour.
     `(isearch                     ((t (:background ,gruvbox-faded-red :foreground ,gruvbox-light-1))))
     `(isearch-lazy-highlight-face ((t (:background ,gruvbox-yellow :foreground ,gruvbox-dark1))))
     `(linum                       ((t (:foreground ,gruvbox-dark4))))
     `(minibuffer-prompt           ((t (:background ,gruvbox-dark0 :foreground ,gruvbox-green))))
     `(mode-line                   ((t (:background ,gruvbox-dark4 :foreground ,gruvbox-dark0 :box nil))))
     `(mode-line-inactive          ((t (:background ,gruvbox-dark2 :foreground ,gruvbox-light4 :box nil))))
     `(region                      ((t (:background ,gruvbox-dark2))))
     `(secondary-selection         ((t (:background ,gruvbox-dark1))))
     `(show-paren-match            ((t (:background ,gruvbox-dark2))))
     `(trailing-whitespace         ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-red))))
     `(vertical-border             ((t (:background ,gruvbox-dark0 :foreground ,gruvbox-dark0))))

     ;;; Built-in syntax.
     `(font-lock-builtin-face       ((t (:foreground ,gruvbox-orange))))
     `(font-lock-constant-face      ((t (:foreground ,gruvbox-purple))))
     `(font-lock-comment-face       ((t (:foreground ,gruvbox-gray))))
     `(font-lock-doc-face           ((t (:foreground ,gruvbox-light4))))
     `(font-lock-function-name-face ((t (:foreground ,gruvbox-aqua))))
     `(font-lock-keyword-face       ((t (:foreground ,gruvbox-red))))
     `(font-lock-string-face        ((t (:foreground ,gruvbox-green))))
     `(font-lock-type-face          ((t (:foreground ,gruvbox-yellow))))
     `(font-lock-variable-name-face ((t (:foreground ,gruvbox-blue))))
     `(font-lock-warning-face       ((t (:foreground ,gruvbox-red :bold t))))

     ;;; diff
     `(diff-changed           ((t (:background nil :foreground ,gruvbox-light1))))
     `(diff-added             ((t (:background nil :foreground ,gruvbox-green))))
     `(diff-removed           ((t (:background nil :foreground ,gruvbox-red))))
     `(diff-indicator-changed ((t (:inherit diff-changed))))
     `(diff-indicator-added   ((t (:inherit diff-added))))
     `(diff-indicator-removed ((t (:inherit diff-removed))))

     ;;; js2-mode
     `(js2-warning                  ((t (:underline (:color ,gruvbox-yellow :style wave)))))
     `(js2-error                    ((t (:underline (:color ,gruvbox-red :style wave)))))
     `(js2-external-variable        ((t (:underline (:color ,gruvbox-aqua :style wave)))))
     `(js2-jsdoc-tag                ((t (:background nil :foreground ,gruvbox-gray))))
     `(js2-jsdoc-type               ((t (:background nil :foreground ,gruvbox-light4))))
     `(js2-jsdoc-value              ((t (:background nil :foreground ,gruvbox-light3))))
     `(js2-function-param           ((t (:background nil :foreground ,gruvbox-aqua))))
     `(js2-function-call            ((t (:background nil :foreground ,gruvbox-blue))))
     `(js2-instance-member          ((t (:background nil :foreground ,gruvbox-orange))))
     `(js2-private-member           ((t (:background nil :foreground ,gruvbox-yellow))))
     `(js2-private-function-call    ((t (:background nil :foreground ,gruvbox-aqua))))
     `(js2-jsdoc-html-tag-name      ((t (:background nil :foreground ,gruvbox-light4))))
     `(js2-jsdoc-html-tag-delimiter ((t (:background nil :foreground ,gruvbox-light3))))

     ;;; sh
     ;; TODO: sh-heredoc.
     `(sh-quoted-exec ((t (:foreground ,gruvbox-aqua))))

     ;;; ag
     `(ag-hit-face   ((t (:foreground ,gruvbox-blue))))
     `(ag-match-face ((t (:foreground ,gruvbox-red))))

     ;;; company-mode
     `(company-scrollbar-bg             ((t (:background ,gruvbox-dark1))))
     `(company-scrollbar-fg             ((t (:background ,gruvbox-dark0))))
     `(company-tooltip                  ((t (:background ,gruvbox-dark0))))
     `(company-tooltip-annotation       ((t (:foreground ,gruvbox-green))))
     `(company-tooltip-selection        ((t (:foreground ,gruvbox-purple))))
     `(company-tooltip-common           ((t (:foreground ,gruvbox-blue :underline t))))
     `(company-tooltip-common-selection ((t (:foreground ,gruvbox-blue :underline t))))
     `(company-preview-common           ((t (:foreground ,gruvbox-purple))))

     ;;; evil-quick-scope-mode
     `(evil-qs-forward-primary    ((t (:foreground ,gruvbox-green))))
     `(evil-qs-forward-secondary  ((t (:foreground ,gruvbox-blue))))
     `(evil-qs-backward-primary   ((t (:foreground ,gruvbox-green))))
     `(evil-qs-backward-secondary ((t (:foreground ,gruvbox-blue))))

     ;;; helm
     `(helm-M-x-key              ((t (:foreground ,gruvbox-orange))))
     `(helm-action               ((t (:foreground ,gruvbox-white :underline t))))
     `(helm-bookmark-addressbook ((t (:foreground ,gruvbox-red))))
     `(helm-bookmark-directory   ((t (:foreground ,gruvbox-purple))))
     `(helm-bookmark-file        ((t (:foreground ,gruvbox-blue))))
     `(helm-bookmark-gnus        ((t (:foreground ,gruvbox-purple))))
     `(helm-bookmark-info        ((t (:foreground ,gruvbox-turquoise4))))
     `(helm-bookmark-man         ((t (:foreground ,gruvbox-sienna))))
     `(helm-bookmark-w3m         ((t (:foreground ,gruvbox-yellow))))
     `(helm-buffer-directory     ((t (:foreground ,gruvbox-white :background ,gruvbox-blue))))
     `(helm-buffer-not-saved     ((t (:foreground ,gruvbox-red))))
     `(helm-buffer-process       ((t (:foreground ,gruvbox-burlywood4))))
     `(helm-buffer-saved-out     ((t (:foreground ,gruvbox-red))))
     `(helm-buffer-size          ((t (:foreground ,gruvbox-purple))))
     `(helm-candidate-number     ((t (:foreground ,gruvbox-green))))
     `(helm-ff-directory         ((t (:foreground ,gruvbox-purple))))
     `(helm-ff-executable        ((t (:foreground ,gruvbox-turquoise4 ))))
     `(helm-ff-file              ((t (:foreground ,gruvbox-sienna))))
     `(helm-ff-invalid-symlink   ((t (:foreground ,gruvbox-white :background ,gruvbox-red))))
     `(helm-ff-prefix            ((t (:foreground ,gruvbox-black :background ,gruvbox-yellow))))
     `(helm-ff-symlink           ((t (:foreground ,gruvbox-orange))))
     `(helm-grep-cmd-line        ((t (:foreground ,gruvbox-green))))
     `(helm-grep-file            ((t (:foreground ,gruvbox-purple))))
     `(helm-grep-finish          ((t (:foreground ,gruvbox-turquoise4))))
     `(helm-grep-lineno          ((t (:foreground ,gruvbox-orange))))
     `(helm-grep-match           ((t (:foreground ,gruvbox-yellow))))
     `(helm-grep-running         ((t (:foreground ,gruvbox-red))))
     `(helm-header               ((t (:foreground ,gruvbox-aquamarine4))))
     `(helm-helper               ((t (:foreground ,gruvbox-aquamarine4))))
     `(helm-history-deleted      ((t (:foreground ,gruvbox-black :background ,gruvbox-red))))
     `(helm-history-remote       ((t (:foreground ,gruvbox-red))))
     `(helm-lisp-completion-info ((t (:foreground ,gruvbox-orange))))
     `(helm-lisp-show-completion ((t (:foreground ,gruvbox-red))))
     `(helm-locate-finish        ((t (:foreground ,gruvbox-white :background ,gruvbox-aquamarine4))))
     `(helm-match                ((t (:foreground ,gruvbox-orange))))
     `(helm-moccur-buffer        ((t (:foreground ,gruvbox-aqua :underline t))))
     `(helm-prefarg              ((t (:foreground ,gruvbox-turquoise4))))
     `(helm-selection            ((t (:foreground ,gruvbox-white :background ,gruvbox-dark2))))
     `(helm-selection-line       ((t (:foreground ,gruvbox-white :background ,gruvbox-dark2))))
     `(helm-separator            ((t (:foreground ,gruvbox-red))))
     `(helm-source-header        ((t (:foreground ,gruvbox-light2))))
     `(helm-visible-mark         ((t (:foreground ,gruvbox-black :background ,gruvbox-light3))))

     ;;; highlight indentation mode
     `(highlight-indentation-current-column-face ((t (:background ,gruvbox-dark2))))
     `(highlight-indentation-face                ((t (:background ,gruvbox-dark1))))

     ;;; linum-relative
     `(linum-relative-current-face ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-light4))))

     ;;; popup-tip
     `(popup-tip-face ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-yellow))))

     ;;; rainbow-delimiters
     `(rainbow-delimiters-depth-1-face   ((t (:foreground ,gruvbox-delimiter-one))))
     `(rainbow-delimiters-depth-2-face   ((t (:foreground ,gruvbox-delimiter-two))))
     `(rainbow-delimiters-depth-3-face   ((t (:foreground ,gruvbox-delimiter-three))))
     `(rainbow-delimiters-depth-4-face   ((t (:foreground ,gruvbox-delimiter-four))))
     `(rainbow-delimiters-depth-5-face   ((t (:foreground ,gruvbox-delimiter-one))))
     `(rainbow-delimiters-depth-6-face   ((t (:foreground ,gruvbox-delimiter-two))))
     `(rainbow-delimiters-depth-7-face   ((t (:foreground ,gruvbox-delimiter-three))))
     `(rainbow-delimiters-depth-8-face   ((t (:foreground ,gruvbox-delimiter-four))))
     `(rainbow-delimiters-depth-9-face   ((t (:foreground ,gruvbox-delimiter-one))))
     `(rainbow-delimiters-unmatched-face ((t (:foreground ,gruvbox-light1 :background nil))))
     ;; TODO: Remove these. (Why do these even exist in the first place?)
     ;; Also, what about `rainbow-delimiters-mismatched-face`?
     `(rainbow-delimiters-depth-10-face  ((t (:foreground ,gruvbox-delimiter-two))))
     `(rainbow-delimiters-depth-11-face  ((t (:foreground ,gruvbox-delimiter-three))))
     `(rainbow-delimiters-depth-12-face  ((t (:foreground ,gruvbox-delimiter-four))))

     ;;; smartparens
     `(sp-pair-overlay-face       ((t (:background ,gruvbox-dark2))))
     ;; `(sp-wrap-overlay-face      ((t (:inherit sp-wrap-overlay-face))))
     ;; `(sp-wrap-tag-overlay-face  ((t (:inherit sp-wrap-overlay-face))))
     `(sp-show-pair-match-face    ((t (:background ,gruvbox-dark2))))
     `(sp-show-pair-mismatch-face ((t (:background ,gruvbox-red))))

     ;;; whitespace-mode
     `(whitespace-empty            ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-red))))
     `(whitespace-hspace           ((t (:background ,gruvbox-dark0 :foreground ,gruvbox-dark4))))
     `(whitespace-indentation      ((t (:background ,gruvbox-dark0 :foreground ,gruvbox-dark4))))
     `(whitespace-line             ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-red))))
     `(whitespace-newline          ((t (:background ,gruvbox-dark0 :foreground ,gruvbox-dark4))))
     `(whitespace-space            ((t (:background ,gruvbox-dark0 :foreground ,gruvbox-dark4))))
     `(whitespace-space-after-tab  ((t (:background ,gruvbox-dark0 :foreground ,gruvbox-dark4))))
     `(whitespace-space-before-tab ((t (:background ,gruvbox-dark0 :foreground ,gruvbox-dark4))))
     `(whitespace-tab              ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-dark4))))
     `(whitespace-trailing         ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-red))))

     ;;; elscreen
     `(elscreen-tab-background-face     ((t (:box nil :background ,gruvbox-dark0))))
     `(elscreen-tab-control-face        ((t (:box nil :background ,gruvbox-dark2 :foreground ,gruvbox-red :underline nil))))
     `(elscreen-tab-current-screen-face ((t (:box nil :background ,gruvbox-dark4 :foreground ,gruvbox-dark0))))
     `(elscreen-tab-other-screen-face   ((t (:box nil :background ,gruvbox-dark2 :foreground ,gruvbox-light4 :underline nil))))


     ;; auctex
     `(font-latex-warning-face              ((t (:foreground nil :inherit font-lock-warning-face))))
     `(font-latex-sectioning-0-face         ((t (:inherit font-latex-sectioning-1-face :height 1.1))))
     `(font-latex-sectioning-1-face         ((t (:inherit font-latex-sectioning-2-face :height 1.1))))
     `(font-latex-sectioning-2-face         ((t (:inherit font-latex-sectioning-3-face :height 1.1))))
     `(font-latex-sectioning-3-face         ((t (:inherit font-latex-sectioning-4-face :height 1.1))))
     `(font-latex-sectioning-4-face         ((t (:inherit font-latex-sectioning-5-face :height 1.1))))
     `(font-latex-sectioning-5-face         ((t (:foreground ,gruvbox-blue, :weight bold ))))
     `(font-latex-sedate-face               ((t (:foreground ,gruvbox-purple))))
     `(font-latex-italic-face               ((t (:foreground ,gruvbox-aqua :slant italic))))
     `(font-latex-bold-face                 ((t (:foreground ,gruvbox-neutral-aqua, :inherit bold))))
     `(font-latex-string-face               ((t (:inherit ,font-lock-string-face))))
     `(font-latex-math-face                 ((t (:foreground ,gruvbox-blue))))
     `(font-latex-doctex-documentation-face ((t (:background unspecified))))
     ; `(font-latex-doctex-preprocessor-face  ((t (:inherit (font-latex-doctex-documentation-face font-lock-builtin-face font-lock-preprocessor-face)))))
     `(font-latex-slide-title-face          ((t (:inherit font-lock-type-face :weight bold :height 1.2))))
     `(font-latex-subscript-face            ((t (:height 0.8))))
     `(font-latex-superscript-face          ((t (:height 0.8))))



     ;;; term
     `(term-color-black      ((t (:foreground ,gruvbox-dark1))))
     `(term-color-blue       ((t (:foreground ,gruvbox-blue))))
     `(term-color-cyan       ((t (:foreground ,gruvbox-aqua))))
     `(term-color-green      ((t (:foreground ,gruvbox-green))))
     `(term-color-magenta    ((t (:foreground ,gruvbox-purple))))
     `(term-color-red        ((t (:foreground ,gruvbox-red))))
     `(term-color-white      ((t (:foreground ,gruvbox-light1))))
     `(term-color-yellow     ((t (:foreground ,gruvbox-yellow))))
     `(term-default-fg-color ((t (:foreground ,gruvbox-light1))))
     `(term-default-bg-color ((t (:background ,gruvbox-dark0)))))

    (custom-theme-set-variables
     theme-name

     ;; TODO: Figure out the purpose of this, or remove it.
     `(ansi-color-names-vector [,gruvbox-dark1
                                ,gruvbox-red    ,gruvbox-green
                                ,gruvbox-yellow ,gruvbox-blue
                                ,gruvbox-purple ,gruvbox-aqua
                                ,gruvbox-light1])

     ;;; Fill column indicator.
     `(fci-rule-color ,gruvbox-dark1))))




;;;###autoload
(when (and load-file-name (boundp 'custom-theme-load-path))
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'gruvbox)

;;; gruvbox.el ends here.
