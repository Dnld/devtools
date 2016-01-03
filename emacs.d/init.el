;; djs init.el
;; updated January 2, 2015
;; https://github.com/Dnld/devtools/

;; environment setup
(menu-bar-mode -1)
(setq linum-format "%d  ")
(cua-mode t)
(global-set-key "\t" (lambda () (interactive) (insert-char 32 2)))
(electric-indent-mode 0)

;; includes melpa package manager
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0f50d3a37596e601397f9b20ae5bb9983984aa12bd453e1367264203cff9f3ce" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "nil")))))
(load-theme 'charcoal)

