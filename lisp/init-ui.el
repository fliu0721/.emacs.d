; theme
(use-package gruvbox-theme
  :init (load-theme 'gruvbox-dark-soft  t))

(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t
	sml/theme 'respectful)
  (sml/setup))

; fonts
(use-package emacs
  :if (display-graphic-p)
  :config
  ;; Font settings
  (if *is-windows*
    (progn
      (set-face-attribute 'default nil :font "Microsoft Yahei Mono 9")
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
        (set-fontset-font (frame-parameter nil 'font) charset (font-spec :family "Microsoft Yahei Mono" :size 12))))
  (set-face-attribute 'default nil :font "Source Code Pro for Powerline 14")))


; 对外调用的名称
(provide 'init-ui)
