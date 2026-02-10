{ config, lib, programs, pkgs, ... }:
{

  # https://nixos.wiki/wiki/Visual_Studio_Code
  programs = {
    vscode = {
      enable = true;
      profiles.default.extensions = with pkgs.vscode-extensions; [
        dracula-theme.theme-dracula
        ms-python.python
        yzhang.markdown-all-in-one
      ];
    };
  };

}
