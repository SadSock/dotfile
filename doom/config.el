;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
(setq doom-font (font-spec :family "monofur nerd font mono" :size 38))
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-molokai)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type `relative)
(setq display-line-numbers-current-absolute nil)
(setq confirm-kill-emacs nil)
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")
(setq evil-collection-want-find-usages-bindings-p t)
(setq evil-collection-want-find-usages-bindings t)

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(after! lsp-mode

  (setq lsp-clients-clangd-args '("-j=8"
                                  "--background-index"
                                  "--clang-tidy=false"
                                  "--completion-style=detailed"
                                  "--header-insertion=never"
                                  "--header-insertion-decorators=0"))
  (setq ;;lsp-navigation 'both
        ;;lsp-modeline-diagnostics-scope 'file
        ;;lsp-modeline-code-action-fallback-icon t
        ;;lsp-modeline-diagnostics-enable t
        ;;lsp-modeline-code-actions-enable t
        ;;lsp-modeline-workspace-status-enable t
        lsp-ui-sideline-show-hover t
        ;;lsp-ui-sidine-symbol nil
        lsp-ui-sideline-enable t
        lsp-ui-sideline-show-diagnostics t
        ;;lsp-ui-sideline-update-mode nil
        ;;lsp-ui-doc-enable nil
        ;;lsp-ui-doc-display nil
        lsp-ui-flycheck-enable t
        lsp-headerline-breadcrumb-enable t
        ;;lsp-headerline-breadcrumb-icons-enable t
        ;;lsp-log-max nil
        ;;lsp-lens-enable t
        ;;lsp-enable-on-type-formatting nil
        lsp-enable-symbol-highlighting nil
        ;;lsp-enable-indentation nil
        ;;lsp-enable-imenu t
        ;;lsp-ui-flycheck-live-reporting nil
        ;;lsp-before-save-edits nil
        )
  )

(after! lsp-treemacs
  (setq lsp-treemacs-symbols-position-params '((side . right)
                                               (slot . 1)
                                               (window-width . 30)))
  )

(after! company
  (setq company-idle-delay nil)
  )

(after! flycheck
  (setq flycheck-navigation-minimum-level 'error)
  )

(after! evil
  (setq evil-collection-want-find-usages-bindings t
        evil-want-Y-yank-to-eol nil
         ;;evil-want-C-i-jump t
        ))

(after! smartparens
  (smartparens-global-mode -1))

(setq load-path
      (cons (expand-file-name "~/dotfile/emacs/tablegen") load-path))
(require 'tablegen-mode)
(setq load-path
      (cons (expand-file-name "~/dotfile/emacs/tablegen") load-path))
(require 'llvm-mode)

(setq load-path
      (cons (expand-file-name "~/dotfile/emacs") load-path))
(require 'ptx-mode)

(map! :leader
    (:prefix-map ("f" . "file")
     :desc "Dired"              "j"  #'dired-jump)
    )
