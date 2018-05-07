# Vimrc

My Vimrc with plugins, autocommands, etc for **Vim 8**.

## Plugins

### General

* [gruvbox](https://github.com/morhetz/gruvbox): color scheme.
* [NERDTree](https://github.com/scrooloose/nerdtree): file browsing.
* [Powerline](https://github.com/Lokaltog/powerline): cool status bar.
* [vim-buftabline](https://github.com/ap/vim-buftabline): easy buffer
  navigation in tabs.
* [vim-markdown](https://github.com/plasticboy/vim-markdown): Markdown syntax
  and preview.
* [rename.vim](https://github.com/danro/rename.vim): Rename files (need a
  plugin for this?).

### Language agnostic

* [ale](https://github.com/w0rp/ale): asynchronous linting.
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter): code commenting.
* [vim-surround](https://github.com/tpope/vim-surround): bracket, quote, etc. wrapping.
* [autocomplete](https://github.com/valloric/youcompleteme): code completion.

### Python

* [vim-pydocstring](https://github.com/heavenshell/vim-pydocstring): docstring generator.
* [indentpython](https://github.com/vim-scripts/indentpython.vim): PEP8 indentation.

### HTML, CSS & JavaScript

* [vim-closetag](https://github.com/alvan/vim-closetag): HTML tag autoclose.
* [MatchTagAlways](https://github.com/Valloric/MatchTagAlways): highlight
  enclosing tags.
* [vim-javascript](https://github.com/pangloss/vim-javascript): JavaScript
  syntax (works for inline js!).
* [vim-vue](https://github.com/posva/vim-vue): Vue syntax highlighting.

### Linters and formatting for ALE

For linting and formatting, ALE needs these tools to be installed in the system.
The tools installed (with `dependencies.sh` script) are the following:

#### Python linters and formatters

* [pylint](https://www.pylint.org/)
* [flake8](https://github.com/PyCQA/flake8)
* [autopep8](https://github.com/hhatto/autopep8)

#### PHP linters and formatters

* [phpcs](https://github.com/squizlabs/PHP_CodeSniffer)
* [phpcbf](https://github.com/squizlabs/PHP_CodeSniffer) (part of phpcs).
* [PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer)

#### HTML linters and formatters

* [htmlhint](https://github.com/yaniswang/HTMLHint)

#### JavaScript linters and formatters

* [eslint](https://eslint.org/) (Also set for Vue.js).
* [jshint](http://jshint.com/)
* [prettier](https://github.com/prettier/prettier)

#### CSS linters and formatters

* [csslint](https://github.com/CSSLint/csslint)
* [prettier](https://github.com/prettier/prettier)

#### JSON linters and formatters

* [jsonlint](https://github.com/zaach/jsonlint)
* [fixjson](https://github.com/rhysd/fixjson)
* [prettier](https://github.com/prettier/prettier)

#### Markdown linters and formatters

* [markdownlint](https://github.com/markdownlint/markdownlint/)
* [prettier](https://github.com/prettier/prettier)

### Not used plugins

Here are gathered plugins that are not being used/were used at some time but
replaced, but that are interesting.

* [vim-colors-pencil](https://github.com/reedes/vim-colors-pencil): color scheme.

## Custom mappings, autocommands, abbreviations, etc. cheatsheet

### Mappings

#### Normal mode

**Note**: `<Leader>` is set to space.

##### Buffer navigation

* `<C-N>`/`<C-P>`: next/previous buffer.

##### Splits

* `<C-J>`: navigate to split below.
* `<C-K>`: navigation to split up.
* `<C-L>`: navigate to right split.
* `<C-H>`: navigate to left split.
* `<Up>`: increase current split horizontally.
* `<Down>`: decrease current split horizontally.
* `<Left>`: increase current split vertically.
* `<Right>`: decrease current split vertically.

##### Oders

* `<Leader>sv`: source .vimrc.

##### File management

* `<Leader>w`: write current buffer.
* `<Leader>W`: write all buffers.
* `<Leader>q`: quit window.
* `<Leader>Q`: quit all windows.
* `<Leader>!`: quit all windows without warning about unsaved changes.
* `<Leader>r`: reload buffer.
* `<Leader>d`: go to previous buffer and delete the next one (this one is
  thought for NERDTree, otherwise the only window remaining is the one for the
  tree).

#### Insert mode

* `jk`: return to normal mode.
* `<C-Space>`: insert new line below, useful when we are on `if`, `for`, etc.
  statements, so we don't need to go to the end of the line and insert new one.

### Abbreviations

The following abbreviations are set as autocommands for each file type.

#### Python abbreviations

* `i`: `if :`
* `f`: `for :`
* `w`: `while :`
* `d`: `def ():`

#### PHP abbreviations

* `i`: `if () {<cr>}`
* `f`: `for () {<cr>}`
* `w`: `while () {<cr>}`
* `fu`: `function () {<cr>}`

#### JavaScript abbreviations

* `i`: `if () {<cr>}`
* `f`: `for () {<cr>}`
* `w`: `while () {<cr>}`
* `fu`: `function () {<cr>}`
