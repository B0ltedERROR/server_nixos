{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [

        # Server Specific programs
        nextcloud33
        mysql84 # database for nextcloud
        apacheHttpd # web server

        # Command Applications
        ripgrep
        tmux
        btop
        ranger
        curl
        fzf
        lazygit
        git
        zsh
        zoxide
        eza
        bat

        # compilers
        # rustup
        # gnumake
        # zig_0_12

  ];
        environment.variables.EDITOR = "vim";
        environment.variables.VISUAL = "vim";
}
