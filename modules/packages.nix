{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		git
		wget
		curl
		zip
		unzip
		btop
		fish
		micro
		kitty
		zoxide
		fzf
		librewolf
		home-manager
		tree
		fastfetch
		thunar
		nerd-fonts.caskaydia-mono
	  ];
}
