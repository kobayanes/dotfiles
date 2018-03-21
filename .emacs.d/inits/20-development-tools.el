;; ----------------------------------------------------------------------------
;; file    : 20-development-tools.el
;; brief   : development tools configuration.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2018/01/27
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
;; brief   : yasnippet configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(require 'yasnippet)
(yas-global-mode t)

; include snippets
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))

; keybinds
(define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)      ; insert snippet
(define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)         ; create new snippet
(define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)  ; open snippet file


;; ----------------------------------------------------------------------------
;; brief   : smart-parens configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(require 'smartparens-config)
(smartparens-global-mode t)


;; ----------------------------------------------------------------------------
;; brief   : expand-region configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(require 'expand-region)

(global-set-key (kbd "C-=") 'er/expand-region)    ; expand region
(global-set-key (kbd "M-=") 'er/contract-region)  ; contract region


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
