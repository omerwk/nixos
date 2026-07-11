{ pkgs, ... }:

{
	imports = [
		<plasma-manager/modules>	
	];

	programs.plasma = {
			enable = true;


			workspace = {
				cursor.theme = "Bibata-Modern-Ice";
				iconTheme = "Papirus-Dark";
				lookAndFeel = "org.kde.breezedark.desktop";
				clickItemTo = "select";
				# wallpaper = "./images/wallpapers/wallhaven-w5d8jr.jpg";
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

			panels = [
				{
					location = "bottom";
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
								musicControls.showPlaybackControls = true;
								songText = {
									displayInSeparateLines = false;
									maximumWidth = 640;
								};
							};
						}
						"org.kde.plasma.panelspacer"
						{
							iconTasks = {
								launchers = [
									"applications:librewolf"
									"applications:thunar"
									"applications:discord"
									"applications:spotify"	
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
