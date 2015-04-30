;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")


(live-add-pack-lib "ruby-refactor")
(require 'ruby-refactor)
(add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)

(live-add-pack-lib "rvm")
(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session

(live-add-pack-lib "inf-ruby")
(require 'inf-ruby)
(autoload 'inf-ruby-minor-mode "inf-ruby" "Run an inferior Ruby process" t)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)

;; robe is for jump through ruby code with a live ruby process
(live-add-pack-lib "robe")
(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)

(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

(push 'company-robe company-backends)
