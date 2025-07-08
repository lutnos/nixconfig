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
        user.signingkey = "1AC25855C989D217";
        commit.gpgsign = true;
        core.editor = "vim";
      };
    };
  };

}
