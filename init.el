;; Bootstrap el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)


;; Initialize package
(require 'package)
(package-initialize)


;; Packages archives
(setq package-archives(quote(
     ("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")
     ("org" . "http://orgmode.org/elpa/")) )
)


;; Install use-package if not already installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
)


;; Install org package if not already installed
(use-package org :ensure t)

(org-babel-load-file "~/.emacs.d/config.org")


