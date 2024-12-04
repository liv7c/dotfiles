" lua << EOF

" require'nvim-treesitter.configs'.setup {
"   highlight = {
"     enable = {"markdown", "mdx"},
"     disable = true,
"   },
"   indent = {
"     enable = false,
"     disable = {},
"   },
"   ensure_installed = {
"   },
" }

" -- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
" -- parser_config.tsx.used_by = { "javascript", "typescript.tsx" }

" vim.treesitter.language.register("markdown", "mdx")

" EOF

