vim.opt.encoding = "utf-8"
vim.opt.nu = true
vim.wo.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.list = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.termguicolors = true

--vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
--    pattern = "*.py",
--    callback = function()
--        -- vim.opt.textwidth = 79
--        -- vim.opt.colorcolumn = "79"
--    end
--}) -- python formatting


-- vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
--     pattern = {"*.js", "*.html", "*.css", "*.lua"},
--     callback = function()
--         vim.opt.tabstop = 2
--         vim.opt.softtabstop = 2
--         vim.opt.shiftwidth = 2
--     end
-- }) -- javascript and lua formatting

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
      vim.cmd("normal! g`\"")
    end
  end
}) -- return to last edit postion when opening files

