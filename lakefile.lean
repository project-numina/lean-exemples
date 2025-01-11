import Lake
open Lake DSL

package «LeanExamples» where
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩, -- pretty-prints `fun a ↦ b`
    ⟨`pp.proofs.withType, false⟩
  ]
  -- add any package configuration options here

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

-- meta if get_config? env = some "dev" then -- dev is so not everyone has to build it
-- require «doc-gen4» from git "https://github.com/leanprover/doc-gen4" @ "main"

@[default_target]
lean_lib «LeanExamples» where
  -- add any library configuration options here

lean_exe «decls» where
  root := `exe.Decls

require checkdecls from git "https://github.com/PatrickMassot/checkdecls.git"

--meta if get_config? env = some "dev" then
require «doc-gen4» from git
  "https://github.com/leanprover/doc-gen4" @ "main"
