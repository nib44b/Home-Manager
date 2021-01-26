{ config, ... }:
{
  imports = [
      ./homepkgs.nix
      ./homeconfigs.nix
      ./homeservices.nix
    ];

  programs.home-manager = {
    enable = true;
  };
}