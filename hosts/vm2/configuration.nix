# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      /etc/nixos/hardware-configuration.nix
      ../../modules/locale.nix
      ../../modules/packages.nix
      ../../modules/desktop.nix
      ../../modules/sound.nix
      ../../modules/users.nix
      ../../modules/networking.nix
      ../../modules/services.nix
      ../../modules/base.nix
    ];

  system.stateVersion = "26.05"; # Did you read the comment?
}
