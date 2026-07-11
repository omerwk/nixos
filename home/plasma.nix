{ pkgs, ... }:

{
	imports = [
		<plasma-manager/modules>	
	];

	programs.plasma = {
			enable = true;

			workspace = {
				cursor.theme = "capitaine-cursors";
				iconTheme = "Papirus-Dark";
				colorScheme = "TokyoNight";
				clickItemTo = "select";
				windowDecorations.library = "org.kde.kwin.aurorae";
				windowDecorations.theme = "Layan";
				soundTheme = "freedesktop";
				wallpaper = ./images/wallpapers/wallhaven-6lpdjl.jpg;
			};

			fonts = {
				general = {
					family = "CaskaydiaMono Nerd Font";
					pointSize = 10;
				};
			};

			hotkeys.commands."launch-kitty" = {
				name = "Launch Kitty";
				key = "Alt+Return";
				command = "kitty";
			};

			hotkeys.commands."launch-vicinae" = {
				name = "Launch Vicinae";
				key = "Alt+Space";
				command = "vicinae toggle";
			};

			panels = [
				{
					location = "bottom";
					height = 36;
					widgets = [
					
						{
							kickoff = {
								sortAlphabetically = true;
								icon = "nix-snowflake-white";
							};
						}
						
						{
							plasmusicToolbar = {
								panelIcon = {
									albumCover = {
										useAsIcon = true;
										radius = 4;
									};
									icon = "view-media-track";
								};
								playbackSource = "auto";
								musicControls.showPlaybackControls = false;
								songText = {
									displayInSeparateLines = false;
									maximumWidth = 200;
									scrolling = {
										enable = true;
										behavior = "scrollOnHover";
									};
								};
				
							};
						}
						"org.kde.plasma.panelspacer"
						{
							iconTasks = {
								launchers = [
									"applications:librewolf.desktop"
									"applications:thunar.desktop"
									"applications:discord.desktop"
									"applications:spotify.desktop"	
								];
							};
						}
						"org.kde.plasma.panelspacer"
						"org.kde.plasma.volume"
						"org.kde.plasma.keyboardlayout"
						"org.kde.plasma.networkmanagement"
						"org.kde.plasma.digitalclock"
					];					
				}
			];
	};
}
