{ config, pkgs, ... }:

{
  services = {
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
      layout = "fr";
      xkb = {
        layout = "fr";
        variant = "azerty";
      };
    };
  };
}

