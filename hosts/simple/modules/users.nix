{ config, pkgs, ... }:

{
  users.users.victor = {
    isNormalUser = true;
    description = "Victor";
    extraGroups = [ "networkmanager" "wheel" ];
    hashedPassword = "$6$X9Nl4WYPme3seZR.$kJP0Vph04KYU1BkSr.I4wBUklUIAJLTs5yhZqqwNkYxpazYweRmEFvyKkseBFdI2stzG6PrzLR/8kxyeb6yfO1";
    home = "/home/victor";
    packages = with pkgs; [
    ];
  };
  users.users.justine = {
    isNormalUser = true;
    description = "Justine";
    extraGroups = [ "networkmanager" "wheel" ];
    home = "/home/justine";
    packages = with pkgs; [
    ];
  };
  users.users.bob = {
    isNormalUser = true;
    description = "Bob";
    extraGroups = ["docker"];
    home = "/home/bob";
    packages = with pkgs; [
    ];
  };  
  home-manager.users.victor = import ../../../home-manager/victor.nix; 
  home-manager.users.justine = import ../../../home-manager/justine.nix; 
}
