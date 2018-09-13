(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "https://elpa.emacs-china.org/gnu/")
			   ("melpa" . "https://elpa.emacs-china.org/melpa/")
			   ("org"   . "https://elpa.emacs-china.org/org/"))))


(require 'cl)

;;add whatever packages you want here
(defvar sweet/packages '(
			 ;;增加emacs功能
			 use-package
			 ;;keybindings.el配置
			 ;;或者evil.el配置
			 ;;增加emacs基础功能插件
			 swiper
			 counsel		 
			 iedit
			 helm-ag
			 expand-region
			 projectile;;将目录变为项目.projectile
			 ;;目录树配置
			 neotree
			 all-the-icons
			 ;;set-package.el 插件增加基础配置
			 company
			 auto-yasnippet
			 hungry-delete
			 smartparens
			 popwin
			 exec-path-from-shell
			 ;;lsp补全
			 lsp-ui
			 lsp-mode
			 company-lsp
			 ;;ui
			 atom-one-dark-theme
			 ;;web
			 js2-mode
			 web-mode
			 js2-refactor
			 nodejs-repl
			 ;;evil
			 evil
			 evil-leader
			 window-numbering
			 evil-nerd-commenter
			 which-key
			 ;;common lisp
			 slime
			 ;;python
			 virtualenvwrapper

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
