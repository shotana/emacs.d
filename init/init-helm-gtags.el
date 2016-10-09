(require 'helm-gtags)
(setq helm-gtags-ignore-case 1)
(setq helm-gtags-auto-update 1)
(global-set-key (kbd "C-c j") 'helm-gtags-dwim)
(global-set-key (kbd "C-c t") 'gtags-find-tag)
(global-set-key (kbd "C-c r") 'helm-gtags-find-rtag)
(global-set-key (kbd "C-c b") 'helm-gtags-previous-history)
(global-set-key (kbd "C-c f") 'helm-gtags-next-history)
(global-set-key (kbd "C-c s") 'helm-gtags-find-symbol)
