return {
  -- make splits work across nvim and its host terminal
  {
    "mrjones2014/smart-splits.nvim",
    lazy = false,
    keys = {
      { "<A-k>", function() require("smart-splits").resize_up() end },
      { "<A-j>", function() require("smart-splits").resize_down() end },
      { "<A-h>", function() require("smart-splits").resize_left() end },
      { "<A-l>", function() require("smart-splits").resize_right() end },
      { "<C-h>", function() require("smart-splits").move_cursor_left() end },
      { "<C-j>", function() require("smart-splits").move_cursor_down() end },
      { "<C-k>", function() require("smart-splits").move_cursor_up() end },
      { "<C-l>", function() require("smart-splits").move_cursor_right() end }
    },
  },
}
