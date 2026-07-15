-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- -- Kiểm tra xem Neovim có đang chạy HOÀN CẢNH bên trong VS Code không
if vim.g.vscode then
  local vscode = require("vscode")

  -- 1. Hủy bỏ keymap mặc định "<leader>e" của LazyVim trong VS Code để tránh xung đột
  vim.keymap.del("n", "<leader>e")

  -- 2. Gán lại "<leader>e" để gọi lệnh đóng/mở Sidebar của VS Code
  vim.keymap.set("n", "<leader>e", function()
    vscode.action("workbench.action.toggleSidebarVisibility")
  end)

  -- 3. Đảm bảo Space + w và Space + q gọi đúng lệnh VS Code (LazyVim cũng có map mặc định cho 2 phím này)
  vim.keymap.set("n", "<leader>w", function()
    vscode.action("workbench.action.files.save")
  end)

  vim.keymap.set("n", "<leader>q", function()
    vscode.action("workbench.action.closeActiveEditor")
  end)
end
