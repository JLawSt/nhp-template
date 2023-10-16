{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [ pkgs.openjdk ];

  shellHook = ''
    function javacRun() {
      javac src/Main.java -d bin/
      java -cp bin Main
    }
  '';
}