{ pkgs, config, ... }:

{

		
 	  #bootloader
 	  boot.loader.systemd-boot.enable = false;
 	  boot.loader.limine = {
 	  	enable = true;
 	  	efiSupport = true;
 	  	efiInstallAsRemovable = true;
 	  	maxGenerations = 25;
 	  	style.wallpapers = [ ../home/images/wallpapers/Finch.jpeg ];
 	  };
	  boot.loader.efi.canTouchEfiVariables = true;

	  #enable flakes and unfee packages
	  nix.settings.experimental-features = ["nix-command" "flakes"];
	  nixpkgs.config.allowUnfree = true;


	  # nvidia
	  hardware.graphics.enable = true;
	  services.xserver.videoDrivers = ["nvidia"];
	  hardware.nvidia.open = true;

	  #latest kernel
	  boot.kernelPackages = pkgs.linuxPackages_latest;

	  #garbage collect
	  nix.gc = {
	  	automatic = true;
	  	dates = "weekly";
	  	options = "--delete-older-than 30d";
	  };
} 
