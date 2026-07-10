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

	xdg.configFile."fish/functions".source = ./fish/functions;
	xdg.configFile."fish/conf.d/myabbrs.fish".source = 
	./fish/conf.d/myabbrs.fish;
}
