;;; init.el --- Summary:
;; Emacs configs for org & clojure development

;;; Code:

;; package management
(require 'package)

(setq package-enable-at-startup nil) ; Don't initialize later as well
(setq package-check-signature nil)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(setq package-user-dir (concat user-emacs-directory "vendors"))

(package-initialize)

;; use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(unless (package-installed-p 'quelpa)
    (with-temp-buffer
      (url-insert-file-contents "https://github.com/quelpa/quelpa/raw/master/quelpa.el")
      (eval-buffer)
      (quelpa-self-upgrade)))

(eval-when-compile
  (require 'quelpa))

;; org mode
(use-package org
  :ensure org-plus-contrib)

(load-library "url-handlers")

(add-to-list 'load-path (expand-file-name "plugins" user-emacs-directory))

;; Load private variables
(when (file-exists-p (expand-file-name "private-variables.el" user-emacs-directory))
  (load-file (expand-file-name "private-variables.el" user-emacs-directory)))

;; Setup everything
;; (org-babel-load-file (format "%s/configuration.org" user-emacs-directory))
(org-babel-load-file (expand-file-name "configuration.org" user-emacs-directory))

(provide 'init)

(put 'upcase-region 'disabled nil)
(put 'magit-clean 'disabled nil)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("76c5b2592c62f6b48923c00f97f74bcb7ddb741618283bdb2be35f3c0e1030e3" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(origami-show-fold-header t t)
 '(package-selected-packages
   (quote
    (smart-mode-line edts erlang erlang-mode zenburn-theme yasnippet-snippets yaml-mode which-key use-package-chords undo-tree toml-mode solarized-theme smex smart-mode-line-powerline-theme scala-mode sbt-mode sayid rainbow-delimiters quelpa-use-package plantuml-mode pdf-tools ox-reveal origami org-plus-contrib org-bullets markdown-preview-mode magit lsp-ui lsp-java intero interleave inf-clojure ido-vertical-mode htmlize hl-sexp helm-projectile helm-lsp helm-bibtex helm-ag gradle-mode git-gutter flycheck-rust flycheck-joker flx fill-column-indicator fic-mode expand-region exec-path-from-shell dockerfile-mode dap-mode counsel company-lsp clojure-snippets clj-refactor cargo beacon ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(origami-fold-fringe-face ((t (:inherit magit-diff-context-highlight))))
 '(origami-fold-replacement-face ((t (:inherit magit-diff-context-highlight)))))
