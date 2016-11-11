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
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

;; flycheck
(add-hook 'js-mode-hook
	  (lambda () (flycheck-mode t)))
