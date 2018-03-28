;; ----------------------------------------------------------------------------
;; file    : init.el
;; brief   : startup configuration entry point.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2018/03/28
;; ----------------------------------------------------------------------------


;; ----------------------------------------------------------------------------
;; brief   : package configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'cl)

(defvar installing-package-list
  '(
    init-loader
    auto-complete auto-complete-c-headers go-autocomplete
    gruvbox-theme rainbow-delimiters powerline highlight-indent-guides
    markdown-mode lua-mode cmake-mode json-mode go-mode
    recentf-ext session undo-tree simpleclip exec-path-from-shell
    helm helm-ag helm-descbinds helm-flycheck helm-projectile
    flycheck flycheck-color-mode-line flycheck-pos-tip
    magit git-gutter projectile expand-region smartparens highlight-symbol anzu
    ))
(let ((not-installed (loop for x in installing-package-list
                           when (not (package-installed-p x))
                           collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))


;; ----------------------------------------------------------------------------
;; brief   : init-loader configuration.
;; note    : init-loader: emacs configuration loader
;; ----------------------------------------------------------------------------
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
