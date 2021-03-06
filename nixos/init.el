(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; UI
(menu-bar-mode -1)
(load-theme 'github)
(xterm-mouse-mode)

;; ivy => http://oremacs.com/swiper/#getting-started
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(global-set-key "\C-s" 'swiper)

;; ace-window
(global-set-key (kbd "M-p w") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;; avy
(global-set-key (kbd "M-g c") 'avy-goto-char-2)

;; git
(global-set-key (kbd "M-g s") 'magit-status)

;; Haskell
;; (add-hook 'haskell-mode-hook #'hindent-mode)
(add-hook 'haskell-mode-hook 'structured-haskell-mode)
(require 'shm)
(set-face-background 'shm-current-face "#eee8d5")
(set-face-background 'shm-quarantine-face "lemonchiffon")
(custom-set-variables
 '(haskell-stylish-on-save t))

