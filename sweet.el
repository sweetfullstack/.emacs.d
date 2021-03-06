(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; -----------------------------------------------------------------
(require 'init-packages)
(require 'init-better-defaults)
(require 'init-ui)
(require 'init-dir-tree)
(require 'init-web)
(require 'init-org)
(require 'init-op-func)
(require 'init-set-packages)
(require 'init-python)
(require 'init-common-lisp)
(require 'init-evil)
(require 'init-keybindings)
(require 'init-auctex)
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)
