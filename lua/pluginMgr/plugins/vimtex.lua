return {
  "lervag/vimtex",
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "skim"
    vim.g.vimtex_compiler_method = 'latexmk'
  end,
  lazy = false     -- we don't want to lazy load VimTeX
}
