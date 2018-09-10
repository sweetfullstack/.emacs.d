;;有些插件可以补全很多编程语言，不好归类
;;该文件为插件增加类，以及代码补全，不好归类的插件

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


;;(require 'yasnippet)
;;js2-refactor js代码重构需要引用yasnippet
(add-hook 'js2-mode-hook #'js2-refactor-mode)

(js2r-add-keybindings-with-prefix "C-c C-m")


;;代码块补齐(包含很多编程语言)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;;exec-path-from-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;popwin 插件可以自动将光标移动到，新创建的窗口中。使用下面的代码将其启用
(require 'popwin)
(popwin-mode t)

;;文件末尾
(provide 'init-set-packages)
