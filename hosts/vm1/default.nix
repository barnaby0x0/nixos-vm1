{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./configuration.nix
      ./users.nix
      ./docker.nix
      ./hardware-configuration.nix
    ];

}
