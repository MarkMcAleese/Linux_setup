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
 '(compilation-scroll-output t)
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default)))
 '(default-tab-width 4 t)
 '(desktop-file-name-format (quote tilde))
 '(desktop-load-locked-desktop nil)
 '(desktop-save nil)
 '(desktop-save-mode nil)
 '(dired-listing-switches "-alh")
 '(dired-use-ls-dired t)
 '(display-time-mode t)
 '(fill-column 110)
 '(fiplr-ignored-globs
   (quote
    ((directories
      (".git" ".svn" ".hg" ".bzr" ".tox" "*.egg-info" "env"))
     (files
      (".#*" "*~" "*.so" "*.jpg" "*.png" "*.gif" "*.pdf" "*.gz" "*.zip" "*.aux" "*.pyc")))))
 '(git-commit-summary-max-length 50)
 '(global-whitespace-mode t)
 '(grep-find-ignored-directories
   (quote
    ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" ".tox" ".env" "_static*" "junit.xml*")))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-major-mode (quote org-mode))
 '(initial-scratch-message "* SCRATCH
  ")
 '(ispell-dictionary "british")
 '(iswitchb-mode t)
 '(json-reformat:pretty-string\? t)
 '(magit-log-arguments (quote ("--graph" "--color" "--decorate" "-n256")))
 '(make-backup-files nil)
 '(markdown-asymmetric-header t)
 '(menu-bar-mode nil)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (python . t) (ledger . t) )))
 '(org-src-fontify-natively t)
 '(org-src-tab-acts-natively t)
 '(org-src-window-setup (quote other-window))
 '(org-tags-column -110)
 '(org-todo-keyword-faces
   (quote
    (("WIP" . org-wip)
     ("BLOCKED" . org-blocked)
     ("ACTIVE" . org-active)
     ("DONE" . org-done))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "WIP(w)" "ACTIVE(a)" "BLOCKED(b)" "DONE(d)"))))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (browse-kill-ring ample-theme auctex buffer-move color-theme fastnav fiplr fsm gnuplot-mode indent-tools json-mode magit markdown-mode rainbow-delimiters restclient wgrep yafolding yaml-mode)))
 '(scroll-conservatively 101)
 '(show-paren-mode t)
 '(split-height-threshold nil)
 '(split-width-threshold 200)
 '(tab-width 4)
 '(tex-default-mode (quote TeX-latex-mode))
 '(tool-bar-mode nil)
 '(use-dialog-box nil)
 '(xterm-mouse-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "microsoft" :slant normal :weight light :height 110 :width normal))))
 '(hl-line ((t (:background "color-236"))))
 '(magit-branch-current ((t (:inherit magit-branch-local :box 1 :underline t))))
 '(magit-dimmed ((t (:foreground "grey40"))))
 '(wgrep-face ((t (:inverse-video t))))
 '(whitespace-line ((t (:underline t :foreground nil)))))

