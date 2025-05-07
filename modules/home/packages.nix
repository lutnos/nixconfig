{ pkgs, ... }:
{
  # Nix packages to install to $HOME
  #
  # Search for packages here: https://search.nixos.org/packages
  home.packages = with pkgs; [
    # Dave
    colima
    docker
    gh
    yq
    _7zz
    atuin
    exiftool
    gnupg
    pinentry_mac

    # Unix tools
    gnumake

    # Nix dev
    cachix
    nil # Nix language server
    nix-info
    nixpkgs-fmt
  ];

  # Programs natively supported by home-manager.
  # They can be configured in `programs.*` instead of using home.packages.
  programs = {
    jq.enable = true;
  };
}
