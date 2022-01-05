local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap =
        fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd "packadd packer.nvim"
end
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.cmd(
    [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)

return require("packer").startup(
    {
        function(use)
            -- Plugin Manager: Packer can manage itself
            use "wbthomason/packer.nvim"

            use "lilydjwg/fcitx.vim"
            -- 主题
            use "sainnhe/gruvbox-material"

            -- 格式化 npm install --save-dev --save-exact prettier
            use "sbdchd/neoformat"
            use "mhartington/formatter.nvim"

            --自动补全native lsp
            --Nvim LSP 客户端的快速入门配置
            use "neovim/nvim-lspconfig"
            use "williamboman/nvim-lsp-installer"
            use {
                "hrsh7th/nvim-cmp",
                requires = {
                    "hrsh7th/cmp-nvim-lsp", --neovim 内置 LSP 客户端的 nvim-cmp 源
                    --以下插件可选，可以根据个人喜好删减
                    "onsails/lspkind-nvim", --美化自动完成提示信息
                    "hrsh7th/cmp-buffer", --从buffer中智能提示
                    "hrsh7th/cmp-nvim-lua", --nvim-cmp source for neovim Lua API.
                    "octaltree/cmp-look", --用于完成英语单词
                    "hrsh7th/cmp-path", --自动提示硬盘上的文件
                    "hrsh7th/cmp-calc", --输入数学算式（如1+1=）自动计算
                    "f3fora/cmp-spell", --nvim-cmp 的拼写源基于 vim 的拼写建议
                    "hrsh7th/cmp-emoji", --输入: 可以显示表情
                    "hrsh7th/cmp-cmdline"
                }
            }

            -- 自动为尚不支持 Neovim 0.5 内置 lsp 客户端的配色方案创建缺少的 LSP 诊断突出显示组。
            use "folke/lsp-colors.nvim"
            -- 基于neovim 内置lsp 的轻量级lsp 插件，具有高性能UI。非常酷
            -- use "rinx/lspsaga.nvim"

            --语法高亮
            use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

            -- 文件模糊搜索文件搜索 预览插件telescope
            -- need install ripgrep [https://github.com/BurntSushi/ripgrep]
            -- sudo apt install fd-find
            -- ln -s /usr/bin/fdfind ~/.local/bin/fd
            use {
                "nvim-telescope/telescope.nvim",
                requires = {
                    "nvim-lua/plenary.nvim",
                    "kyazdani42/nvim-web-devicons"
                }
            }
            use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}

            --fzf
            use {"junegunn/fzf", dir = "~/.fzf", run = "./install --all"}
            use "junegunn/fzf.vim"

            --内嵌浮动ranger插件
            --pip3 install ranger-fm pynvim
            --pip3 install ueberzug
            use "kevinhwang91/rnvimr"

            -- 文件查找插件
            use {"Shougo/denite.nvim", run = ":UpdateRemotePlugins"}
            -- 悬浮终端
            use "voldikss/vim-floaterm"

            -- 代码段提示
            use {
                "L3MON4D3/LuaSnip",
                requires = {
                    "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
                    "rafamadriz/friendly-snippets" --代码段合集
                }
            }
            --ag
            use "mileszs/ack.vim"

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
            use {"vimwiki/vimwiki", branch = "dev"}
            -- 对齐插件
            use "godlygeek/tabular"
            -- markdown插件
            use "plasticboy/vim-markdown"
            use "mzlogin/vim-markdown-toc"
            use "ferrine/md-img-paste.vim"
            use "dhruvasagar/vim-table-mode"
            --状态栏插件
            use "nvim-lualine/lualine.nvim"
            use "kyazdani42/nvim-web-devicons"
            -- bufferline 显示标签页,与lualine配合使用
            use "akinsho/bufferline.nvim"

            -- Automatically set up your configuration after cloning packer.nvim
            -- Put this at the end after all plugins
            if packer_bootstrap then
                require("packer").sync()
            end
        end,
        config = {
            max_jobs = 16,
            git = {
                default_url_format = "https://hub.fastgit.org/%s"
                -- default_url_format = "https://github.com/%s"
            },
            display = {
                open_fn = function()
                    return require("packer.util").float({border = "single"})
                end
            }
        }
    }
)
