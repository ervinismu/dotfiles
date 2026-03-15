require("config.lazy")

-- basic
vim.opt.number = true -- enable line numbering, usefull for showing current line number
vim.opt.relativenumber = true -- enable relative numbering, usefull for jump between line number
vim.opt.cursorline = true -- highlight cursor line horizontally
vim.opt.cursorcolumn = true -- highlight cursor line vertically
vim.g.loaded_netrw = 1 -- disabled netrw because use nvim-tree
vim.g.loaded_netrwPlugin = 1 -- disabled netrw because use nvim-tree

-- =================
-- >> VISUAL MODE <<
-- =================

-- disable arrow button - you can comment this(L10 - L13) if you want to use arrow keyboard
vim.keymap.set('v', '<Left>', ':echo "No Left, you can do it!"<CR>', { noremap = true })
vim.keymap.set('v', '<Right>', ':echo "No Left, you can do it!"<CR>', { noremap = true })
vim.keymap.set('v', '<Up>', ':echo "No Left, you can do it!"<CR>', { noremap = true })
vim.keymap.set('v', '<Down>', ':echo "No Left, you can do it!"<CR>', { noremap = true })


-- =================
-- >> NORMAL MODE <<
-- =================

-- disable arrow button - you can comment this(L10 - L13) if you want to use arrow keyboard
vim.keymap.set('n', '<Left>', ':echo "No Left, you can do it!"<CR>', { noremap = true })
vim.keymap.set('n', '<Right>', ':echo "No Left, you can do it!"<CR>', { noremap = true })
vim.keymap.set('n', '<Up>', ':echo "No Left, you can do it!"<CR>', { noremap = true })
vim.keymap.set('n', '<Down>', ':echo "No Left, you can do it!"<CR>', { noremap = true })

-- open screenkey using leader + s + k
vim.keymap.set("n", "<leader>sk", function() require("screenkey").toggle() end, { desc = "Toggle Screenkey" })

-- tabnew using leader + t + n
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "Open New Tab" })

-- tabedit using leader + t + e
vim.keymap.set("n", "<leader>te", ":tabedit ", { desc = "Tab Edit" })

-- tabclose using leader + t + c
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close Current Tab" })
