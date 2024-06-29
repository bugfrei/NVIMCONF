local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- Alternativen zu Undo (zu) und Redo (zU und ZU) / Insert Modus: Ctrl+Z und Ctrl+Y
map('n', 'zu', 'u')
map('n', 'zU', '<C-r>')
map('n', 'zr', '<C-r>')
map('n', 'ZU', '<C-r>')
map('i', '<C-z>', '<esc>ui')
map('i', '<C-y>', '<esc>mz<C-r>`zi')

-- Copy/Paste
map('i', '<D-v>', '<C-r>+')
map('n', '<D-v>', '"+P')
map('v', '<D-v>', '"+p')
map('v', '<D-c>', '"+y')
map('v', '<D-x>', '"+d')


-- Anfang und Ende von HTML/XML Tags
map('n', 'g<', 'vito<esc>')
map('n', 'g>', 'vit<esc>')

-- Zu Markierungen _0001 am Zeilenende springen
-- Oben im Dokument steht z.B. : Dies und Das > _0001
-- Und irgendwo dann: _0001
-- gm springt dann in der Zeile oben nach _0001 und die Zeile darunter
map('n', 'gm', '$*j^')

-- Return im Normal-Modus fügt eine Zeile ein
map('n', '<CR>', 'o')

-- Verschieben von Zeilen hoch/runter im VISUAL Modus (auch in VSC Möglich)
map('v', '<S-J>', ":m '>+1<CR>gv=gv")
map('v', '<S-K>', ":m '<-2<CR>gv=gv")

-- Einfügen Oberhalb und in der Zeile bleiben
map('n', '<leader>p', 'mzP`z')
-- Wiederholung mit . aber in aktueller Zeile bleiben
map('n', '<leader>.', 'mz.`z')
-- Einfügen ohne Registerinhalt zu verlieren
map('v', '<leader>P', '"_dP')

-- Sonderzeichen einfügen
map('n', 'üüf', 'i<C-V>U1f449<Esc>') -- 👉 (üüf FINGER)
map('n', 'üüb', 'i<C-V>U26a1<Esc>')  -- ⚡ (üüb BLITZ)

-- Runter / Hoch blättern
map('n', 'ä', '<C-D>')
map('v', 'ä', '<C-D>')
map('n', 'ö', '<C-U>')
map('v', 'ö', '<C-U>')

-- Shift Space = Am Ende der Zeile ein Space einfügen (INSERT MODE)
map('n', '<S-Space>', 'A<Space>')

-- ciq,viq,yiq,diq ermöglichen
map('n', 'ciq', 'ci"')
--noremap('n', 'viq', 'vi"') : Macht "v" langsam (Wartet auf folgebefehle und geht nicht in VISUAL)
map('n', 'yiq', 'yi"')
map('n', 'diq', 'di"')

-- Mit "..." umschließen
map('v', '<Leader>2', 'c""<Esc>P')      -- 2 weil dort " ist
map('v', '<Leader>"', 'c""<Esc>P')      -- "
map('v', '<Leader>s', 'c""<Esc>P')      -- s wie String

-- Mit '...' umschließen
map('v', '<Leader>1', "c''<Esc>P")      -- 1 weil Einfaches Anführungszeichen
map('v', "<Leader>'", "c''<Esc>P")      -- '
map('v', '<Leader>S', "c''<Esc>P")      -- S wie String

-- Mit `...` umschließen
map('v', '<Leader>ß', 'c``<Esc>P')      -- ß weil neben `
map('v', '<Leader>`', 'c``<Esc>P')      -- `
map('v', '<Leader>t', 'c``<Esc>P')      -- t wie Templatestring

-- Mit (...) umschließen
map('v', '<Leader>8', 'c(  )<Esc>hP')      -- 8 weil dort ( ist
map('v', '<Leader>(', 'c(  )<Esc>hP')      -- (
map('v', '<Leader>k', 'c(  )<Esc>hP')      -- k wie Klammer

-- Mit { ... } umschließen
map('v', '<Leader>9', 'c{  }<Esc>hP')      -- 9 weil dort } ist
map('v', '<Leader>{', 'c{  }<Esc>hP')      -- {
map('v', '<Leader>o', 'c{  }<Esc>hP')      -- o wie Object

-- Mit [ ... ] umschließen
map('v', '<Leader>5', 'c[  ]<Esc>hP')      -- 5 weil dort [ ist
map('v', '<Leader>[', 'c[  ]<Esc>hP')      -- [
map('v', '<Leader>a', 'c[  ]<Esc>hP')      -- a wie Array

-- Mit /* ... */ umschließen
map('v', '<Leader>7', 'c/*  */<Esc>hhP')      -- 7 weil da das / ist
map('v', '<Leader>/', 'c/*  */<Esc>hhP')      -- /
map('v', '<Leader>K', 'c/*  */<Esc>hhP')      -- K wie Kommentar (groß)

-- Mit < ... > umschließen
map('v', '<Leader><', 'c<><Esc>P')      -- <
map('v', '<Leader>x', 'c<><Esc>P')      -- x wie XML
map('v', '<Leader>h', 'c<><Esc>P')      -- h wie HTML

-- Mit Block umschließen { ..<cr>.. }
map('v', '<Leader>b', '>gvc<Esc>A{<Enter>}<Esc>P')

-- Cursortasten unbrauchbar machen
map('n', '<Up>', '<Nop>')
map('n', '<Down>', '<Nop>')
map('n', '<Left>', '<Nop>')
map('n', '<Right>', '<Nop>')

-- Shift H/Shift L für Tabwechsel (High und Low Cursorposition dann unwirksam)
-- In VSC ist es das gleiche Binding daher hat dies Pri. zum High/Low
map('n', '<S-h>', 'gT')
map('n', '<S-l>', 'gt')

map('n', '<C-f>', ':NERDTreeToggle<CR>')

map('n', 'N', '<Plug>VimwikiDiaryNextDay')
map('n', 'B', '<Plug>VimwikiDiaryPrevDay')

