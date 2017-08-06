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

  services.emacs.enable = true;
  services.emacs.package = with pkgs; 
  (emacsWithPackages (with emacsPackagesNg; [
      evil
      haskell-mode
      intero
      nix-mode
      org
      python-mode
  ]));
}
