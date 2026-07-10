{ config, pkgs, ... }:

{
	imports = [
		./kitty.nix
		./fish.nix
		./fastfetch.nix
		./git.nix
		./micro.nix
	];


  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "omer";
  home.homeDirectory = "/home/omer";

  home.stateVersion = "26.05"; # Please read the comment before changing.

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
