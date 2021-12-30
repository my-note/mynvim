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
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://hub.fastgit.org/akinsho/bufferline.nvim"
  },
  indentLine = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/indentLine",
    url = "https://hub.fastgit.org/Yggdroot/indentLine"
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
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://hub.fastgit.org/windwp/nvim-autopairs"
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
  rainbow = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://hub.fastgit.org/luochen1990/rainbow"
  },
  tabular = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://hub.fastgit.org/godlygeek/tabular"
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
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://hub.fastgit.org/tpope/vim-unimpaired"
  },
  vimwiki = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vimwiki",
    url = "https://hub.fastgit.org/vimwiki/vimwiki"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
