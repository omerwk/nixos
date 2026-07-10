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
		discord
		steam
		github-cli
		nerd-fonts.caskaydia-mono
	  ];
}
