; 加载路径
(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))


(require 'init-const)
(require 'init-kbd)
(require 'init-startup)
(require 'init-elpa)
(require 'init-package)
(require 'init-ui)
