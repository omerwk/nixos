
{ ... }:

{
	programs.kitty = {
		enable = true;
		shellIntegration.enableFishIntegration = true;

		font = {
			name = "CaskaydiaMono Nerd Font";
			size = 11;
		};
		
		settings = {
			confirm_os_window_close = 0;
			window_padding_width = 8;
			background_blur = 1;
			background_opacity = "0.95";
			
			shell = "fish";
			scrollback_lines = 3000;
			
			cursor_shape = "beam";
			cursor_shape_unfocused = "hollow";
			cursor_trail = 10;
		};

		extraConfig = ''
			include themes/tokyonight.conf
		'';

	};

	home.file.".config/kitty/themes/tokyonight.conf".source =
		    ./themes/tokyonight.conf;
}
