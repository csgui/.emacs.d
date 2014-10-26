;;; programming.el --- Programming stuff

(add-hook 'markdown-mode-hook
          (lambda ()
            (define-key markdown-mode-map (kbd "M-n") nil)
            (define-key markdown-mode-map (kbd "M-p") nil)))

(subword-mode 1)

(require 'markdown-mode)
(require 'yaml-mode)
(require 'feature-mode)
(require 'html-script-src)
(require 'haml-mode)
(require 'sass-mode)

(require 'csgui-ruby)

(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))
(add-to-list 'auto-mode-alist '("\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\.md$" . markdown-mode))
;; Use `js-mode' for ActionScript.
(add-to-list 'auto-mode-alist '("\\.as$" . js-mode))

(add-hook 'compilation-shell-minor-mode-hook 'ansi-color-for-comint-mode-on)

(provide 'programming)
