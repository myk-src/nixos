{ pkgs, ... }:
{
  programs = {
    dconf.enable = true;
    zsh.enable = true;

    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
      # pinentryFlavor = "";
    };

    appimage.enable = true;

    nix-ld = {
      enable = true;
      libraries = with pkgs; [
        alsa-lib
        at-spi2-core
        cairo
        cups
        dbus
        expat
        fontconfig
        freetype
        glib
        gtk3
        libdrm
        libgbm
        libGL
        libpulseaudio
        libx11
        libxcb
        libxcomposite
        libxcursor
        libxdamage
        libxext
        libxfixes
        libxi
        libxkbcommon
        libxrandr
        libxrender
        libxtst
        mesa
        nspr
        nss
        pango
        vulkan-loader
        wayland
      ];
    };
  };
}
