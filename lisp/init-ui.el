; theme
;; (use-package gruvbox-theme
;;   :init (load-theme 'gruvbox-dark-soft  t))
(use-package solarized-theme
  :init (load-theme 'solarized-dark  t))

(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t
	sml/theme 'respectful)
  (sml/setup))

;; 字体配置

;; 尝试解决字体卡顿问题
(setq inhibit-compacting-font-caches t)

    

; 对外调用的名称
(provide 'init-ui)
