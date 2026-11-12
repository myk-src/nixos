{ pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    ## Multimedia
    amberol # music player
    audacity
    gimp
    media-downloader
    obs-studio
    pavucontrol
    video-trimmer
    vlc
    inputs.spotifast.packages.${stdenv.hostPlatform.system}.default

    newsflash

    ## Office
    libreoffice
    gnome-calculator

    ## Utility
    dconf-editor
    gnome-disk-utility
    popsicle
    mission-center # GUI resources monitor
    zenity

    ## Level editor
    ldtk
    tiled
  ];
}
