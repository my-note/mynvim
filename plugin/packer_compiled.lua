-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/user/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/user/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://hub.fastgit.org/L3MON4D3/LuaSnip"
  },
  ["ack.vim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/ack.vim",
    url = "https://hub.fastgit.org/mileszs/ack.vim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://hub.fastgit.org/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://hub.fastgit.org/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://hub.fastgit.org/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://hub.fastgit.org/hrsh7th/cmp-cmdline"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://hub.fastgit.org/hrsh7th/cmp-emoji"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/cmp-look",
    url = "https://hub.fastgit.org/octaltree/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://hub.fastgit.org/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://hub.fastgit.org/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://hub.fastgit.org/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://hub.fastgit.org/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://hub.fastgit.org/saadparwaiz1/cmp_luasnip"
  },
  ["denite.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/denite.nvim",
    url = "https://hub.fastgit.org/Shougo/denite.nvim"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://hub.fastgit.org/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://hub.fastgit.org/rafamadriz/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://hub.fastgit.org/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://hub.fastgit.org/junegunn/fzf.vim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://hub.fastgit.org/sainnhe/gruvbox-material"
  },
  indentLine = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/indentLine",
    url = "https://hub.fastgit.org/Yggdroot/indentLine"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://hub.fastgit.org/folke/lsp-colors.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://hub.fastgit.org/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://hub.fastgit.org/nvim-lualine/lualine.nvim"
  },
  ["md-img-paste.vim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/md-img-paste.vim",
    url = "https://hub.fastgit.org/ferrine/md-img-paste.vim"
  },
  neoformat = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "https://hub.fastgit.org/sbdchd/neoformat"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://hub.fastgit.org/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://hub.fastgit.org/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://hub.fastgit.org/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://hub.fastgit.org/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://hub.fastgit.org/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://hub.fastgit.org/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://hub.fastgit.org/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://hub.fastgit.org/nvim-lua/plenary.nvim"
  },
  rainbow = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://hub.fastgit.org/luochen1990/rainbow"
  },
  rnvimr = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/rnvimr",
    url = "https://hub.fastgit.org/kevinhwang91/rnvimr"
  },
  tabular = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://hub.fastgit.org/godlygeek/tabular"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://hub.fastgit.org/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://hub.fastgit.org/nvim-telescope/telescope.nvim"
  },
  ["vim-auto-save"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-auto-save",
    url = "https://hub.fastgit.org/907th/vim-auto-save"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://hub.fastgit.org/tpope/vim-commentary"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://hub.fastgit.org/junegunn/vim-easy-align"
  },
  ["vim-expand-region"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-expand-region",
    url = "https://hub.fastgit.org/terryma/vim-expand-region"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://hub.fastgit.org/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://hub.fastgit.org/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://hub.fastgit.org/airblade/vim-gitgutter"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://hub.fastgit.org/plasticboy/vim-markdown"
  },
  ["vim-markdown-toc"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-markdown-toc",
    url = "https://hub.fastgit.org/mzlogin/vim-markdown-toc"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://hub.fastgit.org/tpope/vim-repeat"
  },
  ["vim-sensible"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-sensible",
    url = "https://hub.fastgit.org/tpope/vim-sensible"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://hub.fastgit.org/tpope/vim-surround"
  },
  ["vim-table-mode"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-table-mode",
    url = "https://hub.fastgit.org/dhruvasagar/vim-table-mode"
  },
  ["vim-textobj-entire"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-textobj-entire",
    url = "https://hub.fastgit.org/kana/vim-textobj-entire"
  },
  ["vim-textobj-indent"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-textobj-indent",
    url = "https://hub.fastgit.org/kana/vim-textobj-indent"
  },
  ["vim-textobj-line"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-textobj-line",
    url = "https://hub.fastgit.org/kana/vim-textobj-line"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://hub.fastgit.org/kana/vim-textobj-user"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://hub.fastgit.org/tpope/vim-unimpaired"
  },
  vimwiki = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vimwiki",
    url = "https://hub.fastgit.org/vimwiki/vimwiki"
  },
  ["wildfire.vim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/wildfire.vim",
    url = "https://hub.fastgit.org/gcmt/wildfire.vim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
