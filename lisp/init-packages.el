(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "https://elpa.emacs-china.org/gnu/")
			   ("melpa" . "https://elpa.emacs-china.org/melpa/")
			   ("org"   . "https://elpa.emacs-china.org/org/"))))


(require 'cl)

;;add whatever packages you want here
(defvar sweet/packages '(
				   company
				   atom-one-dark-theme
				   hungry-delete
				   swiper
				   counsel
				   smartparens
				   nodejs-repl
				   iedit
				   helm-ag
				   ;;reveal-in-osx-finder
				   exec-path-from-shell
				   
				   popwin
				   ;;web
				   js2-mode
				   web-mode
				   js2-refactor
				   expand-region
				   auto-yasnippet
				   flycheck
				   )  "Default packages")

(setq package-selected-packages sweet/packages)

(defun sweet/packages-installed-p ()
    (loop for pkg in sweet/packages
          when (not (package-installed-p pkg)) do (return nil)
          finally (return t)))

(unless (sweet/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg sweet/packages)
      (when (not (package-installed-p pkg))
        (package-install pkg))))



;;文件末尾
(provide 'init-packages)
