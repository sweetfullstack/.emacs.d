;;开启emacs时全屏显示
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;加载主题
(load-theme 'atom-one-dark 1)

;;高亮当前行
(global-hl-line-mode 1)

;; 更改光标的样式
(setq-default cursor-type 'bar)

;; 更改显示字体大小 12pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 120)

;;文件末尾
(provide 'init-ui)
