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
		whatsapp-electron
		micro
		kitty
		vicinae
		zoxide
		fzf
		librewolf
		home-manager
		tree
		fastfetch
		thunar
		spotify
		discord
		steam
		bat
		blueman
		bluez
		github-cli
		nerd-fonts.caskaydia-mono
	  ];

	 programs.steam.extraCompatPackages = with pkgs; [
	 	proton-ge-bin
	 ];
}
