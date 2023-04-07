-- customize mason plugins
return {
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_pending = "󱎖 ",
          package_installed = "◍ ",
          package_uninstalled = " ",
        },
      }
    }
  },
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "bashls",
        "cssls",
        "eslint",
        "emmet_ls",
        "html",
        "marksman",
        -- "intelephense",
        "pyright",
        "stylelint_lsp",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "black",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
    },
  },
}
