;;company 补全插件
;;(global-company-mode 1)
(add-hook 'after-init-hook 'global-company-mode)

;;hungry-delete 删除多余空格
(require 'hungry-delete)
(global-hungry-delete-mode)

;;smartparens 补齐右边括号
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

;;在lisp模式下单引号不做匹配
(sp-local-pair '(emacs-lisp-mode lisp-interaction-mode) "'" nil :actions nil)

;;web-mode
;;js2-mode 
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       '(("\\.html\\'" . web-mode))
       auto-mode-alist))

;;exec-path-from-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


;;文件末尾
(provide 'init-set-packages)
