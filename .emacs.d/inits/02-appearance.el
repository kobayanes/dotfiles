;; ----------------------------------------------------------------------------
;; file    : 02-appearance.el
;; brief   : appearance configuration.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2018/03/21
;; ----------------------------------------------------------------------------


;; ----------------------------------------------------------------------------
;; brief   : frame configuration.
;; note    : color scheme, font, tools, startup buffer
;; ----------------------------------------------------------------------------
; color scheme (solarized-light)
(load-theme 'gruvbox t)

; font configuration
(set-face-attribute 'default nil
                    :family "MyricaM M"
                    :height 120)
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (cons "MyricaM M" "iso10646-1"))
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0212
                  (cons "MyricaM M" "iso10646-1"))
(set-fontset-font (frame-parameter nil 'font)
                  'katakana-jisx0201
                  (cons "MyricaM M" "iso10646-1"))

; frame configuration
(tool-bar-mode -1)  ; disable tool bar
(menu-bar-mode -1)  ; disable menu bar
(set-scroll-bar-mode nil)  ; disable scroll bar
(set-frame-parameter nil 'fullscreen 'maximized)  ; start full screen

; emacs startup buffer
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

; show opening file full path on title bar
(setq frame-title-format '("%f - " invocation-name "-" emacs-version "@" system-name))


;; ----------------------------------------------------------------------------
;; brief   : parenthesis display configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(show-paren-mode t)
(setq show-paren-style 'mixed)
(set-face-attribute 'show-paren-match-face nil
                    :background nil
                    :foreground "#268bd2" ; paren color: solarized blue
                    :weight 'extra-bold)
(set-face-attribute 'show-paren-mismatch-face nil
                    :background nil
                    :foreground "#dc322f"  ; paren color: solarized red
                    :weight 'extra-bold)
