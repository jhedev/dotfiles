(setq-default dotspacemacs-default-font '("Source Code Pro For Powerline"
                                          :size 18
                                          :weight normal
                                          :width normal
                                          :powerline-scale 1.1))

(setq-default dotspacemacs-configuration-layers
    '(haskell
      python
      git
      dockerfile
      extra-langs ;; contains rust-mode
      clojure
      auto-completion
      syntax-checking
      ))

(setq-default dotspacemacs-themes '(monokai))

(setq mac-option-key-is-meta t)
(setq mac-right-option-modifier nil)
