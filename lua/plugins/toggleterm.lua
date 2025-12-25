return {
  "akinsho/toggleterm.nvim",
  version = "*",
  cmd = { "ToggleTerm", "TermExec" },
  keys = {
    { "<F12>", '<Cmd>execute v:count . "ToggleTerm"<CR>', desc = "Toggle Terminal" },
  },
  config = function()
    local toggleterm = require("toggleterm")
    -- vim.api.nvim_set_hl(0, "FloatTitle", { fg = "#98c379", bold = true }) -- 标题

    toggleterm.setup({
      direction = "float",
      start_in_insert = true,
      close_on_exit = true,
      -- shade_terminals = true,
      -- shading_factor = 2,
      terminal_mappings = true,
      insert_mappings = true,
      open_mapping = [[<F12>]],
      highlights = {
        FloatBorder = { guifg = "#61afef" },
      },
      float_opts = {
        border = "single",
        width = math.floor(vim.o.columns * 0.9),
        height = math.floor(vim.o.lines * 0.9),
        winblend = 5,
        title_pos = "center",
      },
    })
  end,
}
