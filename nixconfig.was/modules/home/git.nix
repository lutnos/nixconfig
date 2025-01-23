{ lib, ... }:
{
# home.shellAliases = {
#   g = "git";
#   lg = "lazygit";
#  };

  home.shellAliases = lib.mkForce { };

  # https://nixos.asia/en/git
  programs = {
    git = {
      enable = true;
      userName = "Dave English";
      userEmail = "johndoe@M-D19GT7GVPJ.com";
      ignores = [ "*~" "*.swp" ];
#     aliases = {
#       ci = "commit";
#     };
      extraConfig = {
        # init.defaultBranch = "master";
        # pull.rebase = "false";
      };
    };
    lazygit.enable = lib.mkForce false;
  };

}
