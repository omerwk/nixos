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
		github-cli
		nerd-fonts.caskaydia-mono
	  ];
}
