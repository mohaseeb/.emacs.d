					; ~/.emacs.d/my_load_packages.el
					; loading and installing new packages
(load "~/.emacs.d/my_packages.el")

;; starting yasnippet
;; https://github.com/joaotavora/yasnippet
(add-to-list 'load-path
	     "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
;; http://stackoverflow.com/questions/33622776/use-yasnippets-of-other-mode-in-web-mode

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

;;quack
(require 'quack)

;;auctex
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(require 'header2)
(add-hook 'emacs-lisp-mode-hook 'auto-make-header)

;;helm
(require 'helm-config)
(helm-mode 1)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") 'helm-find-files)


;;; my_load_packages.el ends here
