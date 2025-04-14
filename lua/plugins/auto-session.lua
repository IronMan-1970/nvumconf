return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({
      auto_restore_enabled = false,
      suppressed_dirs = { "~/", "~/Documents", "/" },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionSearch<CR>", { desc = "Session search" })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session" })
    keymap.set("n", "<leader>wa", "<cmd>SessionToggleAutoSave<CR>", { desc = "Toggle autosave" })
  end,
}
