{ ... }: 

{
    imports = [
        ./boot.nix
        ./programs.nix
        ./services.nix
        ./docker.nix
        ./users.nix
        ./hyprland.nix
        ./fonts.nix
        ./custom.nix
    ];
}
