;; UI
(setq inhibit-startup-message t) ; Drop in to *scratch*
(scroll-bar-mode -1)             ; Disable visible scrollbar
(tool-bar-mode -1)               ; Disable the toolbar
(tooltip-mode -1)                ; Disable tooltips
(set-fringe-mode 10)             ; Give some breathing room
(menu-bar-mode -1)               ; Disable the menu bar
(setq visible-bell t)            ; Set up the visible bell
;; UI END

;; FUNCTIONS
(defun indent-whole-buffer ()
  "Indent the entire buffer without affecting point or mark."
  (interactive)
  (save-excursion
    (save-restriction
      (indent-region (point-min) (point-max)))))

(global-set-key (kbd "C-c i") 'indent-whole-buffer)

(defun open-init-file ()
  "Open Emacs configuration file, silently following symlinks."
  (interactive)
  (let ((vc-follow-symlinks t))  ; Temporarily set to true only inside this block
    (find-file user-init-file)))

(global-set-key (kbd "C-c e") 'open-init-file)
;; FUNCTIONS END

;; PACKAGES
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(use-package gruvbox-theme
  :ensure t
  :config
  (load-theme 'gruvbox-dark-medium t)  
  )

(use-package highlight-indentation
  :ensure t)

(use-package git-gutter
  :ensure t
  :config
  (custom-set-variables
   '(git-gutter:update-interval 2)
   
   '(git-gutter:modified-sign "~")
   '(git-gutter:added-sign "++")
   '(git-gutter:deleted-sign "--")
   )

  (set-face-foreground 'git-gutter:added "green")
  (set-face-foreground 'git-gutter:modified "yellow")
  (set-face-foreground 'git-gutter:deleted "red")

  (set-face-background 'git-gutter:added nil)
  (set-face-background 'git-gutter:modified nil)
  (set-face-background 'git-gutter:deleted nil)  

  (global-git-gutter-mode +1))

(use-package terraform-mode
  :ensure t)

(use-package yaml-mode
  :ensure t)
;; PACKAGES END
