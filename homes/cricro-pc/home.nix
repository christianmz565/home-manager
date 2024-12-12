{ pkgs, ... }:

{
    imports = [ ./common.nix ];
    home.packages = with pkgs; [
        libreoffice
        discord
        obs-studio
        mpv
    ];

    home.file = {
    ".config/" = {
      source = ./config;
      recursive = true;
    };
  };
}