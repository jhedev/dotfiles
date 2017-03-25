(setq-default dotspacemacs-default-font '("Source Code Pro For Powerline"
                                          :size 18
                                          :weight normal
                                          :width normal
                                          :powerline-scale 1.1))

(setq-default dotspacemacs-configuration-layers
              '(
                sql
      csv
      nginx
      yaml
      yaml
      ;; auto-completion
      c-c++
      docker
      elixir
      erlang
      git
      go
      haskell
      ipython-notebook
      latex
      markdown
      osx
      python
      react
      rust
      scala
      shell
      ;; syntax-checking
      terraform
      extra-langs
      ))

(setq dotspacemacs-additional-packages
      '(editorconfig))

(setq-default dotspacemacs-themes '(monokai))

(setq mac-option-key-is-meta t)
(setq mac-right-option-modifier nil)

(setq-default TeX-master nil)
(add-hook 'doc-view-mode-hook 'auto-revert-mode)

(setq ispell-program-name "aspell")

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (dockerfile-mode docker tablist docker-tramp dash async yapfify xterm-color ws-butler wolfram-mode window-numbering which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toml-mode toc-org thrift terraform-mode tagedit stan-mode spacemacs-theme spaceline smeargle slim-mode shell-pop scss-mode scad-mode sass-mode reveal-in-osx-finder restart-emacs rainbow-delimiters racer quelpa qml-mode pyvenv pytest pyenv-mode py-isort pug-mode popwin pip-requirements persp-mode pcre2el pbcopy paradox osx-trash osx-dictionary orgit org-plus-contrib org-bullets open-junk-file ob-elixir noflet neotree multi-term move-text monokai-theme mmm-mode matlab-mode markdown-toc magit-gitflow lorem-ipsum livid-mode live-py-mode linum-relative link-hint less-css-mode launchctl julia-mode json-mode js2-refactor js-doc intero info+ indent-guide ido-vertical-mode hy-mode hungry-delete hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-hoogle helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag haskell-snippets google-translate golden-ratio go-guru go-eldoc gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md flycheck-mix flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help erlang ensime emmet-mode ein dumb-jump disaster cython-mode company-web company-tern company-statistics company-go company-ghci company-ghc company-cabal company-c-headers company-auctex company-anaconda column-enforce-mode coffee-mode cmm-mode cmake-mode clean-aindent-mode clang-format cargo auto-yasnippet auto-highlight-symbol arduino-mode alchemist aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(safe-local-variable-values
   (quote
    ((haskell-indent-spaces . 2)
     (haskell-process-args-ghci "ghci")
     (haskell-process-path-ghci . "stack")
     (haskell-process-type . stack-ghci)))))

(defun dotspacemacs/user-config ()
  (global-linum-mode) ;
  (spacemacs/toggle-fill-column-indicator));
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
