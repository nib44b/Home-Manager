{ pkgs, ... }:

{
  home.packages with pkgs; = [
    htop
    fortune
    ncpamixer
    steam
    mpv
    ncmpcpp
    bspwm
    sxhkd
    dmenu
    rxvt-unicode
    pywal
    sxiv
    arandr
    zathura
    ranger
    ueberzug
    scrot
    cava
    gimp
    neovim
  ];
}