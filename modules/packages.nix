{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
	
		# cli
		git
		wget
		curl
		zip
		unzip
		btop
		fish
		bat
		zoxide
		fzf
		tree
		fastfetch

		# terminal
		micro
		kitty
		
		
		# gaming
		prismlauncher
		gamemode
		whatsapp-electron
		steam
		
		# apps
		spotify
		discord
		librewolf
		thunar

		# misc
		blueman
		vicinae
		papirus-icon-theme
		volantes-cursors
		bluez
		github-cli
		nerd-fonts.caskaydia-mono
	  ];

	 
}
