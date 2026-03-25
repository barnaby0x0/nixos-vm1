{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    git
    home-manager
    vim
    hyprpaper
    kitty
    libnotify
    mako
    qt5.qtwayland
    qt6.qtwayland
    swayidle
    swaylock-effects
    wlogout
    wl-clipboard
    wofi
    waybar
  ];

}