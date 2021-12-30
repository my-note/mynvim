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
	<p class="important">
	  <em>Hello</em> world!
	</p>
	```




## tpope/unimpaired

- `]a` is `:next`.
- `]b`和`[b` 循环遍历缓冲区。
- `]f`和`[f`: 循环遍历同一目录中的文件，并打开为当前缓冲区。
- `]l`和`[l`: 遍历位置列表
- `]q`和`[q`: 遍历快速修复列表
- `]t`和`[t`: 遍历标签列表
- `[<Space>` 和 `]<Space>`: 在光标的上和下添加新行, 保持normal模式
- `[e` and `]e`: 上下行交换
- `[x` and `]x`: encode and decode XML (and HTML). 
- `[u` and `]u`: encode and decode URLs. 
- `[y` and `]y`: do C String style escaping.














