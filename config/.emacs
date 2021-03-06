;;;; emacs-ide 设置
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(require 'eide)
(eide-start)

;;;; 设定启动大小和位置(失效中...)
(setq default-farme-alist
      '((height . 150)(width . 200)(menubar-lines . 20)(tool-bar-lines . 0)))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ede-project-directories (quote ("/home/zodiac1111/tmp/ldd/init")))
 '(eide-custom-override-emacs-settings nil)
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;;; 缩进设置
(setq tab-width 8)
(setq default-tab-width 8)
(setq indent-tabs-mode t)
(setq c-basic-offset 8)

;;;; C语言设置 C language setting
(add-hook 'c-mode-hook
	  '(lambda ()
	     (c-set-style "Linux")
	     (c-toggle-auto-state)
	     (setq tab-width 8)
	     (setq indent-tabs-mode t)
	     (setq c-basic-offset 8)))

;;;; C++ language setting
(add-hook 'c++-mode-hook
	  '(lambda ()
	     (c-set-style "K&R")
	     ;;(c-toggle-auto-state)
	     (setq tab-width 8)
	     (setq indent-tabs-mode t)
	     (setq c-basic-offset 8)))

;;;; C  mode 括号补全
(add-hook 'c-mode-hook 'hs-minor-mode)
(defun my-c-mode-auto-pair ()
	(interactive)
	(make-local-variable 'skeleton-pair-alist)
	(setq skeleton-pair-alist  '(
		(?' ? _ "'")
		(?\( ?  _ ")")
		(?\" ?  _ "\"")
		(?\[ ?  _ "]")
		(?{ \n > _ \n ?} >)))
(setq skeleton-pair t)
	(local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
	(local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
	(local-set-key (kbd "'") 'skeleton-pair-insert-maybe)
	(local-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
	(local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
(add-hook 'c-mode-hook 'my-c-mode-auto-pair)

;;;; 设置
(setq inferior-lisp-program "/usr/bin/sbcl")

(add-to-list 'load-path "/usr/share/common-lisp/source/slime/")
(require 'slime)
(slime-setup)


