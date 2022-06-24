local M = {}

M.disabled = {
  n = {
    -- ["<C-s>"] = ""
    ["<leader>wK"] = "",
    ["<leader>wk"] = ""
  }
}

M.formatsave = {
  n = {
    ["<leader>w"] = {
      function()
        vim.lsp.buf.format()
        vim.cmd(":w")
      end,
      "﬚   format and save file",
    },
  }
}

M.workspace = {
  n = {
    ["<leader>ea"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "   add workspace folder",
    },

    ["<leader>er"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "   remove workspace folder",
    },

    ["<leader>el"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "   list workspace folders",
    },
  }
}

M.treesitter = {
  n = {
    ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
  },
}

M.transparent = {
  n = {
    ["<leader>s"] = { "<cmd> TransparentToggle <CR>", "   toggle transparent background" },
  },
}

return M
