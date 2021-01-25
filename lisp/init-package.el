(use-package emacs
  :config
  (defalias 'yes-or-no-p 'y-or-n-p)
  (setq display-line-numbers-type 'relative)
  ; windows 不开启行号
  (unless *is-windows* (global-display-line-numbers-mode t)))

(use-package restart-emacs)


(provide 'init-package)
