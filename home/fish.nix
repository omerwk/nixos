{pkgs, ... }:

{
	programs.fish = {
		enable = true;

		interactiveShellInit = ''
			set -g fish_greeting
		'';

		plugins = [
			{
				name = "tide";
				src = pkgs.fishPlugins.tide;
			}
		];
	};

	programs.zoxide = {
		enable = true;
		enableFishIntegration = true;	
	};

	xdg.configFile."fish/functions".source = ./fish/functions;
	xdg.configFile."fish/conf.d/myabbrs.fish".source = 
	./fish/conf.d/myabbrs.fish;
}
