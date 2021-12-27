(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode t)
(column-number-mode 1)
(setq inhibit-startup-message t)
(global-linum-mode t)

(require 'package)
(dolist (source '(("elpa" . "http://elpa.gnu.org/packages/")
		  ("melpa" . "http://melpa.org/packages/")
		  ))
  (add-to-list 'package-archives source t))


;; uncomment me, in theory
;; (unless package-archive-contents (package-refresh-contents))

;; Install package.el so we can use package.el for the remainder of the config
;; (setq my-package-list '(use-package))
;; idk, was complaining
;; (package-initialize)


(use-package company
  :ensure t
  :config (setq company-idle-delay 0.3)
  (global-company-mode t))


(use-package lsp-mode
  :ensure t
  :custom (lsp-disabled-clients '((python-mode . pyls)))
  :init (setq lsp-keymap-prefix "C-c l")
  :hook ((python-mode . lsp))
  :commands lsp)

(use-package ace-jump-mode
  :ensure t
  :bind ("C-c SPC" . ace-jump-mode))

(use-package color-identifiers-mode
    :ensure t
    :hook python-mode)

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(use-package lsp-ivy
  :ensure t
  :commands lsp-ivy-workspace-symbol)

(use-package lsp-treemacs
  :ensure t
  :commands lsp-treemacs-errors-list)

(use-package lsp-pyright
  :ensure t
  :hook
  (python-mode . (lambda ()
                   (require 'lsp-pyright)
                   (lsp-deferred))))

(use-package blacken
  :ensure t
  :init
  (setq-default blacken-fast-unsafe t)
  (setq-default blacken-line-length 80))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package multiple-cursors
  :ensure t)

(use-package dracula-theme
  :ensure t
  :pin melpa
  :init (load-theme 'dracula t))

(use-package spaceline
  :demand t
  :init
  (setq powerline-default-separator 'arrow-fade)
  :config
  (require 'spaceline-config)
  (spaceline-spacemacs-theme))

(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map)))


;;
;;
;;(use-package doom-themes
;;  :ensure t
;;  :config
;;  (setq doom-themes-enable-bold t
;;	doom-themes-enable-italic t)
;;  (load-theme 'doom-one t))
;;  (setq doom-themes-treemacs-theme "doom-atom")
  ;;  (doom-themes-treemacs-config))
  

;; (use-package doom-modeline
;;   :ensure t
;;   :init (doom-modeline-mode 1))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#1E1C31" "#FF8080" "#95FFA4" "#FFE9AA" "#91DDFF" "#C991E1" "#AAFFE4" "#CBE3E7"])
 '(custom-safe-themes
   '("234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "cbdf8c2e1b2b5c15b34ddb5063f1b21514c7169ff20e081d39cf57ffee89bc1e" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" default))
 '(exwm-floating-border-color "#292F37")
 '(fci-rule-color "#858FA5")
 '(highlight-tail-colors ((("#29323c" "#1f2921") . 0) (("#2c3242" "#212928") . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#100E23" "#906CFF"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#100E23" "#95FFA4"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#100E23" "#565575"))
 '(objed-cursor-color "#FF8080")
 '(package-selected-packages
   '(doom-themes flycheck flymake-cursor lsp-treemacs lsp-ivy lsp-ui color-identifiers-mode ace-jump-mode lsp-mode use-package company))
 '(pdf-view-midnight-colors (cons "#CBE3E7" "#1E1C31"))
 '(rustic-ansi-faces
   ["#1E1C31" "#FF8080" "#95FFA4" "#FFE9AA" "#91DDFF" "#C991E1" "#AAFFE4" "#CBE3E7"])
 '(vc-annotate-background "#1E1C31")
 '(vc-annotate-color-map
   (list
    (cons 20 "#95FFA4")
    (cons 40 "#b8f7a6")
    (cons 60 "#dbf0a8")
    (cons 80 "#FFE9AA")
    (cons 100 "#ffd799")
    (cons 120 "#ffc488")
    (cons 140 "#FFB378")
    (cons 160 "#eda79b")
    (cons 180 "#db9cbd")
    (cons 200 "#C991E1")
    (cons 220 "#db8bc0")
    (cons 240 "#ed85a0")
    (cons 260 "#FF8080")
    (cons 280 "#d4757d")
    (cons 300 "#aa6a7a")
    (cons 320 "#805f77")
    (cons 340 "#858FA5")
    (cons 360 "#858FA5")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
