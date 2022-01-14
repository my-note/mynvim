" 因为逗号被设置成了leader键，需要一个逗号键（逗号键是反向查找字符f{char}的上一处匹配）
noremap \ ,   

" 插入模式移动光标
" 插入模式下<C-h>原本是删除前一个字符
" inoremap <C-h> <Left> 
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <Delete>

" 代码格式化
nnoremap <silent> <leader>f :Format<CR>
" 悬浮term
nmap <silent> <leader>t :FloatermToggle<CR>
nmap [u a <ESC>
nmap ]u i <ESC>







