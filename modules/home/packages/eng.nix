
{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## KiCAD
     kicad
  ];
}
