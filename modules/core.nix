{ pkgs, config, ... }:

{

		
 	  #bootloader
 	  boot.loader.systemd-boot.enable = true;
	  boot.loader.efi.canTouchEfiVariables = true;
	  
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
