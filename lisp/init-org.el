;;org功能配置
(require 'org)
(setq org-src-fontify-natively t)

;; 设置默认 Org Agenda 文件目录
(setq org-agenda-files '("~/org"))

;;设置一个模板
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtd.org" "工作安排")
         "* TODO [#B] %?\n  %i\n"
         :empty-lines 1)))

;;文件末尾
(provide 'init-org)
