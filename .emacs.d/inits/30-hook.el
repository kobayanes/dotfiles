;; ----------------------------------------------------------------------------
;; file    : 30-hook.el
;; brief   : hook configuration.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2018/03/28
;; ----------------------------------------------------------------------------


;; ----------------------------------------------------------------------------
;; brief   : -
;; note    : -
;; ----------------------------------------------------------------------------
(add-hook 'prog-mode-hook
          '(lambda()
             (rainbow-delimiters-mode)
             (highlight-indent-guides-mode)
             (highlight-symbol-nav-mode)
             (highlight-symbol-mode)))
(add-hook 'flycheck-mode-hook
          '(lambda()
             (flycheck-color-mode-line-mode)
             (flycheck-pos-tip-mode)))


;; ----------------------------------------------------------------------------
;; brief   : C/C++ mode.
;; note    : -
;; ----------------------------------------------------------------------------
(require 'cc-mode)

(defun ac-c-headers-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))

(defun c-mode-common-hooks ()
  (setq c-default-style "bsd")
  (setq c-basic-offset 2)
  (ac-c-headers-init)
  (flycheck-mode)
  (setq flycheck-gcc-include-path
        (list
         (expand-file-name "./include/")
         (expand-file-name "../include/"))))

(add-hook 'c-mode-common-hook
          '(lambda()
             (c-mode-common-hooks)))

(add-hook 'c++-mode-hook
          '(lambda()
             (setq flycheck-gcc-language-standard "c++11")))


;; ----------------------------------------------------------------------------
;; brief   : Python mode.
;; note    : -
;; ----------------------------------------------------------------------------
(defun python-mode-hooks ()
  (flycheck-mode)
  (setq python-indent-offset 4)
  (setq python-indent 4))

(add-hook 'python-mode-hook
          '(lambda()
             (python-mode-hooks)))


;; ----------------------------------------------------------------------------
;; brief   : go mode.
;; note    : -
;; ----------------------------------------------------------------------------
(defun go-mode-hooks ()
  (setq gofmt-command "goimports")
  (setq tab-width 2)
  (add-hook 'before-save-hook 'gofmt-before-save)
  (flycheck-mode))


(add-hook 'go-mode-hook
          '(lambda()
             (go-mode-hooks)))


;; ----------------------------------------------------------------------------
;; brief   : markdown mode.
;; note    : -
;; ----------------------------------------------------------------------------
(defun markdown-mode-hooks ()
  (flycheck-mode)
  (set (make-local-variable 'whitespace-action) nil))

(add-hook 'markdown-mode-hook
          '(lambda ()
             (markdown-mode-hooks)))
