; 防止乱码
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
; 垃圾回收阈值最大
(setq gc-cons-threshold most-positive-fixnum)
; 去掉副本
(setq make-backup-files nil)

;;(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-startup-screen t)


; 对外调用的名称
(provide 'init-startup)
