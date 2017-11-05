					; my-methods.el
;;; Allows specifying a command to run everytime the buffer is saved
(setq my-command-buffer-hooks (make-hash-table))

(defun my-command-on-save-buffer (c)
  "Run a command <c> every time the buffer is saved "
  (interactive "sShell command: ")
  (puthash (buffer-file-name) c my-command-buffer-hooks))

(defun my-command-buffer-kill-hook ()
  "Remove a key from <command-buffer-hooks> if it exists"
  (remhash (buffer-file-name) my-command-buffer-hooks))

(defun my-command-buffer-run-hook ()
  "Run a command if it exists in the hook"
  (let ((hook (gethash (buffer-file-name) my-command-buffer-hooks)))
    (when hook
        (shell-command hook))))

;; add hooks
(add-hook 'kill-buffer-hook 'my-command-buffer-kill-hook)
(add-hook 'after-save-hook 'my-command-buffer-run-hook)

;;; Convert a set of multiple lines into python array
;; https://stackoverflow.com/questions/10594208/how-do-i-get-the-region-selection-programmatically-in-emacs-lisp
(defun lines_to_list (str)
  "Split the lines in STR."
  (split-string-and-unquote str "\n")
  )

(defun list_to_str (str_list)
  "STR_LIST."
  (if (= (length str_list) 0)
      ""
    (concat "'" (car str_list) "', " (list_to_str (cdr str_list)))))

(defun to_python_list (start end)
  "Convert a set of multiple lines into python array.  START, END."
  (interactive (if (use-region-p)
		   (list (region-beginning) (region-end))
		 (list nil nil)))
  (if (and start end)
      (replace-regexp
       ".*\\(\n.*\\)*" ;; match across multiple lines
       (concat "\[" (list_to_str (lines_to_list (buffer-substring-no-properties start end))) "\]")
       nil start end)))

;;; my_methods.el ends here

