(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(require 'package)
(package-initialize)

;; Makes possible to use latex-math-mode for writing in Org
(require 'latex)
(require 'iso-transl)

;; Loads robbyrussel theme in eshell git mode
(eshell-git-prompt-use-theme 'powerline)


;; Macro to toggle complete preview of latex of an .org file
;; Asign this macro to keybinding C-x C-o
(fset 'org-latex-complete-preview
      (lambda (&optional arg) "Keyboard macro." (interactive "p")
        (kmacro-exec-ring-item
         (quote ("" 0 "%d")) arg)
        )
      )
(global-set-key (kbd "C-x C-o") 'org-latex-complete-preview)



(fset 'duplicate-previous-line
      (lambda (&optional arg) "Keyboard macro." (interactive "p")
        (kmacro-exec-ring-item
         (quote ([67108896 1 23 2 67108896 1 134217847 14 25 120 backspace] 0 "%d")) arg)
        )
      )
(global-set-key (kbd "C-x p") 'duplicate-previous-line)


;; Adds keybingdings for Magit
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)


;; Adds keybindings for ace-mc (multiple cursors)
(global-set-key (kbd "C-)") 'ace-mc-add-multiple-cursors)
(global-set-key (kbd "C-M-)") 'ace-mc-add-single-cursor)

;; Changes gdb command to load ARM version of debugger
(setq gud-gdb-command-name "/usr/bin/arm-none-eabi-gdb")

(setq-default indent-tabs-mode nil)

;; Enables Visual Line Mode to wrap lines when reaching to the window edge
(global-visual-line-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-math-abbrev-prefix "ç")
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-buffer-indent 2)
 '(custom-enabled-themes (quote (wombat)))
 '(ess-default-style (quote DEFAULT))
 '(ess-delete-dump-files t)
 '(ess-indent-with-fancy-comments nil)
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
 '(fancy-splash-image "")
 '(global-linum-mode t)
 '(global-magit-file-mode t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(inferior-ess-client-command "Initial")
 '(inferior-ess-client-name "Initial")
 '(inferior-ess-ddeclient "Initial")
 '(inhibit-startup-screen t)
 '(initial-buffer-choice nil)
 '(mail-default-directory "~/")
 '(markdown-command "/usr/bin/pandoc")
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 1.3 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(org-latex-create-formula-image-program (quote imagemagick))
 '(org-list-allow-alphabetical t)
 '(org-preview-latex-default-process (quote imagemagick))
 '(org-startup-with-inline-images t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-enable-at-startup t)
 '(package-selected-packages
   (quote
    (ox-reveal flycheck ace-mc auctex websocket julia-mode markdown-preview-eww yaml-mode magit deferred try ob-sagemath sage-shell-mode eshell-git-prompt ess markdown-mode org)))
 '(server-mode t)
 '(standard-indent 2)
 '(tool-bar-mode nil))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "white")))))


(put 'downcase-region 'disabled nil)


(require 'ess-site)
;; Python,R snippets in org-mode

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python .t)
   (R .t)
   (emacs-lisp . t)
   (js .t)))

;; Enables automatic inline-displaying of images
(add-hook 'org-babel-after-execute-hook 'org-display-inline-images)

;; Configures .s extension with asm-mode
(add-to-list 'auto-mode-alist '("\\.s\\'" . asm-mode))


;; Configures flycheck for every language
(add-hook 'after-init-hook #'global-flycheck-mode)


;; Takes care of code highlightings in org-mode
;; org-latex-packages-alist lists global packages
(setq org-latex-listings 'minted
      org-latex-packages-alist '(("" "minted"))
      org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))


