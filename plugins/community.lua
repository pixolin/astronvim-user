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
        sandwich = false,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        overseer = true,
        ts_rainbow2 = true,
        notify = true,
      },
      transparent_background = true,
      show_end_of_buffer = true,
    },
  },
  -- { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" }
}
