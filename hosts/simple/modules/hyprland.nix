{ inputs, config, pkgs, ... }:

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
    inputs.wofi-power-menu.packages.${pkgs.system}.default
    waybar
    dunst
    kdePackages.dolphin
    matugen
    bluez-tools
    brightnessctl
    fzf
    networkmanager
    mpd
    mpc
  ];

  services.mpd = {
  enable = true;
  musicDirectory = "/home/victor/Music";
  extraConfig = ''
    # must specify one or more outputs in order to play audio!
    # (e.g. ALSA, PulseAudio, PipeWire), see next sections
  '';
};


}