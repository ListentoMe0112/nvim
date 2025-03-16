return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
      vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
      vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
      vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")
    end

  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    -- This is your opts table
    config = function()
      -- This is your opts table
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")
    end
  }
}
