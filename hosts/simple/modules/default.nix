{ ... }: 

{
    imports = [
        ./boot.nix
        ./programs.nix
        ./services.nix
        ./docker.nix
        ./users.nix
        ./hyprland.nix
        ./hypr_waybar.nix
        ./fonts.nix
        ./custom.nix
    ];
}
