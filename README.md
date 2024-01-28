# My LunarVim Setting

- https://github.com/YoungHaKim7/lvim_Rust_AI_Setting

<hr>


# lsp-inlayhints Color Setting(LspInlayHint로 해야 Comment까지 안됨)

```
:hi LspInlayHint guifg=#35638f guibg=#420517


// 요즘 쓰는 색 240106
:hi LspInlayHint guifg=#35638f guibg=#420517
:hi Comment guifg=#35638f guibg=#420517
```

# nvim_gysetting[[🔝]](#my-lunarvim-setting)

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

# Key Setting[[🔝]](#my-lunarvim-setting)

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

# LSP key map[[🔝]](#my-lunarvim-setting)

```
  vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
  vim.keymap.set("n", "gD", vim.lsp.buf.implementation, keymap_opts)
  vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, keymap_opts)
  vim.keymap.set("n", "1gD", vim.lsp.buf.type_definition, keymap_opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, keymap_opts)
  vim.keymap.set("n", "g0", vim.lsp.buf.document_symbol, keymap_opts)
  vim.keymap.set("n", "gW", vim.lsp.buf.workspace_symbol, keymap_opts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opts)
  vim.keymap.set("n", "ga", vim.lsp.buf.code_action, keymap_opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, keymap_opts)
```


# LSP key세팅[[🔝]](#my-lunarvim-setting)

```
local lsp = require("lsp-zero")

lsp.preset("recommended")

-- make sure rust is isntalled,
lsp.ensure_installed({
  'rust_analyzer',
})


-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

-- mappings:
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = ' ',
        warn = ' ',
        hint = '󱧡 ',
        info = ' '
    }
})



lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})


```

# Nvim - Surround[[🔝]](#my-lunarvim-setting)

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

# 세팅하다가 작살나면 캐쉬삭제 해주기[[🔝]](#my-lunarvim-setting)

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

# install and use packer in neovim[[🔝]](#my-lunarvim-setting)

- https://linovox.com/install-and-use-packer-in-neovim/

# mason [[🔝]](#my-lunarvim-setting)

- https://github.com/williamboman/mason.nvim

# Rust LSP setting[[🔝]](#my-lunarvim-setting)
https://sharksforarms.dev/posts/neovim-rust/

# NerdFont Ininstall[[🔝]](#my-lunarvim-setting)

- https://www.nerdfonts.com/

# 에러해결 error [[🔝]](#my-lunarvim-setting)

- smp-vsnip(snippet해결)
  - https://github.com/hrsh7th/nvim-cmp/issues/24

# Inlay Hint 바로 옆에 뜨게 하기[[🔝]](#my-lunarvim-setting)
- 단서1 https://stackoverflow.com/questions/77193939/enable-inlayhints-in-neovim-with-lsp-zero
- 단서2 https://www.reddit.com/r/neovim/comments/14e41rb/today_on_nightly_native_lsp_inlay_hint_support/
- 단서3 https://github.com/lvimuser/lsp-inlayhints.nvim

# NeoVim Tutorial
- https://github.com/mjlbach/starter.nvim
