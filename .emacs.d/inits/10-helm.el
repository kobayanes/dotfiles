;; ----------------------------------------------------------------------------
;; file    : 10-helm.el
;; brief   : helm configuration.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2018/03/21
;; ----------------------------------------------------------------------------


(require 'helm-config)
(require 'helm-descbinds)
(require 'helm-ag)
(require 'helm-gtags)
(require 'helm-projectile)
(helm-mode 1)
(helm-descbinds-mode t)

; keybind
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-ag-map (kbd "TAB") 'helm-execute-persistent-action)

; helm-ag configuration
(setq helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
(setq helm-ag-insert-at-point 'symbol)

; helm-projectile configuration
(helm-projectile-on)
