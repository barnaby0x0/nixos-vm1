{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./configuration.nix
      ./docker.nix
      ./users.nix
      ./hardware-configuration.nix
    ];

}
