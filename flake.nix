{
  description = "Configuration NixOS modulaire";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
    
    wofi-power-menu = {
      url = "github:szaffarano/wofi-power-menu";
      inputs.nixpkgs.follows = "nixpkgs";   # important pour éviter les doublons
    };

  };

  outputs = { self, nixpkgs, home-manager, disko, ... } @inputs: 
  let

    username = "victor";
    homeManagerUsers = [
      "victor"
      "justine"
    ];
    lib = nixpkgs.lib;

    paths = {
      vm1 = { 
        host = "${self}/hosts/vm1"; 
      };
      simple = { 
        host = "${self}/hosts/simple"; 
      };      
    };

    homeManagerModule = home-manager.nixosModules.home-manager;
    homeManagerSettings = {
      #users.mutableUsers = false;
      home-manager = {
        useGlobalPkgs = false;
        useUserPackages = false;
      };
    };

  in {
      #nixosConfigurations.vm1 = nixpkgs.lib.nixosSystem {
      #  system = "x86_64-linux";
      #  modules = [
      #    ./hardware-configuration.nix
      #    ./configuration.nix
      #  ];
      #};

    nixosConfigurations = {
      vm1 = lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          paths.vm1.host
          disko.nixosModules.disko
          homeManagerModule
          {
            home-manager.extraSpecialArgs = {};
          }
          homeManagerSettings
        ];
      };
      simple = lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs self username homeManagerUsers; };
        modules = [
          paths.simple.host
          disko.nixosModules.disko
          homeManagerModule
          {
            home-manager.extraSpecialArgs = {};
          }
          homeManagerSettings
        ];
      };
    };
  };
}
