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



;;--------------------org管理emacs--------------------------
;;(package-initialize)

;;(require 'org-install)
;;(require 'ob-tangle)
;;(org-babel-load-file (expand-file-name "org-file-name.org" user-emacs-directory))
