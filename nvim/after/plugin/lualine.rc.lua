local status, lualine = pcall(require, 'lualine')


if (not status) then return end


lualine.setup({
  options = {
    icons_enabled = true,
    theme = 'catppuccin',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetype = {}
  }, 
  sections = {
    lualine_a = {  'mode'  },
    lualine_b = {  'branch'  },
    lualine_c = {{
      'filename',
      file_status = true,
      path = 0,
    }},
    lualine_x = {
      {  
        'diagnostics', 
        sources = {  'nvim_diagnostic' },
        symbols = {  error = ' ', warn = ' ', info = ' ', hint = ' '  }
      },
      'encoding',
      'filetype'
    },
    lualine_y = {  'progress'  },
    lualine_z = {  'location'  },
  },
  inactive_section = {
  lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 
    }},
    lualine_x = {  'location'  },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {  'fugitive ' }
})
