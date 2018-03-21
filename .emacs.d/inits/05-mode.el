;; ----------------------------------------------------------------------------
;; file    : 05-mode.el
;; brief   : mode configuration.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2018/03/02
;; ----------------------------------------------------------------------------


;; ----------------------------------------------------------------------------
;; brief   : markdown mode configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.txt$'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . gfm-mode))
(setq markdown-command "github-markup")
(setq markdown-command-needs-filename t)


;; ----------------------------------------------------------------------------
;; brief   : json mode configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(when (require 'json-mode)
  (add-to-list 'auto-mode-alist '("\\.json$" . json-mode)))
