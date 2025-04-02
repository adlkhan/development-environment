return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "ruby", "html" },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "ruby", "html" },
    },
    indent = {
      enable = true,
      disable = { "ruby", "html" },
    },
  },
}
