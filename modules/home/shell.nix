{ lib, ... }:
{
  programs = {
    # on macOS, you probably don't need this
    bash = {
      enable = true;
      initExtra = ''
        # Custom bash profile goes here
      '';
    };

    # For macOS's default shell.
    zsh = {
      enable = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      envExtra = ''
        # Custom zshrc goes here
      '';
      initExtra = ''
        # Custom zsh profile goes here
        function set_win_title(){
            echo -ne "\033]0; $(basename "$PWD") \007"
        }
        precmd_functions+=(set_win_title)
        '';
    };

    # Type `z <pat>` to cd to some directory
    zoxide.enable = lib.mkForce false;

    # Better shell prmot!
    starship = {
      enable = true;
      settings = {
        username = {
          style_user = "blue bold";
          style_root = "red bold";
          format = "[$user]($style) ";
          disabled = false;
          show_always = true;
        };
        hostname = {
          ssh_only = false;
          ssh_symbol = "🌐 ";
          format = "on [$hostname](bold red) ";
          trim_at = ".local";
          disabled = false;
        };
      };
    };
    atuin = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
    };
  };
}
