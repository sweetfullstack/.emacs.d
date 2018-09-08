;;company 补全插件
;;(global-company-mode 1)
(add-hook 'after-init-hook 'global-company-mode)

;;hungry-delete 删除多余空格
(require 'hungry-delete)
(global-hungry-delete-mode)

;;smartparens 补齐右边括号
(require 'smartparens-config)
;; Always start smartparens mode in js-mode.
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)


;;js2mode 
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

;;exec-path-from-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


;;文件末尾
(provide 'init-set-packages)
