import Lake
open Lake DSL

package «bptest» where
  -- add package configuration options here

lean_lib «Bptest» where
  -- add library configuration options here

@[default_target]
lean_exe «bptest» where
  root := `Main

require checkdecls from git "https://github.com/PatrickMassot/checkdecls.git"

meta if get_config? env = some "dev" then
require «doc-gen4» from git
