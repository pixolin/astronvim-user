return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Diagnostics
      null_ls.builtins.diagnostics.editorconfig_checker,
      null_ls.builtins.diagnostics.phpcs.with({
        command = "/Users/bego/.composer/vendor/bin/phpcs",
        extra_args = { '--standard=WordPress-Extra' },
      }),
      null_ls.builtins.diagnostics.pylint,
      null_ls.builtins.diagnostics.shellcheck,
      null_ls.builtins.diagnostics.stylelint,

      -- Formatting
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.phpcbf.with({
        command = "/Users/bego/.composer/vendor/bin/phpcbf",
        extra_args = { '--standard=WordPress-Extra' },
      }),
      null_ls.builtins.formatting.stylelint,

    }
    return config -- return final config table
  end,
}
