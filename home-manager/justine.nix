{ pkgs, ...}: {
  home.username = "justine";
  home.homeDirectory = "/home/justine";
  home.packages = [
    #pkgs.htop 
  ];

  home.stateVersion = "25.11";
}

