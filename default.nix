{ config, pkgs, ...}:

{
  programs.mosh.enable = true;

  environment.systemPackages = with pkgs; [
    bash
    cabal2nix
    fish
    git
    gnumake
    htop
    pandoc
    php
    python36Packages.ipython
    ripgrep
    rustStable.rustc
    rustStable.cargo
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
      lispy
      magit
      markdown-mode
      material-theme
      moe-theme
      nix-mode
      org
      python-mode
      swiper
      worf
      zenburn-theme
    ]))    
        
    (with haskellPackages; (ghcWithHoogle (haskellPackages: [ 
      # apply-refact --> https://github.com/NixOS/nixpkgs/issues/26895
      ghc-mod
      hasktags
      hindent
      hlint
      intero
      stack
      stylish-haskell
      wai-app-static
    ])))
  ];
}
