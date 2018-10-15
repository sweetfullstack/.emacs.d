;;lsp补全
(use-package lsp-mode
  :ensure t
  :config

  ;; make sure we have lsp-imenu everywhere we have LSP
  ;;(require 'lsp-imenu)
  ;;(add-hook 'lsp-after-open-hook 'lsp-enable-imenu)
  
  ;;python lsp--------------------------------------------
  (lsp-define-stdio-client lsp-python "python"
                           #'projectile-project-root
                           '("pyls"))
  
  (add-hook 'python-mode-hook
            (lambda ()
              (lsp-python-enable)))
  
  ;; lsp extras
  ;;(use-package lsp-ui
    ;;:ensure t
    ;;:config
    ;;(setq lsp-ui-sideline-ignore-duplicate t)
    ;;(add-hook 'lsp-mode-hook 'lsp-ui-mode))

  (use-package company-lsp
    :config
    (push 'company-lsp company-backends))

  ;; NB: only required if you prefer flake8 instead of the default
  ;; send pyls config via lsp-after-initialize-hook -- harmless for
  ;; other servers due to pyls key, but would prefer only sending this
  ;; when pyls gets initialised (:initialize function in
  ;; lsp-define-stdio-client is invoked too early (before server
  ;; start)) -- cpbotha
  (defun lsp-set-cfg ()
    (let ((lsp-cfg `(:pyls (:configurationSources ("flake8")))))
      ;; TODO: check lsp--cur-workspace here to decide per server / project
      (lsp--set-configuration lsp-cfg)))

  (add-hook 'lsp-after-initialize-hook 'lsp-set-cfg))


(setq lsp-message-project-root-warning t)

;;文件末尾
(provide 'init-lsp)

