" 基础配置
runtime ./vimrc.vim
" 按键映射
runtime ./maps.vim
" 插件管理 ./lua/plugins.lua
lua require('plugins')
" 彩虹括号
source ~/.config/nvim/after/plugin/rainbow.rc.vim
" vimwiki
source ~/.config/nvim/after/plugin/vimwiki.rc.vim
" 主题
source ~/.config/nvim/colors/gruvbox_material.rc.vim

