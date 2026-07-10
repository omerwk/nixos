{ ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	  users.users."omer" = {
	    isNormalUser = true;
	    description = "omer";
	    extraGroups = [ "networkmanager" "wheel" ];
	  };
}
