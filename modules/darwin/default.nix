# This is your nix-darwin configuration.
# For home configuration, see /modules/home/*
{
  imports = [
    ./common
  ];

  # Use TouchID for `sudo` authentication
  security.pam.services.sudo_local.touchIdAuth = true;

  # These users can add Nix caches.
  nix.settings.trusted-users = [ "root" "dave" ];

  # "To continue using these options, set `system.primaryUser` to the name
  #  of the user you have been using to run `darwin-rebuild`. In the long
  #  run, this setting will be deprecated and removed after all the
  #  functionality it is relevant for has been adjusted to allow
  #  specifying the relevant user separately, moved under the
  #  users.users.*` namespace, or migrated to Home Manager."
  system.primaryUser = "dave";

  # Configure macOS system
  # More M-D19GT7GVPJs => https://github.com/ryan4yin/nix-darwin-kickstarter/blob/main/rich-demo/modules/system.nix
  system = {
    defaults = {
      dock = {
        # autohide = true;
        # customize Hot Corners
        wvous-tl-corner = 2; # top-left - Mission Control
        # wvous-tr-corner = 13; # top-right - Lock Screen
        wvous-bl-corner = 3; # bottom-left - Application Windows
        wvous-br-corner = 4; # bottom-right - Desktop
      };

      finder = {
        _FXShowPosixPathInTitle = true; # show full path in finder title
        AppleShowAllExtensions = true; # show all file extensions
        FXEnableExtensionChangeWarning = false; # disable warning when changing file extension
        QuitMenuItem = true; # enable quit menu item
        ShowPathbar = true; # show path bar
        ShowStatusBar = true; # show status bar
      };
    };

    keyboard = {
      # enableKeyMapping = true;
      # remapCapsLockToControl = true;
    };
  };
}
