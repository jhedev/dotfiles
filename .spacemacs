(setq-default dotspacemacs-default-font '("Source Code Pro For Powerline"
                                          :size 18
                                          :weight normal
                                          :width normal
                                          :powerline-scale 1.1))

(setq-default dotspacemacs-configuration-layers
    '(auto-completion
      clojure
      c-c++
      dockerfile
      elixir
      elm
      erlang
      git
      java
      haskell
      latex
      markdown
      osx
      purescript
      python
      rust
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
