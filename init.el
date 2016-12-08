;; 環境を日本語、UTF-8にする
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;; unset key
(global-unset-key "\C-j")
(global-unset-key "\C-q")
(global-unset-key "\C-o")
(global-unset-key "\C-t")

;; Install el-get if not

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(insert )
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; 各パッケージの設定ファイルを ./init/init-パッケージ名 に読みに行く
(setq el-get-user-package-directory (locate-user-emacs-file "init"))

;; packages
;; (el-get-bundle auto-async-byte-compile)
(el-get-bundle auto-complete)
(el-get-bundle php-mode)
(el-get-bundle php-completion)
(el-get-bundle yasnippet)
(el-get-bundle helm)
(el-get-bundle helm-gtags)
(el-get-bundle volatile-highlights)
(el-get-bundle color-theme-zenburn)
(el-get-bundle smartparens)
(el-get-bundle multiple-cursors)
(el-get-bundle helm-ag)
(el-get-bundle git-gutter)
(el-get-bundle helm-ls-git)
(el-get-bundle markdown-mode)
(el-get-bundle smart-newline)
(el-get-bundle web-mode)
(el-get-bundle tramp)
(el-get-bundle js2-mode)
(el-get-bundle multiple-cursors)
(el-get-bundle yatex)
(el-get-bundle undo-tree)
(el-get-bundle flycheck)
(el-get-bundle helm-projectile)

; (el-get-bundle ac-php)
(prefer-coding-system 'utf-8)
(setq inhibit-startup-message t) ;; do not show message on start up
(global-linum-mode t) ;; show line number
(setq linum-format "%4d ")
(menu-bar-mode 0) ;; do not show menu bar
(tool-bar-mode 0) ;; do not show tool bar
(show-paren-mode 1) ;; shine corresponding brackets
; (setq make-backup-files nil) ;; do not make backup file
(setq make-backup-files t)
; (setq auto-save-default nil) ;; do not make auto save file
(setq auto-save-file-name-transforms   '((".*" "/tmp/" t)))
(setq auto-save-list-file-prefix nil)
(setq create-lockfiles nil)
;; "yes or no" の選択を "y or n" にする
(fset 'yes-or-no-p 'y-or-n-p)
(setq require-final-newline t)
;; シフト＋矢印で範囲選択
(setq pc-select-selection-keys-only t)
;; C-kで行全体を削除する
(setq kill-whole-line t)
;; Macのoptionをメタキーにする
; (setq mac-option-modifier 'meta)
;; ウィンドウ内に収まらないときだけ、カッコ内も光らせる
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "grey")
(set-face-foreground 'show-paren-match-face "black")

;; 行末の空白を強調表示
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#b14770")

;; 矩形編集
(cua-mode t)
(setq cua-enable-cua-keys nil)

;; 最近使ったファイルをメニューに表示
(recentf-mode t)
;; 最近使ったファイルの表示数
(setq recentf-max-menu-items 100)
;; 最近開いたファイルの保存数を増やす
(setq recentf-max-saved-items 3000)

;; 保存時に行末の空白を削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;Clipboardを他のアプリケーションと共通に
(cond (window-system
       (setq x-select-enable-clipboard t)
       ))

;; カーソル位置記憶
(save-place-mode 1)

;; 一行コピー
(define-key global-map (kbd "C-q c") (kbd "C-a C-SPC C-e M-w"))

;; 一行カット
(define-key global-map (kbd "C-q x") (kbd "C-a C-SPC C-e C-w"))

;; 一行複製
(define-key global-map (kbd "C-q d") (kbd "C-a C-SPC C-e M-w C-e RET C-y"))

;; 文字選択
(define-key global-map (kbd "M-p") (kbd "M-b C-@ M-f"))

(define-key key-translation-map (kbd "C-h") (kbd "<DEL>")) ;; use C-h as delete key
(global-set-key (kbd "C-x C-g") 'goto-line)
(global-set-key (kbd "C-u") 'undo)
