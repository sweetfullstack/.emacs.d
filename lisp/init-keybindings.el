
;; 快速打开配置文件
;; 将函数 open-init-file 绑定到 <f12> 键上
(global-set-key (kbd "<f12>") 'open-init-file)

;;打开最近修改过的文件
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;片段代码缩进
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;;expand-region  更方便的选中一片区域
(global-set-key (kbd "C-=") 'er/expand-region)



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

;;配置 Occur Mode 使其默认搜索当前被选中的或者在光标下的字符串
(global-set-key (kbd "M-s o") 'occur-dwim)

;;iedit 是一个可以同时编辑多个区域的插件
(global-set-key (kbd "M-s e") 'iedit-mode)

;;hippie补全
(global-set-key (kbd "s-/") 'hippie-expand)

;;文件末尾
(provide 'init-keybindings)
