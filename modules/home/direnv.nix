{ config, pkgs, lib, ... }:
{
  # https://nixos.asia/en/direnv
  programs.direnv = {
    enable = lib.mkForce false;
    nix-direnv = {
      enable = true;
    };
    config.global = {
      # Make direnv messages less verbose
      hide_env_diff = true;
    };
  };
}
