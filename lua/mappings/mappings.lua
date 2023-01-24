local opts = { noremap = true, silent = true }
local bufopts = { noremap = true, silent = true, buffer = bufnr }
local keymap = vim.api.nvim_set_keymap

local term_opts = { silent = true }

vim.g.mapleader = " "

-- Normal --
-- Buffer navigation
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

--Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Visual Block --
-- Move text up and down --
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Visual --
-- Stay in indent mode --
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Terminal --
-- Better terminal navigation --
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- LEX EXPLORE --
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- NVIM TREE --
keymap("n", "<leader>nt", ":NvimTreeToggle<cr>", opts)

-- Format --
keymap("n", "<leader>f", ":Format<cr>", bufopts)

-- TELESCOPE --
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>td", "<cmd>Telescope diagnostics<cr>", bufopts)
keymap("n", "<leader>tk", "<cmd>Telescope keymaps<cr>", opts)
keymap("n", "<leader>tp", "<cmd>Telescope projects<cr>", opts)
keymap("n", "<leader>tb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>tg", "<cmd>Telescope live_grep<cr>", opts)

-- UNDOTREE --

keymap("n", "<leader>ut", "<cmd>UndotreeToggle<cr>", opts)

-- LAZAY GIT --
keymap("n", "<leader>lg", "<cmd>LazyGit<cr>", opts)


-- Buffer Delete --
keymap("n", "<leader>bd", ":Bdelete<cr>", opts)

-- MINIMAP --
keymap("n", "<leader>mm", "<cmd>MinimapToggle<cr>", opts)
keymap("n", "<leader>mr", "<cmd>MinimapRescan<cr>", opts)
