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
cmd([[packadd packer.nvim]])

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


  use 'B4mbus/oxocarbon-lua.nvim'


  use "lukas-reineke/indent-blankline.nvim"
  require("ibl").setup()


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
  require('lualine').setup {
    options = {
      theme = 'moonfly',
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

