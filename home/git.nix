{ ... }:

{
	programs.git = {
		enable = true;

		settings.user = {
			name = "omerwk";
			email = "omerwolkoon@gmail.com";
		};

		settings.alias = {
			st = "status";	
		};

		settings = {
		      credential.helper = "!gh auth git-credential";
		};
	};
}
