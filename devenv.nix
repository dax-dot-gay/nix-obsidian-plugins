{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  languages.rust.enable = true;
  dotenv.enable = true;
  packages = [pkgs.openssl];
}
