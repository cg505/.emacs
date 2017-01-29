(kotct/personal-packages material-theme
                         paredit)

;; windmove keybindings with shift
(global-set-key (kbd "C-S-i") 'windmove-up)
(global-set-key (kbd "C-S-j") 'windmove-left)
(global-set-key (kbd "C-S-k") 'windmove-down)
(global-set-key (kbd "C-S-l") 'windmove-right)
(global-set-key (kbd "C-M-S-i") 'buf-move-up)
(global-set-key (kbd "C-M-S-j") 'buf-move-left)
(global-set-key (kbd "C-M-S-k") 'buf-move-down)
(global-set-key (kbd "C-M-S-l") 'buf-move-right)

(kotct/ido-set-menu-mode 'vertical)

(kotct/switch-to-theme 'material)

(add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode +1)))

(provide 'cg505-hub)
