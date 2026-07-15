return {
  {
    "folke/tokyonight.nvim",
    opts = {
      -- Bạn có thể chọn style: "storm", "moon", "night", "day"
      -- "moon" là mặc định của LazyVim, có màu xanh tím.
      style = "moon",

      -- Phần này sẽ ghi đè màu gốc thành màu đen
      on_colors = function(colors)
        colors.bg = "#000000" -- Nền chính chuyển thành Đen tuyền
        colors.bg_dark = "#000000" -- Nền tối hơn cũng thành Đen
        colors.bg_float = "#000000" -- Nền các cửa sổ nổi (như lúc gõ code gợi ý) thành Đen
        colors.bg_sidebar = "#000000" -- Nền cây thư mục bên trái thành Đen
        colors.bg_statusline = "#000000" -- Nền thanh trạng thái dưới cùng
      end,
    },
  },

  -- Kích hoạt theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
