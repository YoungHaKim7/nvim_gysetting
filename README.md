# nvim_gysetting


```
Visual Mode에서는
gc

다시 gc누르면 커멘트 해지

Nomal Mode에서는(한줄만 주석처리)
gcc

toggler = {
                ---Line-comment toggle keymap
                line = 'gcc',
```

# Nvim - Surround

- https://github.com/kylechui/nvim-surround 

```
    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls

```
<hr>

# install and use packer in neovim

- https://linovox.com/install-and-use-packer-in-neovim/

# mason 

- https://github.com/williamboman/mason.nvim

# Rust LSP setting
https://sharksforarms.dev/posts/neovim-rust/

