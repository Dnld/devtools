;; djs init.el
;; updated January 2, 2015
;; https://github.com/Dnld/devtools/

;; environment setup
(menu-bar-mode -1)
(setq linum-format "%d  ")
(cua-mode t)
(setq inhibit-startup-message t)
(global-set-key "\t" (lambda () (interactive) (insert-char 32 2)))
(setq-default tab-width 2)
(electric-indent-mode 0)
(setq truncate-partial-width-windows t)
(setq column-number-mode t)
(display-time)
(show-paren-mode t)

;; keybindings
(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))
(global-set-key "\C-w" 'comment-or-uncomment-region-or-line)
;; Window manipulation
(global-set-key (kbd "M-3") 'split-window-horizontally) ; was digit-argument
(global-set-key (kbd "M-2") 'split-window-vertically) ; was digit-argument
(global-set-key (kbd "M-1") 'delete-other-windows) ; was digit-argument
(global-set-key (kbd "M-0") 'delete-window) ; was digit-argument
(global-set-key (kbd "M-o") 'other-window) ; was facemenu-keymap
(global-set-key (kbd "M-4") 'enlarge-window-horizontally)
(global-set-key (kbd "M-5") 'shrink-window-horizontally)
(global-set-key (kbd "M-6") 'enlarge-window)
(global-set-key (kbd "M-7") 'shrink-window)
(global-set-key (kbd "M-b") 'balance-windows)
(global-set-key (kbd "M-l") 'linum-mode)
;; tabbing lines
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
		("b6db49cec08652adf1ff2341ce32c7303be313b0de38c621676122f255ee46db" "f641bdb1b534a06baa5e05ffdb5039fb265fde2764fbfd9a90b0d23b75f3936b" "4b5516649592f1ac1d4c521d20c5d32c1c55a71cfb2ff8f0d15924b69944b152" "71ea9d5cfb6c03c80c27f27a7d15aab96fb4cc4509c1c2e021a6bafc890a2acf" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "nil")))))
(load-theme 'base16-default-dark)

(require 'helm)
(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)

(helm-mode 1)
