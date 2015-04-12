# Add GHC 7.10.1 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.10.1.app"
# Add some paths
export PATH=.cabal-sandbox/bin:$HOME/.cabal/bin:$HOME/bin:/opt/local/bin:/usr/local/bin:$PATH
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi
