{ options, config, lib, ... }:

with builtins; with lib; with types;
let
  isNixSubmodule = f:
    f != "default.nix" &&
    substring 0 1 f != "_" &&
    substring (stringLength fn - 4) (stringLength fn) f != ".nix";
  submodulesInDir = dir: filter isNixSubmodule (attrNames (readDir ./.));
in
{
  imports = [ submodulesInDir ./. ];
}
