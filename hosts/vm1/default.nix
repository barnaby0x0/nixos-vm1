{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./configuration.nix
      ./docker.nix
      ./users.nix
      ./disko-config.nix
      ./hardware-configuration.nix
    ];

}
