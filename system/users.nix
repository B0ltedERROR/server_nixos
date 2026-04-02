{ config, pkgs, ... }:

{

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.b0lt = {
    isNormalUser = true;
    description = "b0lt";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

}
