local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd "packadd packer.nvim"
end
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


return require('packer').startup({
  function(use)

    -- Plugin Manager: Packer can manage itself
    use "wbthomason/packer.nvim"
    --注释插件
    use "tpope/vim-commentary"
    --彩虹括号
    use "luochen1990/rainbow"
    -- git 标识
    use "airblade/vim-gitgutter"
    -- git 命令
    use "tpope/vim-fugitive"
    -- 通用配置
    use "tpope/vim-sensible"
    -- 包裹符号
    use "tpope/vim-surround"
    -- 点命令加强
    use "tpope/vim-repeat"
    use "tpope/vim-unimpaired"
    -- 符号自动匹配，比如：输入(自动闭合）
    use "windwp/nvim-autopairs"
    -- 自动保存
    use "907th/vim-auto-save"
    -- indent
    use "Yggdroot/indentLine"
    -- align
    use "junegunn/vim-easy-align"
    -- vimwiki
    use {"vimwiki/vimwiki", branch = 'dev'}
    -- 对齐插件
    use "godlygeek/tabular"
    -- markdown插件
    use "plasticboy/vim-markdown"


    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end
  end,
  config = {
    max_jobs = 16,
    git = {
      default_url_format = "https://hub.fastgit.org/%s"
    },
    display = {
      open_fn = function()
        return require("packer.util").float({border = "single"})
      end
   }
 }
})
























































