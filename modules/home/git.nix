{ config, ... }:
{

  # https://nixos.asia/en/git
  programs = {
    git = {
      enable = true;
      userName = config.me.fullname;
      userEmail = config.me.email;
      ignores = [ "*~" "*.swp" ];
      extraConfig = {
        # init.defaultBranch = "master";
        # pull.rebase = "false";
        gpg.format = "openpgp";
        user.signingkey = "DB3DF3901B45120C";
        commit.gpgsign = true;
        core.editor = "vim";
      };
    };
  };

}
