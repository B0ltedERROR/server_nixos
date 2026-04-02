{ config, pkgs, lib, ...}:

{

  # Bootloader.
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

}
root@nixOS_Server:/etc/nixos/modules/ > cat keyboard.nix
{ config, pkgs, ... }:

{

  # console.useXkbConfig = true;
  # services.xserver.xkbOptions = "ctrl:nocaps";

  services.xserver.xkb.options = "ctrl:swapcaps";

}
