local status, cat = pcall(require, 'catppuccin')


if (not status) then return end


cat.setup({
  flavor = 'mocha',
  background = {
    light = 'frappe',
    dark = 'mocha'
  },
  transparent_background = false,
  show_end_of_buffer = false, -- show the '~' characters after the end of buffers
  term_colors = true,
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  no_italic = true, -- Force no italic
  no_bold = false, -- Force no bold
  styles = {
    comments = { "bold" },
    conditionals = { "bold" },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  color_overrides = {},
  custom_highlights = {},
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
  },
})


vim.cmd.colorscheme "catppuccin"
