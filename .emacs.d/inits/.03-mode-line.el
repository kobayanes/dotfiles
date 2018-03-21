;; ----------------------------------------------------------------------------
;; file    : 03-mode-line.el
;; brief   : mode line configuration.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2018/01/27
;; ----------------------------------------------------------------------------


;; ----------------------------------------------------------------------------
;; brief   : general configuration.
;; note    : -
;; ----------------------------------------------------------------------------
; encoding, lines, columns
(setq-default
 mode-line-position
 '(
   " "
   (:propertize "%4l" face mode-line-position-face)
   (:propertize "/" face mode-line-delim-face-1)
   (:eval
    (number-to-string (count-lines (point-min) (point-max))))
   " "
   (:eval (propertize "%3c" 'face
                      (if (>= (current-column) 80)
                          'mode-line-80col-face
                        'mode-line-position-face))) " "))

; buffer status, current buffer file, major/minor mode
(setq-default mode-line-format
              '("%e"
                mode-line-mule-info
                mode-line-client
                mode-line-remote
                mode-line-position

                ; read only/modified status
                (:eval
                 (cond (buffer-read-only
                        (propertize "<Read Only>" 'face 'mode-line-read-only-face))
                       ((buffer-modified-p)
                        (propertize "<Modified Buffer>" 'face 'mode-line-modified-face))
                       (t "  ")))
                " ["

                ; directory and file name
                (:propertize (:eval (shorten-directory default-directory 20))
                             face mode-line-folder-face)
                (:propertize "%b" face mode-line-filename-face)
                "%n"

                ; major/minor mode
                "]  %["
                (:propertize mode-name
                             face mode-line-mode-face)
                "%]"
                "  "
                (:eval (propertize (format-mode-line minor-mode-alist)
                                   'face 'mode-line-minor-mode-face))
                "  "
                (:propertize mode-line-process
                             face mode-line-process-face)
                "  "
                (global-mode-string global-mode-string)))

; directory string shorten
(defun shorten-directory (dir max-length)
  "Show up to `max-length' characters of a directory name `dir'."
  (let ((path (reverse (split-string (abbreviate-file-name dir) "/")))
        (output ""))
    (when (and path (equal "" (car path)))
      (setq path (cdr path)))
    (while (and path (< (length output) (- max-length 4)))
      (setq output (concat (car path) "/" output))
      (setq path (cdr path)))
    (when path
      (setq output (concat ".../" output)))
    output))

; extra mode line faces
(make-face 'mode-line-read-only-face)
(make-face 'mode-line-modified-face)
(make-face 'mode-line-folder-face)
(make-face 'mode-line-filename-face)
(make-face 'mode-line-position-face)
(make-face 'mode-line-mode-face)
(make-face 'mode-line-minor-mode-face)
(make-face 'mode-line-process-face)
(make-face 'mode-line-80col-face)
(make-face 'mode-line-delim-face-1)


;; ----------------------------------------------------------------------------
;; brief   : buffer status color: modified, read only
;; note    : -
;; ----------------------------------------------------------------------------
; status: cols
(set-face-attribute 'mode-line-80col-face nil
                    :inherit 'mode-line-mode-face
                    :foreground "#fdf6e3" :background "#d33682")  ; color: solarized base3, magenta

; status: read only
(set-face-attribute 'mode-line-read-only-face nil
                    :inherit 'mode-line-face
                    :foreground "#fdf6e3" :background "#2aa198")  ; color: solarized base3, cyan

 ; status: modified
(set-face-attribute 'mode-line-modified-face nil
                    :inherit 'mode-line-face
                    :foreground "#fdf6e3" :background "#d33682")  ; color: solarized base3, magenta

; folder
(set-face-attribute 'mode-line-folder-face nil
                    :inherit 'mode-line-face
                    :weight 'extra-light :height 105
                    :foreground "#eee8d5")  ; color: solarized base2
; file
(set-face-attribute 'mode-line-filename-face nil
                    :inherit 'mode-line-face
                    :weight 'extra-bold
                    :foreground "#fdf6e3")  ; color: solarized base3

; major mode
(set-face-attribute 'mode-line-mode-face nil
                    :inherit 'mode-line-face
                    :foreground "#fdf6e3")  ; color: solarized base3

; minor mode
(set-face-attribute 'mode-line-minor-mode-face nil
                    :inherit 'mode-line-mode-face
                    :weight 'extra-light :height 105
                    :foreground "#eee8d5")  ; color: solarized base2
