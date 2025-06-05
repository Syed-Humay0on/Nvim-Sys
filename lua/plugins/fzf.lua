return {
  {
    "junegunn/fzf",
    build = function()
      vim.fn["fzf#install"]()
    end,
  },
  {
    "junegunn/fzf.vim",
    dependencies = { "junegunn/fzf" },
    keys = {
      { "<leader><space>", ":Files<CR>", desc = "FZF Files" },
      { "<leader>sb", ":Buffers<CR>", desc = "FZF Buffers" },
      { "<leader>sh", ":History<CR>", desc = "FZF History" },
      { "<leader>sg", ":GFiles<CR>", desc = "FZF Git Files" },
      { "<leader>ss", ":Rg<CR>", desc = "FZF Grep (Rg)" },
    },
    cmd = { "Files", "Rg", "GFiles", "Buffers", "History" },
  },
}
