{ ... }:

{
	programs.vicinae = {
		enable = true;
		systemd = {
			enable = true;
			autoStart = true;
		};

		settings = {
			search_files_in_root = true;
			font = {
				normal = {
					size = 11;
					family = "CaskaydiaMono Nerd Font";
				};	
			};
			theme = {
				name = "Tokyo Night";
				icon_theme = "Papirus-Dark";
			};
		};
	};
}
