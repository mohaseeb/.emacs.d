					; ~/.emacs.d/my_customizations_internals.el

;;; Code:
;; Remove scrollbars, menu bars, and toolbars
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; multiple-cursor https://github.com/magnars/multiple-cursors.el
; When you have an active region that spans multiple lines, the following will add a cursor to each line:
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
; When you want to add multiple cursors not based on continuous lines, but based on keywords in the buffer, use:
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

;; font size
(set-face-attribute 'default nil :height 90)

;; org-mode
; enable org-indent-mode by default
(add-hook 'org-mode-hook 'org-indent-mode)

;; Wind-move
(global-set-key (kbd "C-c a") 'windmove-left)
(global-set-key (kbd "C-c d") 'windmove-down)
(global-set-key (kbd "C-c s") 'windmove-up)
(global-set-key (kbd "C-c f") 'windmove-right)

;; lin number mode
(global-linum-mode t)

;; don't show startup screen
(setq inhibit-startup-screen t)

;; open emacs frame maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; yassnippet
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "<C-tab>") 'yas-expand)

;; configure auto-complete
(ac-config-default)

;; open my todo
(find-file "~/Desktop/todo.org")

;;; my_customizations_internals.el ends here
