{
	description = "My system configuration";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

		home-manager = {
			url = "github:nix-community/home-manager/release-26.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = {nixpkgs, home-manager, ... }: {
		nixosConfigurations = {
			vm = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";
				modules = [ ./hosts/vm/configuration.nix ];
			};

			vm2 = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";
				modules = [ ./hosts/vm2/configuration.nix ];
			};
		};

		homeConfigurations.omer = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages."x86_64-linux";
			modules = [ ./home/home.nix ];
		};
	};
}
