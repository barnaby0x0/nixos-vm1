{ config, pkgs, lib, ... }:

{
  imports =
    [
      (modulesPath + "/profiles/qemu-guest.nix")
      ./configuration.nix
      ./users.nix
      ./disko.nix
      ./hardware-configuration.nix
      ./modules
    ];

}
