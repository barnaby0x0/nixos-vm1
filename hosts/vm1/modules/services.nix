{ config, pkgs, ... }:

{
  services = {
  	dbus.enable = true;
	picom.enable = true;
	openssh.enable = true;
      spice-vdagentd.enable = true;
  qemuGuest.enable = true;

	xserver = {
		enable = true;
  xkb = {
    layout = "fr";
    variant = "azerty";
  };

		# layout = "us, ru, ge";
    #     xkbOptions = "grp:alt_shift_toggle, caps:swapescape";

		displayManager = {
			sddm.enable = true;
            # sddm.theme = "${import ./sddm-theme.nix { inherit pkgs; }}";
		};
	};
  };
}

