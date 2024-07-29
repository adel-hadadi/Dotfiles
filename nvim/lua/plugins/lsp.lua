return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "gopls",
        "golangci-lint-langserver",
        "sqlls",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      keys[#keys + 1] = { "gl", "<cmd>lua vim.diagnostic.open_float()<CR>" }
    end,
  },
}
