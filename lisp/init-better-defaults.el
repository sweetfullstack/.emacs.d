
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

;;关闭自动保存文件
(setq auto-save-default nil)

;;Emacs 自动加载外部修改过的文件
(global-auto-revert-mode 1)

;;popwin 插件可以自动将光标移动到，新创建的窗口中。使用下面的代码将其启用
(require 'popwin)
(popwin-mode 1)

;;关闭错误提示音
(setq ring-bell-function 'ignore)

;;每一次当 Emacs 需要与你确认某个命令时需要输入 (yes or no) 比较麻烦，所有我们可 以使用下面的代码，设置一个别名将其简化为只输入 (y or n) 。
(fset 'yes-or-no-p 'y-or-n-p)

;;缩写补全
(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
                                            ;; Shifu
                                            ("8mf" "Microsoft")
                                            ;; Tudi
                                            ("8sw" "Sweet_Rabbit")
                                           ))

;;Hippie补全
(setq hippie-expand-try-function-list '(try-expand-debbrev
                                        try-expand-debbrev-all-buffers
                                        try-expand-debbrev-from-kill
                                        try-complete-file-name-partially
                                        try-complete-file-name
                                        try-expand-all-abbrevs
                                        try-expand-list
                                        try-expand-line
                                        try-complete-lisp-symbol-partially
                                        try-complete-lisp-symbol))

(global-set-key (kbd "s-/") 'hippie-expand)

;;dried mode 文件管理相关操作
;;默认情况下递归删除目录
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)


;; Emacs 重用唯一的一个缓冲区作为 Dired Mode 显示专用缓冲区。
(put 'dired-find-alternate-file 'disabled nil)
;; 主动加载 Dired Mode
;; (require 'dired)
;; (defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; 延迟加载
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;;启用 dired-x 可以让每一次进入 Dired 模式时，使用新的快捷键 C-x C-j 就可以进 入当前文件夹的所在的路径
(require 'dired-x)
;;当一个窗口（frame）中存在两个分屏 （window）时，将另一个分屏自动设置成拷贝地址的目标。
(setq dired-dwin-target 1)

;;文件末尾
(provide 'init-better-defaults)
