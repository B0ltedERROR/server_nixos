{ config, pkgs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./system
    ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.11";
}
