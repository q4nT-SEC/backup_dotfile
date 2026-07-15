return {
  {
    "NStefan002/screenkey.nvim",
    lazy = false,
    version = "*",
    config = function()
      require("screenkey").setup({
        win_opts = {
          -- Đẩy xuống dưới cùng màn hình
          row = vim.o.lines - 1,
          -- Đẩy sang góc phải
          col = vim.o.columns,
          relative = "editor",
          anchor = "SE", -- South-East (Đông Nam - Góc dưới phải)
          width = 30, -- Giảm chiều rộng lại
          height = 1, -- QUAN TRỌNG: Chỉ để cao 1 dòng thôi
          border = "none", -- Bỏ luôn viền cho gọn
        },
        compress_after = 3, -- Gộp các phím giống nhau nhanh hơn (vd: j x3)
        clear_after = 3,
        disable = {
          filetypes = { "dashboard", "neo-tree", "TelescopePrompt" },
        },
      })

      -- Mẹo: Làm nền trong suốt để không che chữ
      vim.api.nvim_set_hl(0, "ScreenkeyNormal", { link = "Normal" })
      vim.api.nvim_set_hl(0, "ScreenkeyCursorLine", { link = "Visual" })
    end,
  },
}
