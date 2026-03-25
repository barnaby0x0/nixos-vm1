{ ... }: 

{
    imports = [
        ./boot.nix
        ./programs.nix
        ./services.nix
        ./docker.nix
        ./users.nix
    ];
}