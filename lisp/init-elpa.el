;; elpa镜像源
(setq package-archives
    '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
      ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
      ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

(setq package-check-signature nil) ;个别时候会出现签名校验失败
(require 'package) ;; 初始化包管理器
(unless (bound-and-true-p package--initialized)
   (package-initialize)) ;; 刷新软件源索引
(unless package-archive-contents
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
   (package-refresh-contents)
   (package-install 'use-package))
; use-package 基础配置
(eval-and-compile
    (setq use-package-always-ensure t) ;不用每个包都手动添加:ensure t关键字
    (setq use-package-always-defer t) ;默认都是延迟加载，不用每个包都手动添加:defer t
    (setq use-package-always-demand nil)
    (setq use-package-expand-minimally t)
    (setq use-package-verbose t))

(require 'use-package)


; 对外调用的名称
(provide 'init-elpa)