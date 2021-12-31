## tpope/surround

添加、修改和删除包裹符号(括号和标签)

1. cs: change surround
2. ds: delete surround
3. ys: add surround

- Press `cs"'` inside `"Hello world!"` to change it to `'Hello world!'`
- press `cs'<q>` to change it to `<q>Hello world!</q>`
- To remove the delimiters entirely, press `ds"` to change it to `Hello world!`
- Now with the cursor on `Hello`, press `ysiw]` (`iw` is a text object) to change it to `[Hello] world!`
- Let's make that braces and add some space. (use `}` instead of `{` for no space): `cs]{` change to `{ Hello } world!`
  - `{`: 包含空格
  - `}`: 不包含空格
- Now wrap the entire line in parentheses with `yssb` or `yss)` change to `({ Hello } world!)`
  - `yss)`: add surround setence(text object) `)`
- Revert to the original text: `ds{ds)` change to `Hello world!`
- Emphasize hello: `ysiw<em>` change to `<em>Hello</em> world!`
- Finally, let's try out visual mode. Press a capital `V` (for linewise visual mode) followed by `S<p class="important">`.

  ```html
  <p class="important"><em>Hello</em> world!</p>
  ```

## tpope/unimpaired

- `]a` is `:next`.
- `]b`和`[b` 循环遍历缓冲区。
- `]f`和`[f`: 循环遍历同一目录中的文件，并打开为当前缓冲区。
- `]l`和`[l`: 遍历位置列表
- `]q`和`[q`: 遍历快速修复列表
- `]t`和`[t`: 遍历标签列表
- `[<Space>` 和 `]<Space>`: 在光标的上和下添加新行, 保持 normal 模式
- `[e` and `]e`: 上下行交换
- `[x` and `]x`: encode and decode XML (and HTML).
- `[u` and `]u`: encode and decode URLs.
- `[y` and `]y`: do C String style escaping.

## junegunn/vim-easy-align

- vipga=
  - visual-select inner paragraph
  - Start EasyAlign command (ga)
  - Align around =
- gaip=
  - Start EasyAlign command (ga) for inner paragraph
  - Align around =

An alignment rule is a predefined set of options for common alignment tasks, which is identified by a single character, such as <Space>, =, :, ., |, &, #, and ,.

- =

  - = Around the 1st occurrences
  - 2= Around the 2nd occurrences
  - \*= Around all occurrences
  - \*\*= Left/Right alternating alignment around all occurrences
  - `<Enter>` Switching between left/right/center alignment modes

- Using regular expression

  - pressing <Ctrl-X> in interactive mode
  - or using :EasyAlign /REGEX/ command in visual mode or in normal mode with a range (e.g. :%)

- 可视模式下使用`=`效果可以试一试

## BufferLine

```lua

--按键映射
--nnoremap <silent> gb :BufferLinePick<CR>
vim.api.nvim_set_keymap("n", "gb", "<Cmd>BufferLinePick<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", {noremap = true, silent = true})
```

## coc

- 安装 lsp

  1. :CocInstall json
  2. :CocInstall coc-markdownlint

- 查看安装

  1. :CocList extenstions press `<Tab>` for ops.
  2. \*,启用，+，未启用

- 查找插件

  1. CocList marketplace

## 神级文件模糊搜索插件 telescope

- <leader>ff : find_files
- <leader>fg : live_grep
- <leader>fb : buffer
- <leader>fh : help_tag
- <leader>sf : file_browser
- <leader>/ : current_buffer_fuzzy_find




 

















