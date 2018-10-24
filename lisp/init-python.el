
;;python虚拟环境
;; virutal environment:  virtualenvwrapper
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(venv-initialize-eshell)
(setq venv-location "~/.virtualenvs/"); setup virtual environment folder


;;python使用f5运行当前文件
(defun python/run-current-file (&optional directory)
  "Execute the current python file."
  (interactive
   (list (or (and current-prefix-arg
                  (read-directory-name "Run in directory: " nil nil t))
             default-directory)))
  (when (buffer-file-name)
    (let* ((command (or (and (boundp 'executable-command) executable-command)
                        (concat "python " (buffer-file-name))))
           (default-directory directory)
           (compilation-ask-about-save nil))
      (executable-interpret (read-shell-command "Run: " command)))))


(with-eval-after-load 'python 
  (define-key python-mode-map [f5] 'python/run-current-file))



;;文件末尾
(provide 'init-python)
