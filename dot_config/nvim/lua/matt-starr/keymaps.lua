-- Alias method
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Managed by Neotree now
-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)

keymap("n", "<leader>w", "<C-w>w", opts)

keymap("n", "<leader>tt", ":tabnew ", {silent = false})
keymap("n", "<leader>tn", ":tabnext <CR>", opts)
keymap("n", "<leader>tp", ":tabnext -<CR>", opts)

keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>c", ":ccl<CR>", opts)
keymap("n", "<leader>h", ":set hls!<CR>", opts)

-- Selected lines can repeatedly be moved down/up with J/K
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Highlighted lines can repeatedly be indented
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Centre cursor when navigating
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Yank into clipboard
keymap({"n", "v"}, "<leader>y", [["+y]], opts)
keymap("n", "<leader>Y", [["+Y]], opts)
-- Delete into _ register (rather than default)
keymap({"n", "v"}, "<leader>d", [["_d]])
-- Selected text goes to _ register when pasting
keymap("x", "<leader>p", "p", opts) -- <leader>p gives old p behaviour
keymap("x", "p", [["_dP]], opts)

keymap("n", "Q", "<nop>") -- I never use this

keymap("c", "w!!", "SudaWrite", opts)

-- (Attempt at) Delete inside/a /* */ multi-line comment
-- Limitations: if /* found but forwards */ not found cursor position changes
--   and error displayed
-- TODO: convert to function that handles limitations
keymap("n", "dic", "?\\/\\*?e+<CR>d/\\*\\//e<CR>A  */<Esc>hh", opts) -- FIXME: */ is copied
keymap("n", "dac", "?\\/\\*<CR>d/\\*\\//e<CR>", opts)
