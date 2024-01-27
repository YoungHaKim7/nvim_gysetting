# 내 LunarVim Setting

- https://github.com/YoungHaKim7/lvim_Rust_AI_Setting

<hr>
:
# lsp-inlayhints Color Setting(LspInlayHint로 해야 Comment까지 안됨)

```
:hi LspInlayHint guifg=#35638f guibg=#420517
```

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

# 세팅하다가 작살나면 캐쉬삭제 해주기

```
// 백업
mkdir ~/backup_nvim
cp -r ~/.config/nvim ~/backup_nvim
cp -r ~/.local/share/nvim ~/backup_nvim
cp -r ~/.cache/nvim ~/backup_nvim

// 캐쉬삭제
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

- https://docs.rockylinux.org/ko/books/nvchad/install_nvchad/

# install and use packer in neovim

- https://linovox.com/install-and-use-packer-in-neovim/

# mason 

- https://github.com/williamboman/mason.nvim

# Rust LSP setting
https://sharksforarms.dev/posts/neovim-rust/

# 에러해결 error 

- smp-vsnip(snippet해결)
  - https://github.com/hrsh7th/nvim-cmp/issues/24

# Inlay Hint 바로 옆에 뜨게 하기
- 단서1 https://stackoverflow.com/questions/77193939/enable-inlayhints-in-neovim-with-lsp-zero
- 단서2 https://www.reddit.com/r/neovim/comments/14e41rb/today_on_nightly_native_lsp_inlay_hint_support/
- 단서3 https://github.com/lvimuser/lsp-inlayhints.nvim
