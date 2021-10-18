{ nixpkgs ? import ./nixpkgs.nix
}: let
  inherit (nixpkgs) mkShell;
in mkShell {
  name = "remarkable2-custom-templates";
  buildInputs = with nixpkgs.pkgs; [
    jq
    inkscape
    bash
  ];
}
