{ config, ... }:
{
#  home.shellAliases = {
#    g = "git";
#    lg = "lazygit";
#  };

  # https://nixos.asia/en/git
  programs = {
    git = {
      enable = true;
      userName = config.me.fullname;
      userEmail = config.me.email;
      ignores = [ "*~" "*.swp" ];
#      aliases = {
#        ci = "commit";
#      };
      extraConfig = {
        # init.defaultBranch = "master";
        # pull.rebase = "false";
        gpg.format = "openpgp";
        user.signingkey = "B7D4560E88695D20";
        commit.gpgsign = true;
        core.editor = "vim";
      };
    };
#    lazygit.enable = true;
  };

}
