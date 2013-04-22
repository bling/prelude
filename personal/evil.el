(prelude-ensure-module-deps
  '(evil
    evil-numbers
    evil-leader
    evil-nerd-commenter
    surround))

(evil-mode 1)
(global-surround-mode 1)
(require 'evil-leader)

; configuration for leader keys
(evil-leader/set-leader ",")
(evil-leader/set-key "b" 'switch-to-buffer)
(evil-leader/set-key "v" 'split-window-horizontally)
(evil-leader/set-key "s" 'split-window-vertically)
(evil-leader/set-key "ci" 'evilnc-comment-or-uncomment-lines)
(evil-leader/set-key "cc" 'evilnc-comment-or-uncomment-to-the-line)

(define-key evil-normal-state-map (kbd "C-p") 'helm-prelude)
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)

(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

(define-key evil-normal-state-map (kbd "[ b") 'previous-buffer)
(define-key evil-normal-state-map (kbd "] b") 'next-buffer)

(define-key evil-motion-state-map "j" 'evil-next-visual-line)
(define-key evil-motion-state-map "k" 'evil-previous-visual-line)

(define-key evil-normal-state-map (kbd "Q") 'kill-this-buffer)

(provide 'evil)
;;; evil.el ends here
