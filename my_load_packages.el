; ~/.emacs.d/my_load_packages.el
; loading and installing new packages
(load "~/.emacs.d/my_packages.el")

;; starting yasnippet
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;(add-hook 'term-mode-hook (lambda()
  ;;  (setq yas-dont-activate t)))

;; loading my fav theme
(load-theme 'zenburn t)

;; enabling multiple-cursors
(require 'multiple-cursors)

;; loading groovy mode
(require 'groovy-mode)

;; loading groovy mode
(require 'auto-complete)
