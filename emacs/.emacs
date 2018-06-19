;;; package --- Summary
;;; Code:
;;; Commentary:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-indent-level 4)
 '(LaTeX-item-indent 0)
 '(auto-save-default nil)
 '(background-mode light)
 '(c-basic-offset 4)
 '(c-default-style "ellemtel")
 '(compilation-scroll-output (quote first-error))
 '(custom-enabled-themes (quote (ample-light)))
 '(custom-safe-themes
   (quote
    ("ed317c0a3387be628a48c4bbdb316b4fa645a414838149069210b66dd521733f" default)))
 '(default-tab-width 4 t)
 '(desktop-file-name-format (quote tilde))
 '(desktop-load-locked-desktop nil)
 '(desktop-save nil)
 '(desktop-save-mode nil)
 '(dired-listing-switches "-alh")
 '(dired-use-ls-dired nil)
 '(display-time-mode t)
 '(fill-column 110)
 '(fiplr-ignored-globs
   (quote
    ((directories
      (".git" ".svn" ".hg" ".bzr" ".tox"))
     (files
      (".#*" "*~" "*.so" "*.jpg" "*.png" "*.gif" "*.pdf" "*.gz" "*.zip" "*.aux" "*.pyc")))))
 '(flycheck-flake8-maximum-line-length 200)
 '(flycheck-python-flake8-executable "/usr/local/bin/flake8")
 '(flycheck-python-pylint-executable "/usr/local/bin/pylint")
 '(grep-find-ignored-directories
   (quote
    ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" ".tox" "deprecated" "html" "htmlcov" "ccm-plugin-dummy")))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-major-mode (quote org-mode))
 '(initial-scratch-message "* SCRATCH
  ")
 '(ispell-dictionary "british")
 '(iswitchb-mode t)
 '(magit-log-section-arguments (quote ("--decorate" "-n256")))
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (python . t))))
 '(org-src-fontify-natively t)
 '(org-src-tab-acts-natively t)
 '(org-tags-column -110)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(package-selected-packages
   (quote
    (python-django minimap jedi ag helm flycheck restclient ergoemacs-status mode-icons powerline pycoverage json-mode yaml-mode marmalade-client ## wgrep rainbow-delimiters magit flymake-python-pyflakes flycheck-pyflakes fiplr fastnav dumb-jump color-theme ample-theme)))
 '(scroll-conservatively 101)
 '(show-paren-mode t)
 '(tab-width 4)
 '(tex-default-mode (quote TeX-latex-mode))
 '(tool-bar-mode nil)
 '(xterm-mouse-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "microsoft" :slant normal :weight light :height 110 :width normal))))
 '(hl-line ((t (:background "color-236"))))
 '(vimish-fold-overlay ((t (:inherit highlight :background "red" :foreground "white"))))
 '(wgrep-face ((t (:inverse-video t)))))

(setq-default line-spacing 0.2)

(put 'dired-find-alternate-file 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(fset 'yes-or-no-p 'y-or-n-p)

(if window-system
    (progn ; In window system
      (scroll-bar-mode -1)
      (fringe-mode -1))
  )

(global-subword-mode)
(display-time-mode)

(c-set-offset 'innamespace 0)

(global-set-key "\C-c l" 'org-store-link)

(global-set-key "\C-x\C-b" 'ibuffer-other-window)

;;(global-set-key "\C-z" nil)
;;(global-set-key "\M-c" 'execute-extended-command)
;;(global-set-key "\C-x\C-u" 'undo) ; Somtimes mistaken for undo
(global-set-key "\C-xp" (lambda () (interactive) (other-window -1))) ; Select previous window

(global-set-key (kbd "ESC <left>") 'windmove-left)
(global-set-key (kbd "ESC <up>") 'windmove-up)
(global-set-key (kbd "ESC <right>") 'windmove-right)
(global-set-key (kbd "ESC <down>") 'windmove-down)

(global-set-key (kbd "<f9>") 'compile)

;; (require 'fastnav)
(global-set-key "\C-z" 'fastnav-jump-to-char-forward)
(global-set-key "\M-z" 'fastnav-zap-to-char-forward)

;; (require 'fiplr)
(global-set-key "\C-cff" 'fiplr-find-file)
(global-set-key "\C-cfc" 'fiplr-clear-cache)
(global-set-key "\C-cfd" 'fiplr-find-directory)

;; (require 'vimish-fold)
(global-set-key (kbd "C-c C-f C-f") 'vimish-fold)
(global-set-key (kbd "C-c C-f C-d") 'vimish-fold-delete)
(global-set-key (kbd "C-c C-f C-r") 'vimish-fold-delete-all)

;; begin mac specific shite
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(global-set-key (kbd "C-/") 'undo)
(global-set-key (kbd "<wheel-up>") 'scroll-up-10-lines)
(global-set-key (kbd "<mouse-5>") 'scroll-up-10-lines)
(global-set-key (kbd "<Wheel-down>") 'scroll-down-10-lines)
(global-set-key (kbd "<mouse-4>") 'scroll-down-10-lines)
;; end

(package-initialize)
;; (require 'color-theme)
;; (setq color-theme-is-global t)
;; (color-theme-initialize)
;; (color-theme-dark-laptop)
(ample-light-theme)
(setq file-name-shadow-properties file-name-shadow-tty-properties)

(global-set-key (kbd "C-c C-g") 'magit-status)
(global-set-key (kbd "C-c C-r") 'revert-buffer)

(dumb-jump-mode)

(defun fsh-windmove-up()
  (interactive)
  (condition-case nil
      (windmove-up)
    (error (other-frame 1))
    )
  )
(defun fsh-windmove-down()
  (interactive)
  (condition-case nil
      (windmove-down)
    (error (other-frame 1))
    )
  )
(defun fsh-windmove-left()
  (interactive)
  (condition-case nil
      (windmove-left)
    (error (other-frame 1))
    )
  )
(defun fsh-windmove-right()
  (interactive)
  (condition-case nil
      (windmove-right)
    (error (other-frame 1))
    )
  )

;; windmove keybindings
(global-set-key [\M-kp-6] 'fsh-windmove-right)
(global-set-key [\M-kp-4] 'fsh-windmove-left)
(global-set-key [\M-kp-8] 'fsh-windmove-up)
(global-set-key [\M-kp-2] 'fsh-windmove-down)

(global-set-key [\M-kp-1] 'shrink-window)
(global-set-key [\M-kp-7] 'enlarge-window)
(global-set-key [\M-kp-5] 'balance-windows)
(global-set-key [\M-kp-9] 'enlarge-window-horizontally)
(global-set-key [\M-kp-3] 'shrink-window-horizontally)

(defun fsh-date ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(defun fsh-timestamp ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d %H:%M:%S")))

(defun fsh-create-org-scratch-buffer nil
  "create a scratch org-buffer"
  (interactive)
  (switch-to-buffer (get-buffer-create "*org-scratch*"))
  (org-mode))

(defun fsh-kill-all-buffers ()
  "Kill all buffers."
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

;(fsh-create-org-scratch-buffer)

(defun fsh-term ()
  "Start a numbered terminal"
  (interactive)
  (let ((id 0) (buffer-name "*term-0*"))
    (while (get-buffer buffer-name)
      (setq id (+ id 1))
      (setq buffer-name (concat "*term-" (number-to-string id) "*")))
    (term "/bin/bash")
    (rename-buffer buffer-name)))

(defalias 'fterm 'fsh-term)

(defun fsh-untrampify-path (path)
  (mapconcat 'identity (last (split-string path ":")) ""))

(defun fsh-find-TeX-master (filename)
  (let
      ((path (subseq (split-string filename "/") 0 -1)))
    (while path
      (setq filename (concat (mapconcat 'identity path "/") "/document.tex"))
      (if (file-exists-p filename)
          (setq path nil)
        (setq path (subseq path 0 -1)))))
  (if (file-exists-p filename)
      filename
    "document"))

(require 'tramp)
(require 'tramp-sh)
(defun fsh-sudo ()
  (interactive)
  (find-file
   (if (tramp-tramp-file-p buffer-file-name)
       (with-parsed-tramp-file-name buffer-file-name parsed
         (tramp-make-tramp-file-name
          "sudo"
          "root"
          parsed-host
          parsed-localname
          (let ((tramp-postfix-host-format "|")
                (tramp-prefix-format))
            (tramp-make-tramp-file-name
             "ssh"
             parsed-user
             parsed-host
             ""
             parsed-hop))))
     (tramp-make-tramp-file-name "sudo" "root" "localhost" buffer-file-name))))

(defun fsh-uniq (beg end)
  (interactive "r")
  (save-excursion
    (save-restriction
      (narrow-to-region beg end)
      (sort-lines nil beg end)
      (beginning-of-buffer)
      (replace-regexp "\\([^\n]+\n\\)\\1+" "\\1"))))

(defun sort-words (reverse beg end)
  ;; SEE : http://emacs.stackexchange.com/questions/7548
  (interactive "*P\nr")
  (sort-regexp-fields reverse "\\(\\w\\|-\\|_\\)+" "\\&" beg end))

(defun fsh-startup ()
  (if (eq (current-buffer) (get-buffer "*scratch*"))
      (find-file ".")))

(add-hook 'emacs-startup-hook 'fsh-startup)

;; Auctex configuration
(setq TeX-parse-self t) ; Read variables from files
(setq TeX-one-master "<none>") ; Stop touching my damn files

(defun fsh-latex-mode-hook ()
  (let ((result (fsh-find-TeX-master (buffer-file-name))))
    (setq TeX-master result)
    (set (make-local-variable 'compile-command)
         (concat "make -C " (replace-regexp-in-string "document.tex" "" (fsh-untrampify-path result))))
    ))

(add-hook 'LaTeX-mode-hook 'fsh-latex-mode-hook)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

(defun fsh-latex-follow-include (path)
  (interactive (let* ((master-directory (file-name-directory TeX-master))
                      (filename (format "%s%s.tex" master-directory (current-word)))
                      (directory (file-name-directory filename))
                      (default (file-name-nondirectory filename))
                      (prompt  (read-file-name "Follow LaTeX include: " directory nil nil default)))
                 (list prompt)))
  (find-file path))

(add-hook 'LaTeX-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-i") 'fsh-latex-follow-include)))

(setq TeX-view-program-list '(("Evince" "evince --page-index=%(outpage) %o")))
(setq TeX-view-program-selection '((output-pdf "Evince")))
(add-hook 'LaTeX-mode-hook 'TeX-source-correlate-mode)
(setq TeX-source-correlate-start-server t)

;; Autocomplete configuration
(if (locate-library "auto-complete")
    (progn
      (require 'auto-complete)
      (require 'auto-complete-config)
      (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
      (ac-config-default)))

;; Jedi config
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)  
;;
;; Load external things
;;
;;(load-file "~/.dotfiles/elisp/fsh-log.el")
;;(load-file "~/.dotfiles/elisp/fsh-org.el")
;;(load-file "~/.dotfiles/elisp/fsh-switch.el")
;;(load-file "~/.dotfiles/elisp/fsh-window.el")

;; (setq-default mode-line-format
;;   (list
;;     ;; File status
;;     '(:eval (propertize " %b " 'face 'bold
;;        'help-echo (buffer-file-name)))
;;     '(:eval (when (buffer-modified-p)
;;       (propertize "* " 'face 'bold
;;         'help-echo "Buffer has been modified")))

;;     '(:eval (when buffer-read-only
;;        (propertize "RO " 'face 'bold
;;          'help-echo "Buffer is read-only")))

;;     ;; Cursor location
;;     "("
;;     (propertize "%02l")
;;     ","
;;     (propertize "%02c")
;;     ") "

;;     ;; File location
;;     "["
;;     (propertize "%p")
;;     "/"
;;     (propertize "%I")
;;     "] "

;;     ;; Major Mode
;;     "["
;;     '(:eval (propertize "%m" 'face 'bold
;;       ' help-echo buffer-file-coding-system))
;;     "] "

;;     ;; Clock
;;     '(:eval (propertize (format-time-string "%H:%M ")
;;                       'help-echo
;;                       (concat (format-time-string "%c; ")
;;                               (emacs-uptime "Uptime:%hh"))))

;;     ;; Working path
;;     (propertize "| %@%f")
;; ))
;; Marks Status bar
(require 'ergoemacs-status)
(ergoemacs-status-mode)    
(defun tox ()
  "Add tox py27 function."
  (interactive)
  (compile "tox -epy27"))
(global-set-key (kbd "C-x x") 'tox)
(defun all_tox()
  "Add tox function."
  (interactive)
  (compile "tox"))
(global-set-key (kbd "C-x t") 'all_tox)
(defun cover()
  "Add cover function."
  (interactive)
  (compile "tox -ecover"))
(global-set-key (kbd "C-x c") 'cover)
(defun pep8 ()
  "Add pep8 function."
  (interactive)
  (compile "tox -epep8"))
(global-set-key (kbd "C-x p") 'pep8)
;; Global Key set.
"Turns on/off indents"
(global-set-key (kbd "C-x n") 'electric-indent-mode)
(provide 'dot_emacs)
;;; dot_emacs ends here
(put 'upcase-region 'disabled nil)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

