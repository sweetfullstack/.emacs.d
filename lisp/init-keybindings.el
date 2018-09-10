
;; 快速打开配置文件
;; 将函数 open-init-file 绑定到 <f12> 键上
(global-set-key (kbd "<f12>") 'open-init-file)

;;打开最近修改过的文件
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;片段代码缩进
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;;expand-region  更方便的选中一片区域
(global-set-key (kbd "C-=") 'er/expand-region)

;;配置 Occur Mode 使其默认搜索当前被选中的或者在光标下的字符串
;;按e进入编辑模式
(global-set-key (kbd "M-s o") 'occur-dwim)

;;imenu实现精确的函数跳转
(global-set-key (kbd "M-s i") 'counsel-imenu)

;;iedit 同时编辑多个区域
(global-set-key (kbd "M-s e") 'iedit-mode)

;;hippie补全
(global-set-key (kbd "s-/") 'hippie-expand)

;;ag搜索
(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root)

;;代码块补齐
(global-set-key (kbd "H-w") #'aya-create)
(global-set-key (kbd "H-y") #'aya-expand)

;;下面的配置来在 Company-mode 中使用 C-n 与 C-p 来选择补全项
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))


;;自定义快捷键
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;;向后删除一个单词
(global-set-key (kbd "C-w") 'backward-kill-word)


;;-------------------------org快捷键-----------------------

;;为工作安排设定快捷键
(global-set-key (kbd "C-c r") 'org-capture)

;; 设置 org-agenda 打开快捷键
(global-set-key (kbd "C-c a") 'org-agenda)

;;------------------------org配置结束-----------------------

;;------------------------web模式--------------------------

;;缩进４个空格和两个空格切换
(global-set-key (kbd "C-c t i") 'my-toggle-web-indent)

;;-----------------------web模式结束------------------------
;;文件末尾
(provide 'init-keybindings)
