;; Variables

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-math-abbrev-prefix "ç")
 ;; List of keybindings for Latex-math-mode
 '(LaTeX-math-list
   (quote
    ((81 "mathbb{Q}")
     (90 "mathbb{Z}")
     (82 "mathbb{R}")
     (78 "mathbb{N}"))))
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
 '(inferior-ess-client-command "Initial")
 '(inferior-ess-client-name "Initial")
 '(inferior-ess-ddeclient "Initial")
 '(inhibit-startup-screen t)
 ;; File to open at startup
 '(initial-buffer-choice "/home/nuwanda/.emacs.d/TODO.org")
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
 '(package-enable-at-startup t)
 '(package-selected-packages
   (quote
    (org-beautify-theme org-plus-contrib org org-bullets flycheck-haskell ox-reveal flycheck ace-mc websocket julia-mode markdown-preview-eww yaml-mode magit deferred try ob-sagemath sage-shell-mode eshell-git-prompt ess markdown-mode)))
 '(standard-indent 2)
 '(tool-bar-mode nil))



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "white")))))
