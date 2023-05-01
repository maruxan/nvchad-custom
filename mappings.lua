local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<C-n>"] = "",
    ["<C-s>"] = "",
    ["<leader>x"] = "",
  },
}

-- Your custom mappings
M.abc = {
  n = {
    ["<leader>w"] = { ":w <CR>", "Save file" },
    ["<leader>c"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
    ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
    ["<leader><leader>"] = {
      function()
        require("hop").hint_char1()
      end,
      "hop to char",
    },
  },

  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    ["kj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}

return M
