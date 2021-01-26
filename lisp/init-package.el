;;; package -- setting for package
;;; Commentary:
;;; Code:

(use-package emacs
  :config
  (defalias 'yes-or-no-p 'y-or-n-p)
  (setq display-line-numbers-type 'relative)
  ; windows 不开启行号
  (unless *is-windows* (global-display-line-numbers-mode t)))

; ivy-counsel-swiper 三剑客，强化搜索
(use-package ivy
  :defer 1
  :demand
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
        ivy-initial-inputs-alist nil
        ivy-count-format "%d/%d "
        enable-recursive-minibuffers t
        ivy-re-builders-alist '((t . ivy--regex-ignore-order))))
 ; (ivy-posframe-mode 1)))

(use-package counsel
  :after (ivy)
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("C-c f" . counsel-recentf)
         ("C-c g" . counsel-git)))

(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
         ("C-r" . swiper-isearch-backward))
  :config (setq swiper-action-recenter t
                swiper-include-line-number-in-search t))

(use-package which-key
  :defer nil
  :config (which-key-mode))

; 自动补全 company(Complete Anying)
(use-package company
  :config
  (setq company-dabbrev-code-everywhere t
        company-dabbrev-code-modes t
        company-dabbrev-code-other-buffers 'all
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case t
        company-dabbrev-other-buffers 'all
        company-require-match nil
        company-minimum-prefix-length 2
        company-show-numbers t
        company-tooltip-limit 20
        company-idle-delay 0
        company-echo-delay 0
        company-tooltip-offset-display 'scrollbar
        company-begin-commands '(self-insert-command))
  (push '(company-semantic :with company-yasnippet) company-backends)
  :hook ((after-init . global-company-mode)))

; 语法检查
(use-package flycheck
  :hook (after-init . global-flycheck-mode))

; 重启
(use-package restart-emacs)

(provide 'init-package)
