local home = os.getenv('HOME')
local db = require('dashboard')
-- db.preview_command = 'cat | lolcat -F 0.3'
-- db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
db.preview_file_height = 12
db.preview_file_width = 80
db.custom_center = {
  -- {icon = '  ',
  -- desc = 'Latest session                          ',
  -- shortcut = 'SPC s l',
  -- action ='SessionLoad'},
  {icon = '  ',
  desc = 'Recently opened files                   ',
  action =  'History',
  shortcut = 'SPC f h'},
  {icon = '  ',
  desc = 'Find File                               ',
  action = 'Telescope find_files find_command=rg,--hidden,--files',
  shortcut = 'SPC f f'},
  {icon = '  ',
  desc = 'Buffer Browser                          ',
  action =  'Telescope buffers',
  shortcut = 'SPC b b'},
  {icon = '  ',
  desc = 'Find word                               ',
  action = 'Telescope live_grep',
  shortcut = 'SPC f w'},
  {icon = '  ',
  desc = 'Change colorscheme                      ',
  action = 'Telescope colorscheme',
  shortcut = 'SPC c c'},
  {icon = '  ',
  desc = 'i3WM Config                             ',
  action = 'e ~/.config/i3/config',
  shortcut = 'SPC c 3'},
  {icon = '  ',
  desc = 'NeoVim Config                           ',
  action = 'e ~/.config/nvim/',
  shortcut = 'SPC c n'},
  {icon = '  ',
  desc = 'fish Config                             ',
  action = 'e ~/.config/fish/',
  shortcut = 'SPC c f'},

}
