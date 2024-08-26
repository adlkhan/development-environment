return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "ruby" },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "ruby" },
    },
    indent = {
      enable = true,
      disable = { "ruby" },
    },
  },
}
