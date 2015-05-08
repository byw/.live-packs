;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")

;; company mode
(live-add-pack-lib "company-mode")
(require 'company)
(global-company-mode t)

;; tramp
(setq tramp-default-method "ssh")

;; highlight symbol at cursor throughout buffer
(live-add-pack-lib "highlight-symbol.el")
(require 'highlight-symbol)
(add-hook 'ruby-mode-hook 'highlight-symbol-mode)
(add-hook 'clojure-mode-hook 'highlight-symbol-mode)
