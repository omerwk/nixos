{ pkgs, ... }:

{
	services.displayManager.sddm = {
		enable = true;
		theme = "samaritan";
	};

	environment.systemPackages = [
		(pkgs.stdenv.mkDerivation {
			name = "samaritan-sddm-theme";
			src = ../assets/sddm/samaritan;

			installPhase = ''
				mkdir -p $out/share/sddm/themes/samaritan
				cp -r . $out/share/sddm/themes/samaritan
			'';
		})
	];
}
