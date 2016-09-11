; install(if not installed) and load packages
(load "~/.emacs.d/my_load_packages.el")

; apply my internal customizations
(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/my_customizations_internals.el")
))
