{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    hyprpaper
    swww
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
    # waybar
    dunst
    kdePackages.dolphin
    matugen
    # waybar mechabar deps
    bluez-tools
    brightnessctl
    fzf
    networkmanager
  ];

}