(use-package lsp-mode :straight t
	     :hook (
		    (lua-mode . lsp) 
		   )
	     :commands lsp)


(use-package lsp-ui :straight t :commands lsp-ui-mode)

		    
