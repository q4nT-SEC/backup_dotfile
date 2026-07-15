return {
  "barrett-ruth/live-server.nvim",
  -- XÓA dòng 'build' đi vì mình đã cài thủ công ở Bước 1 rồi
  cmd = { "LiveServerStart", "LiveServerStop" },
  config = true,
  keys = {
    { "<leader>ls", "<cmd>LiveServerStart<cr>", desc = "Start Live Server" },
    { "<leader>lx", "<cmd>LiveServerStop<cr>", desc = "Stop Live Server" },
  },
}
