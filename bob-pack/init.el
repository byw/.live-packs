;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")

(live-add-pack-lib "company-mode")
(require 'company)
(global-company-mode t)

(live-add-pack-lib "scss-mode")
(require 'scss-mode)
(setq css-indent-offset 2)

(live-add-pack-lib "haml-mode")
(require 'haml-mode)

(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))


(setq exec-path (append exec-path '("~/bin")))

(setq clojure-defun-style-default-indent t)
