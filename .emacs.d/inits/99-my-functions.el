;; ----------------------------------------------------------------------------
;; file    : 99-my-functions.el
;; brief   : my elisp functions
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2018/01/21
;; ----------------------------------------------------------------------------


;; ----------------------------------------------------------------------------
;; brief   : insert current date: format YYYY/MM/DD
;; note    : -
;; ----------------------------------------------------------------------------
(defun insert-current-date()
  (interactive)
  (insert (format-time-string "%Y/%m/%d" (current-time))))

(global-set-key (kbd "C-c d") 'insert-current-date)


;; ----------------------------------------------------------------------------
;; brief   : insert opening file name
;; note    : -
;; ----------------------------------------------------------------------------
(defun insert-file-name()
  (interactive)
  (insert (file-name-nondirectory (buffer-file-name))))

(global-set-key (kbd "C-c f") 'insert-file-name)


;; ----------------------------------------------------------------------------
;; brief   : insert my name
;; note    : -
;; ----------------------------------------------------------------------------
(defun insert-author-name()
  (interactive)
  (insert "Teppei Kobayashi <kobayanes@gmail.com>"))

(global-set-key (kbd "C-c n") 'insert-author-name)
