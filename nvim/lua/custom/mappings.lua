
-- Fast up/down with Shift + arrow
vim.cmd("noremap <S-Down> 5j")
vim.cmd("noremap <S-Up> 5k")
vim.cmd("inoremap <S-Down> <C-o>5j")
vim.cmd("inoremap <S-Up> <C-o>5k")

-- Copy paste stuff
vim.cmd("xnoremap p pgvy") -- Paste over visual selection
vim.cmd("inoremap <C-v> <C-r>+") -- Paste from system clipboard insert mode
vim.cmd("vnoremap <C-c> \"+y") -- Copy to system clipboard
--vim.cmd("inoremap <C-p> <C-r>") -- Paste from system clipboard 

-- Undo
vim.cmd("noremap <C-z> u")

-- Window splitting
vim.cmd("ca hs sp")
vim.cmd("ca sh sp")
vim.cmd("ca sv vs")

-- Move between windows
vim.cmd("noremap <silent> <C-Left> :<C-U>TmuxNavigateLeft<cr>")
vim.cmd("noremap <silent> <C-Down> :<C-U>TmuxNavigateDown<cr>")
vim.cmd("noremap <silent> <C-Up> :<C-U>TmuxNavigateUp<cr>")
vim.cmd("noremap <silent> <C-Right> :<C-U>TmuxNavigateRight<cr>")

-- ZZ to go to file explorer
vim.cmd("noremap ZZ :w<CR>:Ex<CR>")

-- Go to previous/next cursor position
vim.cmd("nnoremap <S-A-Left> <C-o>")
vim.cmd("nnoremap <S-A-Right> <C-i>")

-- Reverse next position and previous position
vim.cmd("noremap , ;")
vim.cmd("noremap ; ,")
vim.keymap.set("n", ",", "<Plug>Sneak_;")
vim.keymap.set("n", ";", "<Plug>Sneak_,")

-- Enter in normal mode
vim.cmd("nnoremap <CR> o<Esc>")

---- Move lines up and down
vim.keymap.del("i", "<A-Down>")
--
--Arrows 
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==")
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==")

vim.keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>==gi")
vim.keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi")

vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv")

-- {} movement
vim.keymap.set("n", "g{", "[{")
vim.keymap.set("n", "g}", "]}")
vim.keymap.set("n", "gm", "[m")
vim.keymap.set("n", "gM", "[M")
vim.keymap.set('n', 'gE', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', 'ge', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })


