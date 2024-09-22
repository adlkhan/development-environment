return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    opts.options = vim.tbl_extend("force", opts.options, {
      mode = "tabs",
    })
  end,
}
