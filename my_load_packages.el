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

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode)) 
;;http://cha1tanya.com/2015/06/20/configuring-web-mode-with-jsx.html
(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")))

;; flycheck
(global-flycheck-mode)
;;; my_load_packages.el ends here
