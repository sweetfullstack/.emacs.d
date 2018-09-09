;;--------------------org管理emacs--------------------------

(require 'org-install)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name "sweet.org" user-emacs-directory))
