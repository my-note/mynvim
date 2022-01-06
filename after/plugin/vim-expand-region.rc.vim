" Press + to expand the visual selection and _ to shrink it.
map = <Plug>(expand_region_expand)
map - <Plug>(expand_region_shrink)

" Default settings. (NOTE: Remove comments in dictionary before sourcing)
let g:expand_region_text_objects = {
      \ 'iw'  :0,
      \ 'iW'  :0,
      \ 'is'  :1,
      \ 'i"'  :1,
      \ 'i`'  :1,
      \ 'i''' :1,
      \ 'i)'  :1,
      \ 'i]'  :1,
      \ 'i}'  :1,
      \ 'i>'  :1,
      \ 'ib'  :1,
      \ 'iB'  :1,
      \ 'il'  :0,
      \ 'ip'  :0,
      \ 'it'  :1,
      \ 'ie'  :0,
      \ }






" Extend the global default (NOTE: Remove comments in dictionary before sourcing)
call expand_region#custom_text_objects({
      \ "\/\\n\\n\<CR>": 1,
      \ 'a]' :1,
      \ 'ab' :1,
      \ 'aB' :1,
      \ 'ii' :0,
      \ 'ai' :0,
      \ })



