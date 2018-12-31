{ pkgs ? import <nixpkgs> {} }:
let manPath = doc/memo.1;
in pkgs.stdenv.mkDerivation {
  name = "memo";
  buildInputs = [
    (pkgs.writeShellScriptBin "make-man" ''
      ${pkgs.pandoc}/bin/pandoc --standalone --to man -o ${toString manPath} doc/memo.1.md
    '')
    (pkgs.writeShellScriptBin "view-man" ''
      ${pkgs.man-db}/bin/man ${toString manPath}
    '')
  ];
}
