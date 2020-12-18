;; Bootstrap code for straight.el
;; https://github.com/raxod502/straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(use-package evil
    :config
    (evil-mode))

(use-package doom-themes
    :config
    (load-theme 'doom-city-lights t))

(use-package dashboard
    :config
    (dashboard-setup-startup-hook)
    (setq dashboard-startup-banner 'logo))

(use-package doom-modeline
    :config
    (doom-modeline-mode 1))

(use-package ns-auto-titlebar
    :config
    (when (eq system-type 'darwin) (ns-auto-titlebar-mode)))

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(add-to-list 'default-frame-alist
             '(font . "Source Code Pro-14"))

(tool-bar-mode -1)

(use-package which-key
    :config
    (which-key-mode))

(use-package projectile
    :config
    (projectile-mode +1)
    (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))
