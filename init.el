;;; init.el - Where it all begins

;; Turn off early to avoid momentary display.
(mapc
 (lambda (mode)
   (if (fboundp mode)
       (funcall mode -1)))
 '(menu-bar-mode tool-bar-mode scroll-bar-mode))

;; Defining constants to some directories.
(defconst emacs-dir
  (file-name-directory (or (buffer-file-name) load-file-name))
  "Path to .emacs.d directory.")

(defconst vendor-dir
  (expand-file-name "vendor" emacs-dir)
  "Path to vendor directory.")

;; Set up 'load path' loading a separated file.
(load (expand-file-name "paths.el" emacs-dir))

(require 'package-spec)
(require 'misc)
(require 'ido-config)
(require 'defuns)
(require 'bindings)
(require 'programming)
(require 'macros)

;; Load specific Mac Os X stuff
(if (eq system-type 'darwin)
    (require 'osx))
