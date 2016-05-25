;; emacs conf

;; set faces
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "SlateBlue1"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "chartreuse"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "orange1"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "DeepPink1"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#8b7500"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#8b7500"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#8b7500"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#8b7500"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "red")))))

;; key bindings

;; make shrinking a window possible
;;(global-unset-key (kbd "C-w C-w"))
;;(global-set-key (kbd "C-w C-w") 'shrink-window)

;; org-mode specific key bindings
(setq org-todo-keywords
      '((sequence "TODO" "IN PROGRESS" "NEEDS CLARIFICATION" "DONE")))

;; highlight bolded text
;;(add-to-list 'org-emphasis-alist
;;             '("*" (:background "white", :foreground "red")
;;               ))



(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-message t)

(fset 'yes-or-no-p 'y-or-n-p)

(delete-selection-mode t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)
(set-fringe-style -1)
(tooltip-mode -1)

;; set up melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; for mac, use the reguar $PATH
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;customize theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/moe-theme.el/")
(add-to-list 'load-path "~/.emacs.d/moe-theme.el/")
(require 'moe-theme)
(moe-dark)
(moe-theme-set-color 'cyan)


;; set up evil mode for better navigation
(require 'evil)
(evil-mode t)

;; line number
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'linum-mode)

;; add spacing between line numbers and text
(setq linum-format "%d ")

;; auto complete files when searching
;;(add-to-list load-path "~/.emacs.d/ido-vertical-mode")
(require 'ido)
(ido-mode 1)
;; (ido-vertical-mode 1)

;; rainbow delimeterssssss
(add-to-list 'load-path "~/.emacs.d/rainbow-delimiters")
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; jump to next match at current mark
(require 'smartscan)
(global-smartscan-mode t)

;; show context based help
(require 'discover)
(global-discover-mode t)

;; Zoom into the current window while saving current setup
(require 'zoom-window)
(global-set-key (kbd "C-x C-z") 'zoom-window-zoom)
(setq zoom-window-mode-line-color "DarkGreen")

;; keybinding for magit-status
(global-set-key (kbd "C-c m") 'magit-status)

;; ruby specifics

;; run bundler commands from within emacs
(require 'bundler)

;; use rbenv within emacs
(setq rbenv-installation-dir "~/.rbenv")
(setq rbenv-show-active-ruby-in-modeline nil)
(require 'rbenv)
(global-rbenv-mode)

;; robe for documentation
(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)

;; slim syntax highlighting
(add-to-list 'load-path "~/.emacs.d/slim-syntax")
(require 'slim-mode)


;; auto complete in buffers
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(eval-after-load 'company
  '(push 'company-robe company-backends))

;; rinari: used to naviagte quickly through rails projects
(add-to-list 'load-path "~/.emacs.d/rinari")
(require 'rinari)
(add-hook 'ruby-mode-hook 'rinari-minor-mode)

;; static linting
(require 'rubocop)
(add-hook 'ruby-mode-hook #'rubocop-mode)

;; rspec from emacs
(require 'rspec-mode)

;; I want rspec instead of rake spec
(setq rspec-use-rake-when-possible nil)
;; Scroll to the first test failure
(setq compilation-scroll-output 'first-error)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives (quote (("melpa" . "https://melpa.org/packages/")))))
