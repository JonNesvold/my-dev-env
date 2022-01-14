local colors = {
  blue   = '#80a0ff',
  orange = '#e57301',
  dblue  = '#256296',
  black  = '#080808',
  white  = '#c6c6c6',
  owhite = '#fdfffe',
  red    = '#ff5189',
  green  = '#119767',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.owhite, bg = colors.green },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.owhite, bg = colors.dblue } },
  visual = { a = { fg = colors.owhite, bg = colors.orange } },
  replace = { a = { fg = colors.owhite, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

require('lualine').setup {
  options = {
    theme = bubbles_theme,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 4 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 4 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
