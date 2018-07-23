
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(mumamo-submode-indent-offset 4)
 '(package-archives
   (quote
    (("marmalade" . "http://marmalade-repo.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(package-selected-packages (quote (python adoc-mode)))
 '(show-paren-mode t)
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60)))
 '(tab-width 4)
 '(transient-mark-mode t))

(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (let* ((my-lisp-dir "/home/ihorvath/.emacs.d/lisp/")
      (default-directory my-lisp-dir))
      (setq load-path (cons my-lisp-dir load-path))
      (normal-top-level-add-subdirs-to-load-path)))

(tool-bar-mode -1)
;; (set-default-font "-Misc-Fixed-Medium-R-SemiCondensed--13-120-75-75-C-60-ISO8859-1")
(set-default-font "Terminus 14")
(setq-default indent-tabs-mode nil)
(setq c-default-style "linux"
      c-basic-offset 4)
(setq tab-width 4)
(setq-default visible-bell t)
(server-start)

;;(load "php-mode")
(require 'color-theme)
(color-theme-initialize)
(color-theme-calm-forest)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) nil))))

;;(load "nxhtml/autostart")
;;(require 'flymake)
;;(add-hook 'php-mode-hook (lambda() (flymake-mode 1)))
;;(define-key php-mode-map '[M-S-up] 'flymake-goto-prev-error)
;;(define-key php-mode-map '[M-S-down] 'flymake-goto-next-error)

;;(require 'sr-speedbar)
;;(global-set-key (kbd "s-s") 'sr-speedbar-toggle)

(require 'web-mode)
(require 'yaml-mode)
(require 'highlight-indentation)

(set-face-background 'highlight-indentation-face "#e3e3d3")
(set-face-background 'highlight-indentation-current-column-face "#c3b3b3")

(add-to-list 'auto-mode-alist '("\\.yml\\'" . conf-mode))
