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

(defun cg505/halve-font-size (arg)
  "Double font size in selected frame, or with prefix ARG, halve."
  (interactive "P")
  (let ((height (face-attribute 'default :height)))
    (if arg
        (setf height (* height 2))
      (setf height (/ height 2)))
    (set-face-attribute 'default (selected-frame) :height height)))

(electric-indent-mode -1)

(provide 'cg505-hub)
