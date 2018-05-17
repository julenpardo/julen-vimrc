# Vimrc

My Vimrc with plugins, autocommands, etc for **Vim 8**.

## Table of Contents

<!-- toc -->

* [Plugins](#plugins)
  * [General](#general)
  * [Language agnostic](#language-agnostic)
  * [Python](#python)
  * [HTML, CSS & JavaScript](#html-css--javascript)
  * [Linters and formatting for ALE](#linters-and-formatting-for-ale)
  * [Not used plugins](#not-used-plugins)
* [Custom mappings, autocommands, abbreviations, etc](#custom-mappings-autocommands-abbreviations-etc)
  * [Mappings](#mappings)
    * [Normal mode](#normal-mode)
      * [Buffer navigation](#buffer-navigation)
      * [Splits](#splits)
      * [Oders](#oders)
      * [File management](#file-management)
    * [Insert mode](#insert-mode)
  * [Abbreviations](#abbreviations)
    * [Python abbreviations](#python-abbreviations)
    * [PHP abbreviations](#php-abbreviations)
    * [JavaScript abbreviations](#javascript-abbreviations)

<!-- tocstop -->

<sub>Generated with [markdown-toc](https://github.com/jonschlinkert/markdown-toc)</sub>

## Plugins

### General

* [gruvbox](https://github.com/morhetz/gruvbox): color scheme.
* [fzf.vim](https://github.com/junegunn/fzf.vim): wrapper for fzf.
* [NERDTree](https://github.com/scrooloose/nerdtree): file browsing.
* [Powerline](https://github.com/Lokaltog/powerline): cool status bar.
* [vim-buftabline](https://github.com/ap/vim-buftabline): easy buffer
  navigation in tabs.
* [vim-markdown](https://github.com/plasticboy/vim-markdown): Markdown syntax
  and preview.
* [rename.vim](https://github.com/danro/rename.vim): Rename files (need a
  plugin for this?).
* [vim-ripgrep](https://github.com/jremmen/vim-ripgrep): ripgrep for Vim.

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

| Language   | Linters and formatters                                                                                                                                                                                                         |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Python     | <ul><li>[pylint](https://www.pylint.org/)</li> <li>[flake8](https://github.com/PyCQA/flake8)</li> <li>[autopep8](https://github.com/hhatto/autopep8)</li></ul>                                                                 |
| PHP        | <ul><li>[phpcs](https://github.com/squizlabs/PHP_CodeSniffer)</li> <li>[phpcbf](https://github.com/squizlabs/PHP_CodeSniffer) (part of phpcs).</li> <li>[PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer)</li></ul> |
| HTML       | <ul><li>[htmlhint](https://github.com/yaniswang/HTMLHint)</li></ul>                                                                                                                                                            |
| JavaScript | <ul><li>[eslint](https://eslint.org/) (Also set for Vue.js).</li> <li>[jshint](http://jshint.com/)</li> <li>[prettier](https://github.com/prettier/prettier)</li></ul>                                                         |
| CSS        | <ul><li>[csslint](https://github.com/CSSLint/csslint)</li> <li>[prettier](https://github.com/prettier/prettier)</li></ul>                                                                                                      |
| JSON       | <ul><li>[jsonlint](https://github.com/zaach/jsonlint)</li> <li>[fixjson](https://github.com/rhysd/fixjson)</li> <li>[prettier](https://github.com/prettier/prettier)</li></ul>                                                 |
| Markdown   | <ul><li>[markdownlint](https://github.com/markdownlint/markdownlint/)</li> <li>[prettier](https://github.com/prettier/prettier)</li></ul>                                                                                      |

### Not used plugins

Here are gathered plugins that are not being used/were used at some time but
replaced, but that are interesting.

* [vim-colors-pencil](https://github.com/reedes/vim-colors-pencil): color scheme.

## Custom mappings, autocommands, abbreviations, etc

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
