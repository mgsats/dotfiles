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

(straight-use-package 'evil)
(evil-mode)

(straight-use-package 'doom-themes)
(load-theme 'doom-city-lights t)

(straight-use-package 'doom-modeline)
(doom-modeline-mode 1)

(straight-use-package 'ns-auto-titlebar)
(when (eq system-type 'darwin) (ns-auto-titlebar-mode))

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(add-to-list 'default-frame-alist
             '(font . "Source Code Pro-14"))

(tool-bar-mode -1)

(straight-use-package 'which-key)
(which-key-mode)

