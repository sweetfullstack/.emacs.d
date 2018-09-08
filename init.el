(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; -----------------------------------------------------------------
(require 'init-packages)
(require 'init-ui)
(require 'custome)
(require 'init-keybindings)
(require 'init-org)
(require 'init-better-defaults)
(require 'init-set-packages)
