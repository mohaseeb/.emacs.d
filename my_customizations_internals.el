; ~/.emacs.d/my_customizations_internals.el

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

;; open my todo
(find-file "~/Desktop/todo.org")

;; yassnippet
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "<C-tab>") 'yas-expand)

;; configure auto-complete
(ac-config-default)

;; https://truongtx.me/2014/03/10/emacs-setup-jsx-mode-and-jsx-syntax-checking
(flycheck-define-checker jsxhint-checker
  "A JSX syntax and style checker based on JSXHint."

  :command ("jsxhint" source)
  :error-patterns
  ((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
  :modes (web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (equal web-mode-content-type "jsx")
              ;; enable flycheck
              (flycheck-select-checker 'jsxhint-checker)
              (flycheck-mode))))
