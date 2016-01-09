;; djs init.el
;; updated January 2, 2015
;; https://github.com/Dnld/devtools/

;; environment setup
(menu-bar-mode -1)
(setq linum-format "%d  ")
(cua-mode t)
(global-set-key "\t" (lambda () (interactive) (insert-char 32 2)))
(electric-indent-mode 0)
(setq truncate-partial-width-windows t)
(setq column-number-mode t)
(display-time)

;; keybindings
(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))
;; (global-set-key "\C-w" 'comment-or-uncomment-region-or-line)
(global-set-key "\C-w" 'comment-or-uncomment-region-or-line)

;; includes melpa package manager
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; packages
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#181818" "#ec5f67" "#99c794" "#fac863" "#6699cc" "#c594c5" "#6699cc" "#cfd2d1"])
 '(ansi-term-color-vector
   [unspecified "#181818" "#ec5f67" "#99c794" "#fac863" "#6699cc" "#c594c5" "#6699cc" "#cfd2d1"])
 '(custom-safe-themes
   (quote
    ("71ea9d5cfb6c03c80c27f27a7d15aab96fb4cc4509c1c2e021a6bafc890a2acf" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "nil")))))
(load-theme 'base16-default-dark)

