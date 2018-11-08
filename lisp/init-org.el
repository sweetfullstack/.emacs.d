;;org功能配置
(require 'org)
(setq org-src-fontify-natively t)

;; 设置默认 Org Agenda 文件目录
(setq org-agenda-files '("~/org"))

;;org模式中自动换行
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
;;设置一个模板
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtd.org" "工作安排")
         "* TODO [#B] %?\n  %i\n"
         :empty-lines 1)))

(require 'ob-ipython)

;;在emacs中执行python代码
(org-babel-do-load-languages
 'org-babel-load-languages
 '((ipython . t)
   ;; other languages..
   ))

(setq org-confirm-babel-evaluate nil)

;;文件末尾
(provide 'init-org)
