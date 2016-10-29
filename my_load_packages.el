; ~/.emacs.d/my_load_packages.el
; loading and installing new packages
(load "~/.emacs.d/my_packages.el")

;; starting yasnippet
(require 'yasnippet)
(yas-global-mode 1)
(yas-load-directory "~/.emacs.d/snippets")
(add-hook 'term-mode-hook (lambda()
    (setq yas-dont-activate t)))

;; loading my fav theme
(load-theme 'zenburn t)

;; enabling multiple-cursors
(require 'multiple-cursors)
