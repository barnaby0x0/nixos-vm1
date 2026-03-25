{ config, pkgs, ... }:
{
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
    daemon.settings = {
      insecure-registries = [
        "10.0.0.250:5000"
      ];
      registry-mirrors = [
        "http://10.0.0.250:5001"
      ];
    };
  };
}

