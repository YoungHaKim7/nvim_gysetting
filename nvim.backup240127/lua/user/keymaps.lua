local key_map = vim.api.nvim_set_keymap


local opts = {noremap = true, silent = true}

vim.g.mapleader = ' '

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
