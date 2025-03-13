return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    config = function()
        -- markdown preview
        vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<cr>")
    end
}
