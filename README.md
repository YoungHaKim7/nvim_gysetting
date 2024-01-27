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

# Key Setting

```
-- Normal Mode
key_map("n", "<leader>W", ":wqall<CR>", opts)
key_map("n", "<leader>e", ":Neotree<CR>", opts)
key_map("n", "<leader>t", ":TroubleToggle<CR>", opts)
key_map("n", "<leader>o", ":SymbolsOutline<CR>", opts)

-- buffer new
key_map("n", "<leader>bt", ":tabe<CR>", opts)
key_map("n", "<leader>btt", ":terminal<CR>", opts)
-- buffer kill
key_map("n", "<leader>bd", ":bd<CR>", opts)
-- buffer next,previous tabe
key_map("n", "L", "gt", opts)
key_map("n", "H", "gT", opts)

-- Insert Mode
key_map("i","jk", "<Esc>", opts)
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

