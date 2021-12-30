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






