vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.wo.relativenumber = true

local opt = vim.opt

opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true

local keymap = vim.keymap

-- window management
keymap.set("n","<leader>sr", "<C-w>v", { desc = "Split window vertically" }) --split window vertically
keymap.set("n", "<leader>sb", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontal
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal w
keymap.set("n", "<leader>sc", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split w
keymap.set("n", "<C-s>", ":w", { desc = "Save" }) -- close current split w
keymap.set("n", "<C-s>c", ":wqa!", { desc = "Save and close" }) -- close current split w


-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab"})


local original_notify = vim.notify
vim.notify = function(msg, ...)
  if not msg:match("bufls is deprecated") then
    original_notify(msg, ...)
  end
end


