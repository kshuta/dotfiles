return {
  "mistricky/codesnap.nvim",
  build = "make",
  config = function()
    require("codesnap").setup({
      has_breadcrumbs  = true,
      has_line_number = true,
      bg_padding = 0,

    })
  end


}
