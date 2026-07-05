{
  inputs = {
    nixpkgs.url = "github:joelkoen/nixpkgs";
  };

  outputs = { self, nixpkgs }:
    let system = "x86_64-linux"; in
    {
      defaultPackage.${system} = nixpkgs.legacyPackages.${system}.callPackage
        ({ lib, buildGoModule, makeWrapper, fetchFromGitHub }:
          buildGoModule {
            name = "postpass";
            src = ./.;
            vendorHash = "sha256-VTXiI77KaRZWQtbTXbWT2IHPDT9TIxklKP64Z0ip+Dc=";
            # excludedPackages = [ "fuzz" ];
            # buildInputs = [ makeWrapper ];
            # postInstall = ''
            #   wrapProgram $out/bin/3mux --prefix PATH : $out/bin
            # '';
          }
        )
        { };
    };
}
