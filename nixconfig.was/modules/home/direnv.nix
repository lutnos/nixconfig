{ config, pkgs, lib, ... }:
{
  # https://nixos.asia/en/direnv
  programs.direnv = {
    enable = true;
    nix-direnv = {
      enable = lib.mkForce false;
    };
    config.global = {
      # Make direnv messages less verbose
      hide_env_diff = true;
    };
  };
}
