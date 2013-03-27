(prelude-ensure-module-deps '(js2-mode flymake-jshint))

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
