(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(blink-cursor-mode nil)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (wombat)))
 '(font-use-system-font t)
 '(ido-create-new-buffer (quote always))
 '(ido-enable-prefix t)
 '(ido-max-window-height 7)
 '(ido-vertical-define-keys (quote C-n-C-p-up-and-down))
 '(inhibit-startup-screen t)
 '(rainbow-delimiters-max-face-count 3)
 '(show-paren-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#3C3C3C" :foreground "gray80" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 111 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(bg:erc-color-face4 ((t (:background "brown"))))
 '(bg:erc-color-face5 ((t (:background "dark red"))))

 ;; Cursor color
 '(cursor ((t (:background "IndianRed1"))))
 '(erc-current-nick-face ((t (:foreground "gold"))))
 '(erc-input-face ((t (:foreground "dim gray"))))
 '(erc-keyword-face ((t (:foreground "chartreuse"))))
 '(erc-my-nick-face ((t (:foreground "orange"))))
 '(erc-my-nick-prefix-face ((t nil)))
 '(erc-nick-default-face ((t nil)))
 '(erc-nick-msg-face ((t (:foreground "orange" :weight bold))))
 '(erc-nick-prefix-face ((t nil)))
 '(erc-notice-face ((t (:foreground "slate gray"))))
 '(erc-pal-face ((t (:foreground "orchid"))))
 '(erc-prompt-face ((t (:foreground "orange"))))
 '(erc-timestamp-face ((t (:foreground "dim gray"))))
 '(error ((t (:foreground "orange red"))))

 ;; standard colors
 '(font-lock-comment-delimiter-face ((t (:foreground "sea green"))))
 '(font-lock-comment-face ((t (:foreground "sea green"))))
 '(font-lock-function-name-face ((t (:foreground "orchid"))))
 '(font-lock-preprocessor-face ((t (:foreground "gold3"))))
 '(font-lock-type-face ((t (:foreground "MediumPurple1"))))

 
 '(fringe ((t (:inherit default :background "#3C3C3C"))))
 '(header-line ((t (:background "grey16" :foreground "gray" :box (:line-width 2 :color "grey18")))))
 '(hi-blue-b ((t (:foreground "dodger blue" :weight bold))))
 '(hi-red-b ((t (:foreground "orange red" :weight bold))))
 '(highlight ((t (:background "gray17"))))
 '(highlight-changes ((t (:foreground "lime green"))))
 '(highlight-changes-delete ((t (:foreground "firebrick3" :underline t))))
 '(ido-first-match ((t (:background "IndianRed1" :foreground "gray12" :weight bold))))
 '(ido-indicator ((t (:background "gray10" :foreground "IndianRed1" :width condensed))))
 '(ido-subdir ((t (:foreground "IndianRed1"))))
 '(linum ((t (:inherit (shadow default) :foreground "dim gray"))))
 '(mode-line ((t (:background "grey14" :foreground "gray75" :box (:line-width 2 :color "gray20")))))
 '(mode-line-buffer-id ((t (:foreground "indian red" :box (:line-width 2 :color "gray20") :weight thin))))
 '(mode-line-emphasis ((t nil)))
 '(mode-line-highlight ((t nil)))
 '(mode-line-inactive ((t (:background "gray14" :foreground "gray26" :box (:line-width 2 :color "gray20")))))
 '(powerline-inactive1 ((t (:inherit mode-line-inactive :background "grey18"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "orange"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "chartreuse"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "cyan"))))
 '(region ((t (:background "gray17"))))
 '(term ((t (:inherit default :background "#3C3C3C" :foreground "gray75"))))
 '(term-color-black ((t (:background "gray17" :foreground "gray75"))))
 '(term-color-blue ((t (:background "slate blue" :foreground "dodger blue"))))
 '(term-color-cyan ((t (:background "dark cyan" :foreground "dark turquoise"))))
 '(term-color-green ((t (:background "sea green" :foreground "medium sea green"))))
 '(term-color-magenta ((t (:background "MediumPurple" :foreground "orchid"))))
 '(term-color-red ((t (:background "IndianRed4" :foreground "IndianRed1"))))
 '(term-color-white ((t (:background "gray32" :foreground "gray75"))))
 '(term-color-yellow ((t (:background "gray40" :foreground "orange1"))))
 '(vertical-border ((t (:inherit mode-line-inactive :foreground "dim gray"))))
 '(window-divider-last-pixel ((t (:foreground "IndianRed1")))))

;; disable toolbar
(tool-bar-mode -1)

(setq package-list '(rainbow-delimeters evil))


;; set deafult browser to chrome
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome-stable")


;; Stupid black bars
(set-fringe-mode '(1 . 1))

;; hook rainbow delims
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; extra highlighting for c-mode

;; pointer operators/symbols
(font-lock-add-keywords 'c-mode
  '(("*" . font-lock-builtin-face)))

(font-lock-add-keywords 'c-mode
  '(("&" . font-lock-builtin-face)))

;; other operators
(font-lock-add-keywords 'c-mode
                       '(("[]~^=<>&/.,\\[\\|\\*\\+\\-]" . font-lock-builtin-face)))

;; function calls should be highlighted the same way macros are

;; ripped from SO somewhere
(setq func-process-regex '(("\\(\\w+\\)\\s-*\(" (1 font-lock-preprocessor-face))))

;; assign to C, Java
(font-lock-add-keywords 'c-mode func-process-regex t)
(font-lock-add-keywords 'java-mode func-process-regex t)

;; the GTK emacs24 scrolling thingy is wayyy too fast, I'm setting it to 4
(setq mouse-wheel-scroll-amount '(4))
(setq mouse-wheel-progressive-speed nil)
(setq auto-window-vscroll nil)

;; kill buffer without asking, unless unsaved changes
(global-set-key (kbd "C-x k") 'kill-this-buffer)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
 (package-initialize)

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(require 'evil)
(evil-mode 1)

;; Line numbers
(add-hook 'prog-mode-hook 'linum-mode)

;; ruby syntax checking
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

;; make file searchs easier
(require 'ido)
(ido-mode 1)

;; fix ruby crazy indenting
(setq ruby-deep-indent-paren nil)

;; set up robe for method documentation
(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)

;; ido vertical mode!
(require 'ido-vertical-mode)
(ido-vertical-mode 1)

;; set global syntax checking
(global-flycheck-mode)

;; start ruby REPL buffer
(global-set-key (kbd "C-c r") 'inf-ruby)

;; company-mode for better completion with roby
(global-company-mode t)
(push 'company-robe company-backends)
(semantic-mode 1)

;; 4 spaces instead of tabs
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)

;; Set up path to ctags
(setq path-to-ctags "/usr/local/bin/ctags")

;; create tags for current project
(defun create-tags (dir-name)
    "Create tags file."
    (interactive "DDirectory: ")
    (shell-command
     (format "ctags -f %s -e -R %s" path-to-ctags (directory-file-name dir-name)))
)

(defun compile-tags ()
  "compile etags for the current project"
  (interactive)
  (compile "find . -name \"*.[chCH]\" -print | etags -"))

(setq tags-table-list
      '("~/emacs" "/usr/local/lib/emacs/src" "/home/forester/.config"))

;; burn in hell scrollbar
(scroll-bar-mode -1)

(provide '.emacs)

;;; .emacs ends here
