return {
    {
	    "terrortylor/nvim-comment",
	    config = function()
	      require("nvim_comment").setup({ create_mappings = false })
        -- nvim-comment
        vim.keymap.set({ "n", "v" }, "<leader>/", ":CommentToggle<cr>")
	    end
    },
}
