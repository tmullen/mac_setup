return {
  -- Import LazyVim's git extras which includes lazygit integration
  { import = "lazyvim.plugins.extras.ui.edgy" },
  
  -- Enable lazygit integration
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}