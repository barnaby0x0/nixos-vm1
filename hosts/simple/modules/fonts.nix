{ config, pkgs, ... }:
{
  fonts.packages = with pkgs; [
    font-awesome_4          # Important : c’est souvent celle utilisée par les configs par défaut de Waybar
    font-awesome            # Version plus récente (6 ou 7)
    # Alternative plus légère pour les symbols seulement :
    # (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    nerd-fonts.fira-code
    nerd-fonts.droid-sans-mono
    liberation_ttf
  ];
}
