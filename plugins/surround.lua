return {
  --"echasnovski/mini.surround",
  "kylechui/nvim-surround",
  version = '*',
  lazy=false,
  config = function()
    --require("mini.surround").setup()
    require("nvim-surround").setup({})
  end,
}
