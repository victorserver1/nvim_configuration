return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        javascript = { "prettierd", "prettier" },
        typescript = { "prettierd", "prettier" },
        json = { "prettierd", "prettier" },
        css = { "prettierd", "prettier" },
        html = { "prettierd", "prettier" },
      },
      -- Formatear al guardar (opcional)
      format_on_save = function(bufnr)
        return {
          timeout_ms = 500,
          lsp_fallback = true,
        }
      end,
    },
  },
}

