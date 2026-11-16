{ pkgs, inputs, ... }:

{
  environment.systemPackages = [
    inputs.sidra.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
