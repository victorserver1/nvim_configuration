return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        current_line_blame = true, -- muestra quién tocó la línea
      })
    end,
  },
}

