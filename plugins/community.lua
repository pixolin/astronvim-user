return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  {
    import = "astrocommunity.colorscheme.catppuccin",
    enabled = true
  },
  {
    -- further customize the options set by the community
    "catppuccin",
    opts = {
      integrations = {
        gitsigns = true,
        notify = true,
        noice = true,
      },
      transparent_background = true,
      show_end_of_buffer = true,
    },
  },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  {
    "trouble.nvim",
    opts = {
      use_diagnostic_signs = false,
      signs = {
        -- icons / text used for a diagnostic
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = "﫠"
      },
    },
  },
  {
    import = "astrocommunity.editing-support.todo-comments-nvim",
    event = "User AstroFile"
  },
  { import = "astrocommunity/utility/noice-nvim/" },
}
