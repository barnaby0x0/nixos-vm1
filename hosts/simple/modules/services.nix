{ config, pkgs, ... }:

{
  services = {

    # xserver.displayManager.lightdm.enable = true;
    # xserver.desktopManager.xfce.enable = true;
  	dbus.enable = true;
	  picom.enable = true;
	  openssh.enable = true;
    spice-vdagentd.enable = true;
    qemuGuest.enable = true;

    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };

	  xserver = {
		  enable = true;
      layout = "us";
      # xkb = {
      #   layout = "fr";
      #   variant = "azerty";
      # };
    };
  };
}

