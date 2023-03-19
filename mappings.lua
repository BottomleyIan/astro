-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  v = {
    ["<leader>s"] = { name = "Ian" }, 
    ["<leader>sm"] = { "<cmd>Glow<cr>", desc= "Preview Markdown"},
    ["<leader>st"] = { "<Plug>(leap-forward-till)", desc = "Leap Forward" },
    ["<leader>sr"] = { "<Plug>(leap-backward-till)", desc = "Leap Backward" },
    ["<leader>so"] = { "<cmd>ObsidianToday<cr>", desc = "Obsidian Today"},
    ["<leader>sO"] = {"<cmd>ObsidianYesterday<cr>", desc = "Obsidian Yesterday"},
    ["<leader>sb"] = {"<cmd>ObsidianBacklinks<cr>", desc = "Obsidian Backlinks"},
    ["<leader>sf"] = {"<cmd>ObsidianFollowLink<cr>", desc = "Obsidian Follow Link"},
    ["<leader>sF"] = {"<cmd>ObsidianLinkNew<cr>", desc = "Obsidian New Link"},
    ["<leader>sI"] = { ":silent! !sh ~/notes/commit.zsh<cr>", desc = 'Obsidian push'},
    ["<leader>si"] = { ":silent! !sh ~/notes/pull.zsh<cr>", desc = 'Obsidian pull'},
  },
  -- first key is the mode
  n = {
    ["<leader>s"] = { name = "Ian" }, 
    ["<leader>sm"] = { "<cmd>Glow<cr>", desc= "Preview Markdown"},
    ["<leader>st"] = { "<Plug>(leap-forward-till)", desc = "Leap Forward" },
    ["<leader>sr"] = { "<Plug>(leap-backward-till)", desc = "Leap Backward" },
    ["<leader>so"] = { "<cmd>ObsidianToday<cr>", desc = "Obsidian Today"},
    ["<leader>sO"] = {"<cmd>ObsidianYesterday<cr>", desc = "Obsidian Yesterday"},
    ["<leader>sb"] = {"<cmd>ObsidianBacklinks<cr>", desc = "Obsidian Backlinks"},
    ["<leader>sf"] = {"<cmd>ObsidianFollowLink<cr>", desc = "Obsidian Follow Link"},
    ["<leader>sF"] = {"<cmd>ObsidianLinkNew<cr>", desc = "Obsidian New Link"},
    ["<leader>sI"] = { ":silent! !sh ~/notes/commit.zsh<cr>", desc = 'Obsidian push'},
    ["<leader>si"] = { ":silent! !sh ~/notes/pull.zsh<cr>", desc = 'Obsidian pull'},
    ["<leader>su"] = { 
      function()
        vim.cmd.UndotreeToggle()
      end,
      desc = 'Undotree Toggle'},
    ["<leader>sz"] = { 
      function()
        require("zen-mode").toggle()
      end, 
      desc = "Zen Mode" },
    ["<leader>a"] = { name = 'Harpoon' },
    ["<leader>aa"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Add File",
    },
    ["<leader>as"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "Toggle Quick Menu",
    },
    ["<leader>an"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      desc = "Navigate to File 1",
    },
    ["<leader>ae"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      desc = "Navigate to File 2",
    },
    ["<leader>ai"] = {
      function()
        require("harpoon.ui").nav_file(3)
      end,
      desc = "Navigate to File 3",
    },
    ["<leader>ao"] = {
      function()
        require("harpoon.ui").nav_file(4)
      end,
      desc = "Navigate to File 4",
    },
    ["<leader>at"] = {
      function()
        require("harpoon.ui").nav_next()
      end,
      desc = "Navigate Next",
    },
    ["<leader>ar"] = {
      function()
        require("harpoon.ui").nav_prev()
      end,
      desc = "Navigate Previous",
    },
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
  ["<leader>fN"] = { function() require("telescope.builtin").live_grep({ cwd = '~/notes/'}) end, desc = "Find notes" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },

}
