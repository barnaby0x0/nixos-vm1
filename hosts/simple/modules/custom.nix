{ config, pkgs, ... }:

{  
  environment.systemPackages = with pkgs; [
    (writeShellScriptBin "monscript" ''
      #!${pkgs.bash}/bin/bash
      echo "Hello from NixOS script!"
      echo "Utilisateur : $USER"
      echo "Hostname : $(hostname)"
      # Ajoute ici tes commandes
    '')

    (writeShellApplication {
      name = "monscript2";
      runtimeInputs = with pkgs; [ curl ];
      text = ''
        echo "Public Ip:"
        curl ifconfig.co
      '';
    })

  ];
}
