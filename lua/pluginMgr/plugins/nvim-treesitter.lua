return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter").setup{{build=":TSUpdate"}}
      local configs = require("nvim-treesitter.configs")
      configs.setup({
          ensure_installed = {  "lua", "python"  },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
      })
  end
}
