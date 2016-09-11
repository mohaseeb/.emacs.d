; ~/.emacs.d/my_load_packages.el
; loading package
(load "~/.emacs.d/my_packages.el")

(require 'yasnippet)
(yas-global-mode 1)
(yas-load-directory "~/.emacs.d/snippets")
(add-hook 'term-mode-hook (lambda()
    (setq yas-dont-activate t)))

(load-theme 'zenburn t)
