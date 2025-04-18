{ flake, pkgs, lib, config, ... }:
let
  inherit (flake) inputs;
  inherit (inputs) self;
in
{
  imports = [
    self.homeModules.default
  ];

  # To use the `nix` from `inputs.nixpkgs` on templates using the standalone `home-manager` template

  # `nix.package` is already set if on `NixOS` or `nix-darwin`.
  # TODO: Avoid setting `nix.package` in two places. Does https://github.com/juspay/nixos-unified-template/issues/93 help here?
  nix.package = lib.mkDefault pkgs.nix;
  home.packages = [
    config.nix.package
  ];

  home.username = "dave";
  home.homeDirectory = lib.mkDefault "/${if pkgs.stdenv.isDarwin then "Users" else "home"}/dave";
  home.stateVersion = "24.11";

  programs.zsh.initExtra = ''
    export SDKMAN_DIR="/Users/dave/.sdkman"
    [[ -s "/Users/dave/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/dave/.sdkman/bin/sdkman-init.sh"
    '';
}
