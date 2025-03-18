# NVim Setup

## Project structure

```
.
├── README.md
├── init.lua
└── lua
    ├── config
    │   ├── autocmds.lua
    │   ├── lazy.lua
    │   ├── mappings.lua
    │   └── options.lua
    └── plugins
        └── lsp
            └── mason.lua
```
## lua/config

 - Contains options, key mappings, and auto-commands that enhance the text-editor environment.

### lua/config/autocmds.lua

 - Enable line numbers and relative line numbers in file explorer. 

### lua/config/mappings.lua

 - Define leader and local leader. 
 - Define command to copy to system clipboard. 
 - Define command to open file explorer. 
 - Define commands for creating and closing split windows.
 - Define commands for moving between split windows. 

### lua/config/options.lua

 - Enable line numbers and relative line numbers.
 - Define tab behaviour. 
 - Set sign column to always active. 

### lua/config/lazy.lua

 - Set up `lazy.nvim`. 

