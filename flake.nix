{
	description = "My system configuration";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

		home-manager = {
			url = "github:nix-community/home-manager/release-26.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		plasma-manager = {
		    url = "github:nix-community/plasma-manager";
		    inputs.nixpkgs.follows = "nixpkgs";
		    inputs.home-manager.follows = "home-manager";
		};
	};

	outputs = {nixpkgs, home-manager, plasma-manager, ... }: 
	let
		system = "x86_64-linux";

		mkHost = hostname:
			nixpkgs.lib.nixosSystem {
				inherit system;

				modules = [
					./hosts/${hostname}/configuration.nix

					home-manager.nixosModules.home-manager

					{
						home-manager.sharedModules = [
							plasma-manager.homeModules.plasma-manager
						];

				
					
						home-manager.useGlobalPkgs = true;
						home-manager.useUserPackages = true;
						home-manager.users.omer = import ./home/home.nix;
					}	
				];	
			};
	in {
		nixosConfigurations = {
			vm = mkHost "vm";
			vm2 = mkHost "vm2";
		};
	};
}