;; Tell emacs that screen.xterm256color is an alias for xterm-256color
(if (boundp 'term-file-aliases)
    (add-to-list 'term-file-aliases
                 '("screen.xterm-256color" . "xterm-256color")))

(setq-default line-spacing 0.2)

(setq-default
 whitespace-line-column 120
 whitespace-style '(face lines-tail tab-mark tabs trailing empty))

(setq whitespace-style '(face lines-tail tab-mark tabs trailing empty))

(put 'dired-find-alternate-file 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(fset 'yes-or-no-p 'y-or-n-p)

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

;; (require 'magit)
(global-set-key (kbd "C-c g s") 'magit-status)
(global-set-key (kbd "C-c g g") 'magit-status)
(global-set-key (kbd "C-c g b") 'magit-blame-addition)

;; (require 'flyspell)
(global-set-key (kbd "C-c s b") 'flyspell-buffer)
(global-set-key (kbd "C-c s r") 'flyspell-region)
(global-set-key (kbd "C-c s m") 'flyspell-mode)

;; (require 'browse-kill-ring)
(global-set-key (kbd "C-x y") 'browse-kill-ring)

;; (require 'yafolding) yafolding-debug yafolding-ellipsis
(global-set-key (kbd "C-c l m") 'yafolding-mode)
(add-hook 'yafolding-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c l u") 'yafolding-go-parent-element)
            (local-set-key (kbd "C-c l H") 'yafolding-hide-all)
            (local-set-key (kbd "C-c l h") 'yafolding-hide-element)
            (local-set-key (kbd "C-c l p") 'yafolding-hide-parent-element)
            (local-set-key (kbd "C-c l S") 'yafolding-show-all)
            (local-set-key (kbd "C-c l s") 'yafolding-show-element)
            (local-set-key (kbd "C-c l T") 'yafolding-toggle-all)
            (local-set-key (kbd "C-c l t") 'yafolding-toggle-element)
            ))

;; (require 'indent-tools)
(global-set-key (kbd "C-c i m") 'indent-tools-minor-mode)
(add-hook 'indent-tools-minor-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c i <") 'indent-tools-demote)
            (local-set-key (kbd "C-c i >") 'indent-tools-indent)
            (local-set-key (kbd "C-c i d") 'indent-tools-goto-child)
            (local-set-key (kbd "C-c i e") 'indent-tools-goto-end-of-tree)
            (local-set-key (kbd "C-c i l") 'indent-tools-end-of-level)
            (local-set-key (kbd "C-c i n") 'indent-tools-goto-next-sibling)
            (local-set-key (kbd "C-c i p") 'indent-tools-goto-previous-sibling)
            (local-set-key (kbd "C-c i u") 'indent-tools-goto-parent)
            (local-set-key (kbd "C-c i k") 'indent-tools-kill-tree)
            ))

(add-hook 'org-mode-hook
          (lambda ()
            (local-set-key (kbd "C-M-^") 'org-insert-todo-heading)))

(package-initialize)
(setq warning-minimum-level :emergency)
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-initialize)
;; (ample-theme) -> Spacemacs-light
(load-theme spacemacs-light)
(setq file-name-shadow-properties file-name-shadow-tty-properties)

(global-set-key (kbd "C-c C-g") 'magit-status)

(require 'transient)
(transient-bind-q-to-quit)  ;; Restore old magit q behaviour

;; Disable L key in magit
(with-eval-after-load 'magit
  (define-key magit-mode-map (kbd "L") 'magit-log-popup)
  )
(global-set-key (kbd "C-c C-r") 'revert-buffer)

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
    (term "/bin/zsh") ;; TODO -- Get terminal environment and use that, defaulting to bash if missing
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

;;
;; Customise auto-mode-alist
;;
(assq-delete-all "\\.re?st\\'" auto-mode-alist)
;; Mark edit - for tabnine
(require 'company-tabnine)
;; (use-package company-tabnine :ensure t)
(add-to-list 'company-backends #'company-tabnine)
;; Trigger completion immediately.
(setq company-idle-delay 0)

;; Number the candidates (use M-1, M-2 etc to select completions).
(setq company-show-numbers t)

;; Use the tab-and-go frontend.
;; Allows TAB to select and complete at the same time.
(company-tng-configure-default)
(setq company-frontends
      '(company-tng-frontend
        company-pseudo-tooltip-frontend
        company-echo-metadata-frontend))
;; End of Mark edit - TabNine`

(add-to-list 'auto-mode-alist '("\\.rst\\'" . rst-mode))
(add-to-list 'auto-mode-alist '("\\.rest\\'" . restclient-mode))
(add-to-list 'auto-mode-alist '("\\.wsgi\\'" . python-mode))

;;
;; Extend python-mode syntax highlighting
;;
(font-lock-add-keywords
 'python-mode
 `((, (rx symbol-start (group (1+ (or word ?_))) (or "Error" "Exception") symbol-end) . 'font-lock-type-face))
)

;;
;; Add extra org-mode faces
;;
(defface org-wip
  '((t :foreground "#eace64"
     ))
  "Face used for todo keywords that indicate WIP items."
  :group 'org-mode)

(defface org-blocked
  '((t :foreground "#ffbb00"
     ))
  "Face used for todo keywords that indicate BLOCKED items."
  :group 'org-mode)

(defface org-active
  '((t :foreground "#00bbff"
     ))
  "Face used for todo keywords that indicate ACTIVE items."
  :group 'org-mode)



;;
;; Load external things
;;
(load-file "~/.emacs.d/iswitchb.el")
(iswitchb-mode)

;; (load-file "~/.dotfiles/elisp/fsh-log.el")
;; (load-file "~/.dotfiles/elisp/fsh-org.el")
;; (load-file "~/.dotfiles/elisp/fsh-switch.el")
;; (load-file "~/.dotfiles/elisp/fsh-window.el")

;; Marks Added config
(use-package ledger-mode
             :mode ("\\.dat\\'"
                   "\\.ledger\\'")
             :custom (ledger-clear-whole-transactions t))
(use-package flycheck-ledger :after ledger-mode)

;; Autopep8
(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
