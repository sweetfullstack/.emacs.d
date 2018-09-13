;;common lisp环境配置
(setq inferior-lisp-program "/usr/bin/sbcl")

(setq slime-contribs '(slime-fancy))

(require 'cl-lib)

(eval-when-compile (require 'cl-lib))

(provide 'init-common-lisp)
