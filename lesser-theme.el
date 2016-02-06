;; lesser-theme.el --- A minimalistic color theme for Emacs
;; Revision 2
;;
;; Copyright (C) 2008-2010 Jason R. Blevins <jrblevin@sdf.org>
;;                    2015 Robin Österberg <robin@repl.se>
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;; THE SOFTWARE.

(deftheme lesser "The lesser color theme")

(let ((class '((class color) (min-colors 89)))
      (lesser-bg "#000000")
      (lesser-fg "#b3b3b3"))
  (custom-theme-set-faces
   `lesser

   ;; standard font lock faces
   `(default ((,class (:foreground ,lesser-fg :background ,lesser-bg))))
   `(cursor ((t (:background "#ffff00"))))
   `(bold ((t (:bold t))))
   `(italic ((t (:bold t))))
   `(underline ((t (:bold t))))
   `(variable-pitch ((t (nil))))

   ;; code
   `(font-lock-builtin-face ((,class (:bold t :foreground "#ffffff"))))
   `(font-lock-comment-face ((,class (:foreground "#696969"))))
   `(font-lock-comment-delimiter-face ((,class (:bold t :foreground "#696969"))))
   `(font-lock-constant-face ((,class (:foreground "#e5e5e5"))))
   `(font-lock-doc-string-face ((,class (:foreground "#e5e5e5"))))
   `(font-lock-doc-face ((,class (:foreground "#e5e5e5"))))
   `(font-lock-function-name-face ((,class (:foreground "#e5e5e5"))))
   `(font-lock-keyword-face ((,class (:bold t :foreground "#ffffff"))))
   `(font-lock-preprocessor-face ((,class (:foreground "#e5e5e5"))))
   `(font-lock-reference-face ((,class (:foreground "#e5e5e5"))))
   `(font-lock-string-face ((,class (:foreground "#b3b3b3"))))
   `(font-lock-type-face ((,class (:bold t :foreground "#ffffff"))))
   `(font-lock-variable-name-face ((,class (:foreground "#e5e5e5"))))
   `(font-lock-warning-face ((,class (:bold t :foreground "#e5786d"))))

   ;; emacs Interface
   `(fringe ((t (:background "#111111" :foreground "#444444"))))
   `(header-line ((,class (:background "#333333" :foreground "#000000"))))
   `(menu ((,class (:background "#111111" :foreground "#444444"))))
   `(minibuffer-prompt ((,class (:foreground "#ffffff"))))

   ;; modeline
   `(mode-line ((,class (:background "#404040" :foreground "#ffffff"))))
   `(mode-line-inactive ((,class (:background "#262626" :foreground "#d3d3d3"))))
   `(modeline-buffer-id ((,class (:background "#262626" :foreground "#d3d3d3"))))
   `(modeline-mousable ((,class (:background "#000000" :foreground "#d3d3d3"))))
   `(modeline-mousable-minor-mode ((,class (:background "#000000" :foreground "#ffffff"))))

   `(region ((,class (:background "#d3d3d3" :foreground "#000000"))))
   `(secondary-selection ((,class (:background "Aquamarine" :foreground "#6a5acd"))))
   `(tool-bar ((,class (:background "#111111" :foreground "#777777"))))
   `(tooltip ((,class (:background "#333333" :foreground "#777777"))))
   `(widget-button-face ((,class (:bold t :foreground "#888888"))))
   `(widget-field-face ((,class (:bold t :foreground "#999999"))))

   ;; search
   `(isearch ((,class (:foreground "#000000" :background "#65a7e2"))))
   `(isearch-lazy-highlight-face ((,class (:foreground "#65a7e2"))))

   ;; parenthesis matching
   `(show-paren-match-face ((,class (:foreground "#000000" :background "#d3d3d3"))))
   `(show-paren-mismatch-face ((,class (:foreground "#000000" :background "#ff0000"))))

   ;; line highlighting
   `(highlight ((,class (:background "#1f1f1f" :foreground nil))))
   `(highlight-current-line-face ((,class (:background "#1f1f1f" :foreground nil))))
   `(hl-line ((,class (:background "#1f1f1f" :foreground nil))))

   ;; buttons
   `(button ((,class (:bold t))))
   `(custom-button-face ((,class (:bold t :foreground "#999999"))))

   ;; calendar
   `(holiday-face ((,class (:background "#000000" :foreground "#777777"))))

   ;; whitespace
   `(whitespace-trailing ((,class (:background "brightblack" :foreground "tomato" :weight bold))))

   ;; # external packages

   ;; auto-complete-mode
   `(ac-selection-face ((t (:background "#D2F298" :foreground "#444444"))))
   ;; `(ac-selection-face ((t (:background "#5FD7FF" :foreground "#FFFAFA"))))
   `(ac-candidate-face ((t (:background "#303030" :foreground "#FFFAFA"))))

   ;; company-mode
   `(company-preview ((t (:background "#303030" :foreground "#FFFAFA"))))
   `(company-preview-common ((t (:inherit company-preview :foreground "#5FD7FF"))))
   `(company-scrollbar-bg ((t (:inherit company-tooltip :background "#303030"))))
   `(company-scrollbar-fg ((t (:background "#8B8878"))))
   `(company-template-field ((t (:background "#303030" :foreground "#5FD7FF"))))
   `(company-tooltip ((t (:background "#303030" :foreground "#FFFAFA"))))
   `(company-tooltip-annotation ((t (:background "#303030" :foreground "#87D700"))))
   `(company-tooltip-common ((t (:inherit company-tooltip :foreground "#5FD7FF"))))
   `(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :foreground "#1B1E1C"))))
   `(company-tooltip-selection ((t (:inherit company-tooltip :background "#5FD7FF"))))

   ;; flycheck
   `(flycheck-error ((t (:background "#FC5C94" :foreground "#A20C41"))))
   `(flycheck-fringe-error ((t (:background "#FC5C94" :foreground "#A20C41"))))
   `(flycheck-fringe-info ((t (:background "#8DE6F7" :foreground "#21889B"))))
   `(flycheck-fringe-warning ((t (:background "#F3EA98" :foreground "#968B26"))))
   `(flycheck-info ((t (:background "#8DE6F7" :foreground "#21889B" :underline t))))
   `(flycheck-warning ((t (:background "#F3EA98" :foreground "#968B26"))))

   ;; git-gutter
   `(git-gutter+-added ((t (:foreground "#87D700" :weight bold))))
   `(git-gutter+-deleted ((t (:foreground "#FC5C94" :weight bold))))
   `(git-gutter+-modified ((t (:foreground "#F3EA98" :weight bold))))

   ;; helm
   `(helm-M-x-key ((t (:foreground "white" :underline t))))
   `(helm-buffer-file ((t nil)))
   `(helm-buffer-process ((t (:foreground "brightblack"))))
   `(helm-candidate-number ((t (:background "#65a7e2" :foreground "black"))))
   `(helm-ff-directory ((t (:background "color-235" :foreground "brightblack"))))
   `(helm-ff-file ((t nil)))
   `(helm-header ((t (:background "color-236" :foreground "white"))))
   `(helm-match ((t (:foreground "color-250"))))
   `(helm-selection ((t (:background "#65a7e2" :foreground "black" :distant-foreground "black"))))
   `(helm-separator ((t (:foreground "#65a7e2"))))
   `(helm-source-header ((t (:background "color-238" :foreground "white" :weight bold :height 0.1 :family "Sans Serif"))))

   ;; eyebrowse
   `(eyebrowse-mode-line-active ((t (:foreground "#00bfff"))))

   ;; fancy-battery
   `(fancy-battery-charging ((t nil)))
   `(fancy-battery-critical ((t (:foreground "red" :weight bold))))
   `(fancy-battery-discharging ((t nil)))

   ;; highlight-80+
   `(highlight-80+ ((t (:background "red"))))

   ;; hydra
   `(hydra-face-red ((t (:foreground "white" :weight bold))))

   ;; idle-highlight
   `(idle-highlight ((t (:background "slateblue" :foreground "white"))))

   ;; popup
   `(popup-tip-face ((t (:background "#A20C41" :foreground "#FFFFFF"))))

   ;; whitespace
   `(whitespace-trailing ((t (:background "brightblack" :foreground "tomato" :weight bold))))

   ;; yascroll
   `(yascroll:thumb-text-area ((t (:background "slateblue"))))
   `(yascroll:thumb-fringe ((t (:background "slateblue" :foreground "slateblue"))))

   ;; ocaml
   `(tuareg-font-lock-error-face ((t (:background "#A20C41" :foreground "#FFFFFF" :weight bold))))
   `(tuareg-font-lock-interactive-error-face ((t (:foreground "#FC5C94"))))
   `(tuareg-font-lock-operator-face ((t (:foreground "#65a7e2"))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'lesser)
