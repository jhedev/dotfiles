(setq-default dotspacemacs-default-font '("Source Code Pro For Powerline"
                                          :size 18
                                          :weight normal
                                          :width normal
                                          :powerline-scale 1.1))

(setq-default dotspacemacs-configuration-layers
    '(auto-completion
      c-c++
      dockerfile
      elixir
      emoji
      git
      haskell
      latex
      markdown
      osx
      purescript
      python
      react
      rust
      scala
      shell
      spotify
      syntax-checking
      terraform
      ))

(setq-default dotspacemacs-themes '(monokai))

(setq mac-option-key-is-meta t)
(setq mac-right-option-modifier nil)

(setq-default TeX-master nil)
(add-hook 'doc-view-mode-hook 'auto-revert-mode)

(setq ispell-program-name "aspell")

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(custom-set-variables
'(safe-local-variable-values
  (quote
   ((haskell-indent-spaces . 2)
    (haskell-process-args-ghci "ghci")
    (haskell-process-path-ghci . "stack")
    (haskell-process-type . stack-ghci)))))
