(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; -----------------------------------------------------------------
(require 'init-packages)
(require 'init-web)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-org)
(require 'init-op-func)
(require 'init-set-packages)
(require 'init-keybindings)
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)