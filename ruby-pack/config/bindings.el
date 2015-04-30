;; Place your bindings here.

;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)

;; ruby-refactor
(global-set-key (kbd "C-c r e") 'ruby-refactor-extract-to-method)
(global-set-key (kbd "C-c r v") 'ruby-refactor-extract-local-variable)
(global-set-key (kbd "C-c r c") 'ruby-refactor-extract-constant)
(global-set-key (kbd "C-c r p") 'ruby-refactor-add-parameter)
(global-set-key (kbd "C-c r l") 'ruby-refactor-extract-to-let)
