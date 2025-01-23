{ pkgs, lib, ... }:
{
  # Nix packages to install to $HOME
  #
  # Search for packages here: https://search.nixos.org/packages
  home.packages = with pkgs ; lib.mkForce [
    # Dave
    colima
    docker
    gh
    yq
    p7zip

    # Unix tools
    gnumake
#   ripgrep # Better `grep`
#   fd
#   sd
#   tree

    # Nix dev
    cachix
    nil # Nix language server
    nix-info
    nixpkgs-fmt


    # On ubuntu, we need this less for `man home-configuration.nix`'s pager to
    # work.
    less
  ];

  # Programs natively supported by home-manager.
  # They can be configured in `programs.*` instead of using home.packages.
  programs = {
    # Better `cat`
    bat.enable = lib.mkForce false;
    # Type `<ctrl> + r` to fuzzy search your shell history
    fzf.enable = lib.mkForce false;
    jq.enable = true;
    # Install btop https://github.com/aristocratos/btop
    btop.enable = lib.mkForce false;
    # Tmate terminal sharing.
    tmate = {
      enable = lib.mkForce false;
      #host = ""; #In case you wish to use a server other than tmate.io 
    };
  };
}
