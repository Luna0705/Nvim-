require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = {  "javascript",  "html", "c", "lua", "svelte", "vimdoc", "query", "markdown", "markdown_inline" },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install =false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = false,
  autotag = {enable =true}
  -- List of parsers to ignore installing (or "all")

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

--    disable = function(lang, buf)
--        local max_filesize = 100 * 1024 -- 100 KB
--        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
--        if ok and stats and stats.size > max_filesize then
--            return true
--        end
--    end,
--
    additional_vim_regex_highlighting = true,
  },
}
