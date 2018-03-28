;; ----------------------------------------------------------------------------
;; file    : 20-development-tools.el
;; brief   : development tools configuration.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2018/03/28
;; ----------------------------------------------------------------------------


;; ----------------------------------------------------------------------------
;; brief   : flycheck configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(require 'flycheck)
(global-flycheck-mode t)
(require 'flycheck-color-mode-line)


;; ----------------------------------------------------------------------------
;; brief   : git-gutter configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(require 'git-gutter)
(global-git-gutter-mode t)


;; ----------------------------------------------------------------------------
;; brief   : smart-parens configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(require 'smartparens-config)
(smartparens-global-mode t)


;; ----------------------------------------------------------------------------
;; brief   : smart-parens configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(setq highlight-indent-guides-method 'character)

;; ----------------------------------------------------------------------------
;; brief   : expand-region configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(require 'expand-region)

; key bindings
(global-unset-key (kbd "C-o"))
(global-unset-key (kbd "M-o"))
(global-set-key (kbd "C-o") 'er/expand-region)    ; expand region
(global-set-key (kbd "M-o") 'er/contract-region)  ; contract region


;; ----------------------------------------------------------------------------
;; brief   : cua-mode configuration
;; note    : -
;; ----------------------------------------------------------------------------
(cua-mode t)
(setq cua-enable-cua-keys nil)


;; ----------------------------------------------------------------------------
;; brief   : simpleclip configuration
;; note    : -
;; ----------------------------------------------------------------------------
(simpleclip-mode t)


;; ----------------------------------------------------------------------------
;; brief   : highlight-symbol-mode configuration
;; note    : -
;; ----------------------------------------------------------------------------
(setq highlight-symbol-idle-delay 0.5)


;; ----------------------------------------------------------------------------
;; brief   : rainbow-delimiters configuration
;; note    : -
;; ----------------------------------------------------------------------------
(require 'rainbow-delimiters)


;; ----------------------------------------------------------------------------
;; brief   : anzu configuration
;; note    : -
;; ----------------------------------------------------------------------------
(require 'anzu)
(global-anzu-mode t)
(custom-set-variables
 '(anzu-deactivate-region t)
 '(anzu-search-threshold 1000))


;; ----------------------------------------------------------------------------
;; brief   : magit configuration
;; note    : -
;; ----------------------------------------------------------------------------
(require 'magit)
