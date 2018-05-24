# Vimrc

My Vimrc with plugins, autocommands, etc for **Vim 8**.

## Table of Contents

<!-- toc -->

* [The vimrcs](#the-vimrcs)
  * [Installation](#installation)
    * [Basic](#basic)
    * [Extended](#extended)
  * [Updating](#updating)
    * [Updating extended version](#updating-extended-version)
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

## The vimrcs

There are two versions:

* Basic: mappings, abbreviations, autocommands, etc. No plugin nor dependency is
  needed.
* Extended: built on the basic, with many plugins.

### Installation

#### Basic

The recommended way is to clone the repository and execute `scripts/install_basic.sh`:

```bash
git clone https://github.com/julenpardo/vimrc ~/vimrc # Or wherever you want
~/vimrc/scripts/install_basic.sh
```

This will just create the `~/.vimrc` file as a link pointing to `vimrc_basic`, allowing
its update pulling the repo.

If you don't want to pull it, you can just directly save the file the file as `~/.vimrc`:

```bash
curl -o ~/.vimrc https://raw.githubusercontent.com/julenpardo/vimrc/master/vimrc_basic
```

#### Extended

Apart from cloning the repo, the installation scripts have to be executed:

```bash
git clone https://github.com/julenpardo/vimrc ~/vimrc # Or wherever you want
~/vimrc/scripts/install_dependencies.sh
~/vimrc/scripts/install_extended.sh
~/vimrc/scripts/install_powerline_fonts.sh
~/vimrc/scripts/compile_youcompleteme.sh
```

This will:

* Install Vundle, for managing the plugins.
* Create the `~/.vimrc` file.
* Install the plugins and their dependencies.
* Install the powerline fonts, needed for the Powerline bar.
* Compile YouCompleteMe, needed for the namesake plugin.

### Updating

For both basic and extended, we need to pull:

```bash
cd ~/vimrc # Or wherever it was cloned
git pull
```

This is enough for the basic mode. For the extended mode, keep reading.

#### Updating extended version

For the extended version, the `scripts/install_extended.sh` script has to be run
again. This script just creates the `~/.vimrc` file merging the `vimrc_basic` and
`vimrc_extended` files, and then runs the Vim command to install/update the plugins
with Vundle.

The `scripts/install_dependencies.sh` should be also run, since there may be new
dependencies required by the plugins.

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
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter): Git diff in gutter.

### Language agnostic

* [ale](https://github.com/w0rp/ale): asynchronous linting.
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter): code commenting.
* [vim-surround](https://github.com/tpope/vim-surround): bracket, quote, etc. wrapping.
* [YouCompleteMe](https://github.com/valloric/youcompleteme): code completion.

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

##### Buffers

* `<Leader>w`: write current buffer.
* `<Leader>W`: write all buffers.
* `<Leader>q`: quit window.
* `<Leader>Q`: quit all windows.
* `<Leader>!`: quit all windows without warning about unsaved changes.
* `<Leader>r`: reload buffer.
* `<Leader>d`: go to previous buffer and delete the next one (this one is
  thought for NERDTree, otherwise the only window remaining is the one for the
  tree).

##### Oders

* `<Leader>sv`: source .vimrc.

#### Insert mode

* `jk`: return to normal mode.
* `<C-Space>`: insert new line below, useful when we are on `if`, `for`, etc.
  statements, so we don't need to go to the end of the line and insert new one.

#### Visual mode

* `<Leader>c`: copy selection to desktop clipboard.

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
