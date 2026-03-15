return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  cmd = { "NvimTreeToggle", "NvimTreeCollapse", "NvimTreeFindFile" },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer" },
    { "<leader>ef", "<cmd>NvimTreeFindFile<cr>", desc = "Explorer find file" },
    { "<leader>ec", "<cmd>NvimTreeCollapse<cr>", desc = "Collapse explorer" },
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
