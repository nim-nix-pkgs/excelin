{
  description = ''Create and read Excel purely in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."excelin-master".dir   = "master";
  inputs."excelin-master".owner = "nim-nix-pkgs";
  inputs."excelin-master".ref   = "master";
  inputs."excelin-master".repo  = "excelin";
  inputs."excelin-master".type  = "github";
  inputs."excelin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."excelin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."excelin-v0_1_0".dir   = "v0_1_0";
  inputs."excelin-v0_1_0".owner = "nim-nix-pkgs";
  inputs."excelin-v0_1_0".ref   = "master";
  inputs."excelin-v0_1_0".repo  = "excelin";
  inputs."excelin-v0_1_0".type  = "github";
  inputs."excelin-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."excelin-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."excelin-v0_2_0".dir   = "v0_2_0";
  inputs."excelin-v0_2_0".owner = "nim-nix-pkgs";
  inputs."excelin-v0_2_0".ref   = "master";
  inputs."excelin-v0_2_0".repo  = "excelin";
  inputs."excelin-v0_2_0".type  = "github";
  inputs."excelin-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."excelin-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."excelin-v0_2_1".dir   = "v0_2_1";
  inputs."excelin-v0_2_1".owner = "nim-nix-pkgs";
  inputs."excelin-v0_2_1".ref   = "master";
  inputs."excelin-v0_2_1".repo  = "excelin";
  inputs."excelin-v0_2_1".type  = "github";
  inputs."excelin-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."excelin-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."excelin-v0_2_2".dir   = "v0_2_2";
  inputs."excelin-v0_2_2".owner = "nim-nix-pkgs";
  inputs."excelin-v0_2_2".ref   = "master";
  inputs."excelin-v0_2_2".repo  = "excelin";
  inputs."excelin-v0_2_2".type  = "github";
  inputs."excelin-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."excelin-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."excelin-v0_3_0".dir   = "v0_3_0";
  inputs."excelin-v0_3_0".owner = "nim-nix-pkgs";
  inputs."excelin-v0_3_0".ref   = "master";
  inputs."excelin-v0_3_0".repo  = "excelin";
  inputs."excelin-v0_3_0".type  = "github";
  inputs."excelin-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."excelin-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."excelin-v0_3_1".dir   = "v0_3_1";
  inputs."excelin-v0_3_1".owner = "nim-nix-pkgs";
  inputs."excelin-v0_3_1".ref   = "master";
  inputs."excelin-v0_3_1".repo  = "excelin";
  inputs."excelin-v0_3_1".type  = "github";
  inputs."excelin-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."excelin-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."excelin-v0_3_2".dir   = "v0_3_2";
  inputs."excelin-v0_3_2".owner = "nim-nix-pkgs";
  inputs."excelin-v0_3_2".ref   = "master";
  inputs."excelin-v0_3_2".repo  = "excelin";
  inputs."excelin-v0_3_2".type  = "github";
  inputs."excelin-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."excelin-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}