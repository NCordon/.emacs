
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(package-initialize)

;; Loads robbyrussel theme in eshell git mode
(eshell-git-prompt-use-theme 'powerline)
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-buffer-indent 2)
 '(custom-enabled-themes (quote (wombat)))
 '(ess-default-style (quote DEFAULT))
 '(ess-delete-dump-files t)
 '(ess-keep-dump-files "always")
 '(ess-own-style-list
   (quote
    ((ess-indent-offset . 2)
     (ess-offset-arguments . open-delim)
     (ess-offset-arguments-newline . prev-call)
     (ess-offset-block . prev-line)
     (ess-offset-continued . straight)
     (ess-align-nested-calls "ifelse")
     (ess-align-arguments-in-calls "function[ 	]*(")
     (ess-align-continuations-in-calls . t)
     (ess-align-blocks control-flow)
     (ess-indent-from-lhs arguments fun-decl-opening)
     (ess-indent-from-chain-start . t)
     (ess-indent-with-fancy-comments . t))))
 '(global-linum-mode t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(inferior-ess-client-command "Initial")
 '(inferior-ess-client-name "Initial")
 '(inferior-ess-ddeclient "Initial")
 '(inhibit-startup-screen t)
 '(mail-default-directory "~/")
 '(markdown-command "/usr/bin/pandoc")
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 1.3 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(org-latex-create-formula-image-program (quote imagemagick))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/"))))
 '(package-enable-at-startup t)
 '(package-selected-packages
   (quote
    (eshell-git-prompt ess markdown-mode markdown-preview-mode org)))
 '(server-mode t)
 '(standard-indent 2)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "white")))))
(setq-default indent-tabs-mode nil)
(require 'iso-transl)
;; (load "~/.emacs.d/floobits/floobits.el")