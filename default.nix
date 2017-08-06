{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    bash
    cabal2nix
    fish
    git
    htop
    pandoc
    python3
    tig
    tmux
    unzip
    vim
    wget

    (emacsWithPackages (with emacsPackagesNg; [
      evil
      haskell-mode
      intero
      magit
      nix-mode
      org
      python-mode
    ]))    
        
    (with haskellPackages; (ghcWithHoogle (haskellPackages: [ 
      ghc-mod
      hasktags
      hlint
      intero
      stack
      stylish-haskell
      wai-app-static
    ])))
  ];
}
