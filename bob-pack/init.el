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

(live-add-pack-lib "scss-mode")
(require 'scss-mode)
(setq css-indent-offset 2)

(live-add-pack-lib "haml-mode")
(require 'haml-mode)

;; live pairing
(live-add-pack-lib "floobits")
(require 'floobits)

(live-add-pack-lib "git-timemachine")
(require 'git-timemachine)

(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))


(setq exec-path (append exec-path '("~/bin")))

(setq clojure-defun-style-default-indent nil)

;; tramp
(setq tramp-default-method "ssh")

;; highlight symbol at cursor throughout buffer
(live-add-pack-lib "highlight-symbol.el")
(require 'highlight-symbol)
(add-hook 'ruby-mode-hook 'highlight-symbol-mode)
(add-hook 'clojure-mode-hook 'highlight-symbol-mode)
