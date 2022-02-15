local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- General --

keymap("n", "<leader>k", ":nohlsearch<CR>", opts)

-- LSP
keymap("n", "<leader>F", ":lua vim.lsp.buf.formatting()<CR>", opts)
keymap("n", "<silent>gr", ":lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "<silent>gd", ":lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "<silent>gR", ":lua vim.lsp.buf.rename()<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", opts)
keymap("n", "<leader>fgit", "<cmd>Telescope git_files<CR>", opts)

-- Nvimtree
keymap("n", "<leader>n", ":NvimTreeToggle<cr>", opts)

-- " tpope/vim-fugitive
keymap("n", "<leader>gg", "<cmd>G<cr>", opts)
keymap("n", "<leader>gdiff", "<cmd>G diff<cr>", opts)

-- "--- szw/vim-maximizer
-- nnoremap <silent> <C-w>m :MaximizerToggle!<CR>
keymap("n", "<silent><C-w>m", ":MaximizerToggle!<CR>", opts)

