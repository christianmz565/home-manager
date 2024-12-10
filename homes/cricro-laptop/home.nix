{ pkgs, ... }:

{
    imports = [ ./common.nix ];
    home.packages = with pkgs; [
        libreoffice
        discord
        obs-studio
        droidcam
        cheese
    ];

    home.file = {
    ".config/" = {
      source = ./config;
      recursive = true;
    };
  };
}