{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking = {
    hostName = "nixos";
    networkmanager.enable = true; 
    firewall = {
      enable = true;
      allowedTCPPorts = [ 7777 9993 9994 ];
      allowedUDPPorts = [ 53 67 ];
    };
  };

  sound.enable = true;
  security.rtkit.enable = true;

  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
      excludePackages = with pkgs; [ xterm ];
      videoDrivers = ["amdgpu"];
    };

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };

  hardware = {
    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
    };
    pulseaudio.enable = false;
  };

  # Set your time zone.
  time.timeZone = "Asia/Jakarta";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  users.users.deadeyez = {
    isNormalUser = true;
    description = "deadeyez";
    extraGroups = [ "networkmanager" "wheel" "gamemode" "libvirtd" "kvm" "docker" "adbusers" "lxd"];
    shell = pkgs.zsh;
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    fira-code-nerdfont
    material-design-icons
  ];

  xdg.portal = {
    enable = true;
    config = { common = { default = [ "hyprland" ]; }; };
    extraPortals = with pkgs; [ 
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
  };

  virtualisation = {
    docker.enable = true;
    containers.enable = true;
    spiceUSBRedirection.enable = true;
    podman = {
      enable = true;
      defaultNetwork.settings.dns_enabled = true;
      networkSocket.openFirewall = true;
    };
    libvirtd.enable = true;
  };
  
  programs = {
    gamemode.enable = true;
    gamescope.enable = true;
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall =true;
      gamescopeSession.enable = true;
    };

    hyprland = {
      enable = true;
      xwayland.enable = true;
    };

    virt-manager.enable = true;
    zsh.enable = true;
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "24.05";
}
