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
			close_on_focus_loss = true;
			close_on_escape = true;
			font = {
				normal = {
					size = 11;
					family = "CaskaydiaMono Nerd Font";
				};	
			};
			theme = {
				light = {
				    name = "tokyo-night";
				    icon_theme = "Papirus-Dark";
				};
				dark = {
				    name = "tokyo-night";
				    icon_theme = "Papirus-Dark";
				};
			};
		};
	};
}
