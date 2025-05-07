{ flake, ... }:
let
  inherit (flake) inputs;
  inherit (inputs) self;
in
{
  imports = [
    self.homeModules.default
  ];

  # Defined by /modules/home/me.nix
  # And used all around in /modules/home/*
  me = {
    username = "dave";
    fullname = "Dave English";
    email = "4254983+lutnos@users.noreply.github.com";
  };

  home.stateVersion = "24.11";
}
