;;; init.el --- Summary:
;;; Commentary:
;;; Emacs configs for org & clojure development

;;; Code:
;; Avoid garbage collection at statup
(setq gc-cons-threshold most-positive-fixnum ; 2^61 bytes
      gc-cons-percentage 0.6)

;; All the settings and package installation is set in configuration.org
(org-babel-load-file (expand-file-name "configuration.org"
                                       user-emacs-directory))

(add-hook 'emacs-startup-hook
  (lambda ()
    (setq gc-cons-threshold 300000000 ; 300mb
          gc-cons-percentage 0.1)))

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" default))
 '(package-selected-packages
   '(zenburn-theme yasnippet-snippets yaml-mode which-key use-package undo-tree toml-mode smex smart-mode-line-powerline-theme scala-mode sbt-mode rustic rainbow-delimiters plantuml-mode pdf-tools ox-reveal org-roam org-noter org-contrib org-bullets markdown-preview-mode magit lsp-ui lsp-java lsp-ivy inf-clojure ido-vertical-mode htmlize helm-projectile helm-lsp helm-descbinds helm-bibtex helm-ag gradle-mode git-gutter flycheck-rust flycheck-joker flx fill-column-indicator fic-mode expand-region exec-path-from-shell edts dockerfile-mode counsel company clojure-snippets clj-refactor cargo beacon ag)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
