
;;打开目录树
(global-set-key [f8] 'neotree-toggle)

;;打开最近修改过的文件
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;expand-region  更方便的选中一片区域
(global-set-key (kbd "C-=") 'er/expand-region)

;;编辑完括号内容直接开始下一行
(global-set-key (kbd "C-l") 'forward-char)

;;向后删除一个单词
(global-set-key (kbd "C-w") 'backward-kill-word)

;;按键调整透明度
(global-set-key [(f9)] 'loop-alpha)

;;f5运行python
(global-set-key [(f5)] 'maple-run-python)

;;在当前项目中查找
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
;;查看操作
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;;文件操作
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;;窗口操作
(global-set-key (kbd "C-x q") 'kill-buffer-and-window)
;;增加窗口距离
(global-set-key [(f11)] 'enlarge-window)
;;减少窗口距离
(global-set-key [(f12)] 'shrink-window)
;;-------------------------org快捷键-----------------------

;;为工作安排设定快捷键
(global-set-key (kbd "C-c r") 'org-capture)

;; 设置 org-agenda 打开快捷键
(global-set-key (kbd "C-c a") 'org-agenda)

;;------------------------org配置结束-----------------------

;;------------------------web模式--------------------------

;;缩进４个空格和两个空格切换
(global-set-key (kbd "C-c t i") 'my-toggle-web-indent)

;;配置 Occur Mode 使其默认搜索当前被选中的或者在光标下的字符串
;;按e进入编辑模式
(global-set-key (kbd "M-s o") 'occur-dwim)

;;imenu实现精确的函数跳转
(global-set-key (kbd "M-s i") 'counsel-imenu)

;;iedit 同时编辑多个区域
(global-set-key (kbd "M-s e") 'iedit-mode)

;;-----------------------web模式结束------------------------

;;快捷注释
(define-key evil-normal-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
(define-key evil-visual-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)



;;----------------------代码补齐.语法检查---------------------

;;hippie补全
(global-set-key (kbd "s-/") 'hippie-expand)

;;代码块补齐
;;yasnippet
(global-set-key (kbd "H-w") #'aya-create)
(global-set-key (kbd "H-y") #'aya-expand)

;;下面的配置来在 Company-mode 中使用 C-n 与 C-p 来选择补全项
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;;---------------------代码补齐语法检查配置结束----------------------

;;文件末尾
(provide 'init-keybindings)
