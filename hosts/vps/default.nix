{ config, pkgs, lib, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./configuration.nix
      ./docker.nix
      ./users.nix
      ./disko.nix
      ./hardware-configuration.nix
      ./modules
    ];

}
