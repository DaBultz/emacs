(setq ring-bell-function 'ignore        ; don't beep
      x-gtk-use-system-tooltips nil     ; no gui popups
      use-dialog-box nil                ; no gui popups dammit!
      echo-keystrokes 0.5               ; echo keystrokes faster
      confirm-kill-processes nil        ; just kill the process
      disabled-command-function nil)    ; enable all commands

;; Disable UI
(menu-bar-mode -1)                      ; menu-bar is gone
(tool-bar-mode -1)                      ; tool-bar is gone
(scroll-bar-mode -1)                    ; scroll-bar is gone
(blink-cursor-mode 0)                   ; stop blinking on me!
(show-paren-mode 1)                     ; highlight matching parens
(column-number-mode t)

;; yes/no short hand
(defalias 'yes-or-no-p 'y-or-n-p)

;; Scrolling
(setq mouse-wheel-scroll-amount '(1)    ; scroll gentle
      mouse-wheel-progressive-speed nil ; don't accelerate
      scroll-conservatively 101         ; don't jump to the middle of screen
      hscroll-margin 1                  ; don't you scroll that early!
      hscroll-step 1                    ; but scroll just a bit
      scroll-preserve-screen-position t) ; try to keep cursor in its position

;; Backups
(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      delete-old-versions -1
      version-control t
      vc-make-backup-files t
      auto-save-list-file-prefix "~/.emacs.d/autosave/"
      auto-save-file-name-transforms '((".*" "~/.emacs.d/autosave/" t)))


;; don't create stupid lockfiles
(setq create-lockfiles nil)

;; Theme
(use-package gruvbox-theme :straight t)
(load-theme 'gruvbox t)

;; Font
;; https://github.com/source-foundry/Hackhttps://github.com/source-foundry/Hack
(set-frame-font "Hack-12" nil t)

;; Powerline
(use-package all-the-icons :straight t) ;; install fonts with M-x all-the-icons-install-fonts
(use-package doom-modeline :straight t)
(doom-modeline-mode 1)
