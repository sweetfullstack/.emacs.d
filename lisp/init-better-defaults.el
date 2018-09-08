
;;显示另外一边括号的位置--括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;;选中片段后重新输入替换选中内容
(delete-selection-mode 1)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;;关闭自动生成的备份文件
(setq make-backup-files nil)



;;文件末尾
(provide 'init-better-defaults)
