;; ----------------------------------------------------------------------------
;; file    : linux-config.el
;; brief   : specified configuration for linux environment.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2018/01/16
;; ----------------------------------------------------------------------------


; character code configuration
(require 'ucs-normalize)
(prefer-coding-system 'utf-8)
(setq file-name-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)

; enable mozc
(require 'mozc)
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'echo-area)
