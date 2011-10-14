;; load the latest org-mode version
(add-to-list 'load-path "~/.emacs.d/vendor/org-mode/lisp")
(require 'org-install)
(require 'ob-tangle)

;; load all files ending with a ".org"
(mapc #'org-babel-load-file
      (directory-files "~/.emacs.d/init-files" t "\\.org$"))
