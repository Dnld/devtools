(menu-bar-mode -1)
(setq linum-format "%d  ")
(cua-mode t)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-term-color-vector
   [unspecified "#1B2B34" "#EC5f67" "#99C794" "#FAC863" "#6699CC" "#C594C5" "#6699CC" "#C0C5CE"])
 '(custom-safe-themes
   (quote
    ("eed17a7cad73b6602db6ba710ab42dfaf474c421ab332f99b50ca5d8cf44fe04" "4d76cbf23723e132f7265f5d9d51e88ff857822d57f18524da4770be0d07cc4d" "e4f02f11679b82929134cd09706a774debd46ee05ef1b934c3b5a658bc85b7f0" "47cca849b0f215fae9e18ca663214ed239fcc3ae786057e31b06a8b716ee1b27" "fb065fb8a56173bcbe1f402c56a191852ddbaaeec67efe2743e07d5b5a0ea8d0" "cdcfafdb610473c508c139553b8929c0be0baa82fdf7bdacd67102673973b44c" "c248b44942d9df909c3472383f1693700e087e8f404628a3432e5d97286159b0" "d6edd6f8b9146d9c68cd10df835e57ff32c0a708e6db01cfeff676f8cd018de3" "f305d84aedc6abd29ab13706ae1971af9675f32778e8573f3cc220aa8eea0e4c" "d8e3e6aa0c7de3270a444ff4564ed53c7aa27e492d71f36b562a60178ace6cd0" "f0bb5aad2e5c73bc237fd8542191a9c36a4ac2de653098c236a2d43009a5b701" "46ad2496adcda77b6dbc62c9c5bc0d4eee6317e9cb74c6ddd6b226936e808159" "8816939abf73d8e2cca286bdbd07a10d60698ecb9ac988202b5fb200ecbe7759" "62908be4f43029e88dbf2b8f30798516c4f06bcdb4b2c36405d577d9c972e005" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" "4cacff59e0a96f19e1473be5961bcd5dfdceb3419b2fc866459fd9cffa493e75" "5f33ae3f4e33cc6fe3c95c61ec79d95b90198a7e8d4c5708449666aab4a67d4a" "4c24c41773663f7c1fadbf9cd93568bd6310ecc38dcb5d2b3dfcfd97521d56a9" "51f43ae72af2df0b68bca68c74f069877ef618bc7e8916beb030d27328cb60f7" "7ec0824f6641c6323a30430946d3a55a1c19713e2e52cc380164d510c911c1bf" "00e4060f0db11f5eea70dc66ea3cf2c7182b66424d3add86901bd471237fd814" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "2b0889e7a79b383ebaf6236662efa71213cac0ee8969a9454b8a375c6cf42340" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "nil")))))
(load-theme 'base16-default-dark)
