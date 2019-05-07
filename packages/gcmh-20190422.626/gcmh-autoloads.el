;;; gcmh-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "gcmh" "gcmh.el" (0 0 0 0))
;;; Generated autoloads from gcmh.el

(defvar gcmh-mode nil "\
Non-nil if Gcmh mode is enabled.
See the `gcmh-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `gcmh-mode'.")

(custom-autoload 'gcmh-mode "gcmh" nil)

(autoload 'gcmh-mode "gcmh" "\
Minor mode tweak Garbage Collection strategy.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gcmh" '("gcmh-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gcmh-autoloads.el ends here
