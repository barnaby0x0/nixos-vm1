{ config, pkgs, ... }:

{
  users.users.victor = {
    isNormalUser = true;
    description = "Main User";
    extraGroups = [ "networkmanager" "wheel" ];
    home = "/home/victor";
    packages = with pkgs; [
    ];
  };
  home-manager.users.victor = import ../../home-manager/victor.nix; 
}
