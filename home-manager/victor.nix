{ pkgs, config, ...}: {
  home.username = "victor";
  home.homeDirectory = "/home/victor";
  home.packages = [
    pkgs.btop 
    pkgs.wget 
    pkgs.netcat-openbsd
    pkgs.htop
  ];

  home.file = {
    ".config/hypr/hyprland.conf" = {
      source = config.lib.file.mkOutOfStoreSymlink ../dotfiles/hypr/hyprland.conf;
    };
  };

# home.file."path/to/example" = { 
#      recursive = true; 
#      source = inputs.ExampleFlake.directory;
# }

  programs.vim = {
    enable = true;
    defaultEditor = true;
    #plugins = with pkgs.vimPlugins; [ "jamessan/vim-gnupg" ];
    settings = { ignorecase = true; };
    extraConfig = ''
      set number
      set et ai si ic nu
      set sw=2 ts=2 sts=2
    '';
  };
  home.stateVersion = "25.11";
}

