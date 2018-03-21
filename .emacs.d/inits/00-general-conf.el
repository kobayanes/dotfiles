;; ----------------------------------------------------------------------------
;; file    : 00-init.el
;; brief   : general configuration.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2018/03/02
;; ----------------------------------------------------------------------------


;; ----------------------------------------------------------------------------
;; brief   : background configuration.
;; note    : path, emacs server, auto backup
;; ----------------------------------------------------------------------------
;; ; share path with zsh
;; (load-file (expand-file-name "~/.emacs.d/cache/shellenv.el"))
;; (dolist (path (reverse (split-string (getenv "PATH") ":")))
;;   (add-to-list 'exec-path path))
(when (require 'exec-path-from-shell)
  (let ((envs '("PATH")))
    (exec-path-from-shell-copy-envs envs)))

; enable emacs server
(require 'server)
(unless (server-running-p)
  (server-start))

; disable auto backup
(setq make-backup-files nil)  ; disable backup file
(setq auto-save-default nil)  ; disable auto save file
(setq auto-save-list-file-prefix nil)


;; ----------------------------------------------------------------------------
;; brief   : general configuration.
;; note    : -
;; ----------------------------------------------------------------------------
; if exist the same name buffer, tell them apart
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

; disable completion case
(setq completion-ignore-case t)                 ; search
(setq read-file-name-completion-ignore-case t)  ; file, directory name
(setq read-buffer-completion-ignore-case t)     ; buffer name

; Tab configuration
(setq-default tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq-default indent-tabs-mode nil)  ; disable Tab

; history configuration
(setq history-length t)         ; set mini-buffer history length to infinity
(setq undo-no-redo t)           ; set undo no redo
(setq undo-limit 10000)         ; set undo limit
(setq undo-strong-limit 50000)  ; set undo limit

(cd "~")                          ; start from home directory
(global-auto-revert-mode 1)       ; auto reload changed buffer
(setq scroll-step 1)              ; scrool 1 line

; bell configuration
(setq visible-bell t)
