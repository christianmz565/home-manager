{ pkgs, ... }:

{
    imports = [ ./common.nix ];
    home.packages = with pkgs; [
        libreoffice
        webcord
        obs-studio
        playerctl
        pavucontrol
        godot_4
        google-chrome
    ];

    programs.mpv = {
      enable = true;
      package = pkgs.mpv-unwrapped.wrapper {
        mpv = pkgs.mpv-unwrapped;
        scripts = with pkgs.mpvScripts; [
          mpris
        ];
      };
    };

    home.file = {
    ".config/" = {
      source = ./config;
      recursive = true;
    };
  };
}