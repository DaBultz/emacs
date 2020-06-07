(setq lsp-client-emmy-lua-jar-path "~/.emacs.d/plugins/lsp/EmmyLua-LS-all.jar")

(use-package company-lsp
  :straight t
  :after lsp-mode
  :config
  (setq company-lsp-enable-recompletion t)
  (setq lsp-auto-configure nil)
  )

(use-package lsp-lua-emmy
  :straight t
  :deman
  :load)
