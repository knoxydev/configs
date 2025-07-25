local mode_map = {
  ['NORMAL'] = 'NOR',
  ['O-PENDING'] = 'N?',
  ['INSERT'] = 'INS',
  ['VISUAL'] = 'VIS',
  ['V-BLOCK'] = 'VB',
  ['V-LINE'] = 'VL',
  ['V-REPLACE'] = 'VR',
  ['REPLACE'] = 'REP',
  ['COMMAND'] = '!',
  ['SHELL'] = 'SH',
  ['TERMINAL'] = 'T',
  ['EX'] = 'X',
  ['S-BLOCK'] = 'SB',
  ['S-LINE'] = 'SL',
  ['SELECT'] = 'SLC',
  ['CONFIRM'] = 'Y?',
  ['MORE'] = 'M',
}



-- Plugin definition and loading
-- local execute = vim.api.nvim_command
local fn = vim.fn
local cmd = vim.cmd

-- Boostrap Packer
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone','https://github.com/wbthomason/packer.nvim', install_path})
end

-- Load Packer
vim.cmd [[packadd packer.nvim]]

-- Rerun PackerCompile everytime pluggins.lua is updated
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Initialize pluggins
return require('packer').startup(function(use)

    -- Let Packer manage itself
  use({'wbthomason/packer.nvim', opt = true})


  use "B4mbus/oxocarbon-lua.nvim"
  use "n1ghtmare/noirblaze-vim"
  use "huyvohcmc/atlas.vim"
  -- LIGHT use "cideM/yui"


  use "lukas-reineke/indent-blankline.nvim"
  require("ibl").setup()


  use {
    'numToStr/Comment.nvim',
    config = function()
      local ft = require('Comment').setup()

      ft.set('yaml', '#%s').set('javascript', {'//%s', '/*%s*/'})

      ft.javascript = {'//%s', '/*%s*/'}
      ft.yaml = '#%s'

      ft({'go', 'rust'}, ft.get('c'))
      ft({'toml', 'graphql'}, '#%s')
    end
  }


  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }
  

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


 
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  
  local custom_moonfly = require 'lualine.themes.moonfly'
  custom_moonfly.normal.a.bg = '#212121'
  custom_moonfly.normal.b.bg = '#212121'
  custom_moonfly.normal.c.bg = '#212121'
  
  custom_moonfly.insert.a.bg = '#212121'
  custom_moonfly.insert.b.bg = '#212121'
  
  custom_moonfly.visual.a.bg = '#212121'
  custom_moonfly.visual.b.bg = '#212121'

  custom_moonfly.normal.a.fg = '#C6C6C6'
  custom_moonfly.insert.a.fg = '#C6C6C6'
  custom_moonfly.visual.a.fg = '#C6C6C6'
  
  require('lualine').setup {
    options = {
      theme = custom_moonfly,
      section_separators = '', component_separators = '',
    },
    sections = {
      lualine_a = { {'mode', fmt = function(s) return mode_map[s] or s end} },
    }
  }
  

  
  -- use {'oneslash/helix-nvim', tag = "*"}  

  if packer_bootstrap then
    require('packer').sync()
  end
end)

