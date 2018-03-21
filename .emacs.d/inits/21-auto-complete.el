;; ----------------------------------------------------------------------------
;; file    : 20-auto-complete.el
;; brief   : auto-complete configuration.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2018/01/27
;; ----------------------------------------------------------------------------


;; ----------------------------------------------------------------------------
;; brief   : general configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(require 'auto-complete)
(require 'auto-complete-config)

; include dictionary
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20170124.1845/dict")
(setq ac-comphist-file "~/.emacs.d/cache/ac-comphist.dat")

; keybinds
(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)
(ac-set-trigger-key "TAB")

; auto complete sources: filename, other buffers
(setq-default ac-sources '(ac-source-filename ac-source-words-in-same-mode-buffers))

(ac-config-default)
(global-auto-complete-mode t)  ; auto start auto-complete
(setq ac-dwim t)               ; useful configuration
(setq ac-auto-start 2)         ; start trigger: input 3 characters

(add-to-list 'ac-modes
             (list "text-mode"
                   "fundamental-mode"))
