"lua << EOF

"require'nvim-treesitter.configs'.setup {
"  highlight = {
"    enable = true,
"    disable = {},
"  },
"  indent = {
"    enable = false,
"    disable = {},
"  },
"  ensure_installed = {
"    "tsx",
"    "javascript",
"    "toml",
"    "php",
"    "json",
"    "yaml",
"    "html",
"    "css",
"    "scss",
"    "svelte",
"    "rust",
"    "typescript"
"  },
"}

"local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
"parser_config.tsx.used_by = { "javascript", "typescript.tsx" }

"EOF
