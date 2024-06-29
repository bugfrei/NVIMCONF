local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end
local function noremap(m, k, v)
    vim.keymap.set(m, k, v, { nowait = true, noremap = true, silent = true })
end
-- Easy Motions
---- Finde 1 Zeichen
map('', '<Leader>f', '<Plug>(easymotion-bd-f)')
map('n', '<Leader>f', '<Plug>(easymotion-overwin-f)')

---- Bewege zum Wort
noremap('', 'w', '<Plug>(easymotion-bd-w)')
noremap('n', 'w', '<Plug>(easymotion-overwin-w)')
noremap('', 'W', 'w')
noremap('n', 'W', 'w')

---- Suche nach 2 Zeichen
map('n', '<Leader>s', '<Plug>(easymotion-s2)')
map('n', '<Leader>t', '<Plug>(easymotion-t2)')

---- /-Suche (Texteingabe, Ziel wählen) mit ' /' oder '!'
map('', '<Leader>/', '<Plug>(easymotion-sn)')
map('', '!', '<Plug>(easymotion-sn)')
map('o', '<Leader>/', '<Plug>(easymotion-tn)')
map('o', '!', '<Plug>(easymotion-tn)')

---- Nächter/Vorherer /-Suche Treffer (die Easy-Motion / Suche)
map('', '<Leader>n', '<Plug>(easymotion-next)')
map('', '<Leader>N', '<Plug>(easymotion-prev)')


---- hjkl Suche
map('', '<Leader>l', '<Plug>(easymotion-lineforward)')
map('', '<Leader>j', '<Plug>(easymotion-j)')
map('', '<Leader>k', '<Plug>(easymotion-k)')
map('', '<Leader>h', '<Plug>(easymotion-linebackward)')

vim.api.nvim_set_var("EasyMotion_use_upper", 0)
vim.api.nvim_set_var("EasyMotion_smartcase", 1)
vim.api.nvim_set_var("EasyMotion_use_smartsig0_us", 1)
