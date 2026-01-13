return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  keys = {
    {
      "ö",
      function()
        require("oil").open_float()
      end,
      desc = "Open oil",
    },
  },
  config = function()
    require("oil").setup({
      float = {
        border = "rounded",
        padding = 5,
      },
    })
  end,
}
