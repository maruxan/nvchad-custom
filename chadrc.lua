local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,

M.options = {
  user = function()
    require 'custom.options'
  end
}

M.plugins = {

  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },

  override = {
    ["NvChad/ui"] = {
      statusline = {
          separator_style = 'block',
      },
    },
  },

  user = require "custom.plugins",

}

M.ui = {

  theme = "chadracula",

}

M.mappings = require "custom.mappings"

return M
