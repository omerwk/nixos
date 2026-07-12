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
		papirus-icon-theme
		volantes-cursors
		prismlauncher
		gamemode
		thunar
		spotify
		steam
		thunar
		discord
		bat
		blueman
		bluez
		github-cli
		nerd-fonts.caskaydia-mono
	  ];

	 
}
