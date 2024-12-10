{ pkgs, ... }:

{
    imports = [ ./common.nix ];
    home.packages = with pkgs; [
        libreoffice
        discord
        obs-studio
    ];

    home.file = {
    ".config/" = {
      source = ./config;
      recursive = true;
    };
  };
}