{ pkgs, ...}: {
  home.username = "victor";
  home.homeDirectory = "/home/victor";
  home.packages = [
    pkgs.btop 
    pkgs.wget 
    pkgs.netcat-openbsd
    pkgs.htop
  ];
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

