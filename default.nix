{ config, pkgs, ...}:

{
  programs.mosh.enable = true;

  environment.systemPackages = with pkgs; [
    bash
    cabal2nix
    elixir
    elmPackages.elm
    # exa
    fish
    git
    gnumake
    gollum
    htop
    httpie
    jq
    links
    nix-prefetch-git
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
      elm-mode
      evil
      github-theme
      haskell-mode
      hindent
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
      structured-haskell-mode
      swiper
      worf
      yaml-mode
      zenburn-theme
    ]))    
        
    (with haskellPackages; (ghcWithHoogle (haskellPackages: [ 
      # apply-refact --> https://github.com/NixOS/nixpkgs/issues/26895
      cabal-install
      ghc-mod
      hakyll
      happy
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
