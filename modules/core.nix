{ pkgs, config, ... }:

{
 	  boot.loader.systemd-boot.enable = true;
	  boot.loader.efi.canTouchEfiVariables = true;
	  nix.settings.experimental-features = ["nix-command" "flakes"];
	  nixpkgs.config.allowUnfree = true;
	  boot.kernelPackages = pkgs.linuxPackages_latest;
} 
