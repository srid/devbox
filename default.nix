{ config, pkgs, ...}:

{
  programs.mosh.enable = true;

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
      ace-window
      avy
      evil
      github-theme
      haskell-mode
      intero
      ivy
      ivy-hydra
      leuven-theme
      magit
      nix-mode
      org
      python-mode
      swiper
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
