{ config, pkgs, lib, modulesPath, ... }:

{
  imports =
    [
      (modulesPath + "/profiles/qemu-guest.nix")
      ./configuration.nix
      ./disko.nix
      ./hardware-configuration.nix
      ./modules
    ];

}
