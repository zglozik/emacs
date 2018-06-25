
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(company-backends (quote (company-gtags)))
 '(desktop-save-mode t)
 '(indent-tabs-mode nil)
 '(make-backup-files nil)
 '(package-selected-packages
   (quote
    (company-c-headers ggtags markdown-preview-mode markdown-mode jedi cl-generic))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; set up auto-complete
(ac-config-default)
(setq auto-complete-mode t)
;; disable auto-complete by default
(setq ac-auto-start nil)
(define-key ac-mode-map (kbd "<C-tab>") 'auto-complete)

(add-hook 'c-mode-common-hook (lambda () (ggtags-mode 1)))
