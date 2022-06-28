local M = {}
local pluginsConfig = require "custom.plugins.configs"

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
    ["kyazdani42/nvim-tree.lua"] = pluginsConfig.nvimtree,
  },

  user = require "custom.plugins",

}

M.ui = {
  theme = "chadracula",

  statusline = {
    separator_style = "block",
  },
}

M.mappings = require "custom.mappings"

return M
