
;;----------------------------evil配置-------------------------

(window-numbering-mode 1)

(global-evil-leader-mode)

(evil-leader/set-key
  "ff" 'find-file
  "bb" 'switch-to-buffer

  ;;代码缩进
  "\\" 'indent-region-or-buffer
  
  ;;窗口操作
  "1"  'select-window-1
  "2"  'select-window-2
  "3"  'select-window-3
  "4"  'select-window-4
  "w/" 'split-window-right
  "w-" 'split-window-below
  ":"  'counsel-M-x
  "wd" 'delete-other-windows
  "q"  'delete-window

  ;;搜索文件
  "t"  'counsel-git
  "ps" 'helm-do-ag-project-root
  
  )

(evil-mode t)

(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
 
(which-key-mode t)

;;--------------------------------evil结束-----------------------

;;文件末尾
(provide 'init-evil)
