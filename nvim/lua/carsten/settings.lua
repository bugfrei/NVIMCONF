local g = vim.g
local o = vim.o

-- DARSTELLUNG
o.number = true                     -- Zeilennummer
o.relativenumber = true             -- Relative Zeilennummern
o.scrolloff = 5                     -- Scroll Offset 5 Zeilen oben/unten
o.wrap = false                      -- Kein Zeilenumbruch
o.backspace = 'indent,eol,start'    -- Cursorbewegung in vorheriger/nachfolgender...
o.whichwrap = '<,>,h,l,[,]'         -- Zeile fortfahren
o.cursorline = true                 -- Linie in der aktuellen Zeile (siehe autocmd)
    -- autocmd: Keine Cursorline im Insert-Modus
    vim.api.nvim_create_autocmd( {"InsertEnter", "InsertLeave" },
    {                            -- Für die Events: insertEnter und InsertLeave
        pattern = { "*" },       -- Für alle Dateien
        command = "set cul!"     -- VIM Command  (callback = "..." ist eine Lua function)
    })
o.ruler = true                      -- Zeilennummer/Spaltennummer in Statuszeile
o.hlsearch = true                   -- Suchtreffer hervorheben
o.termguicolors = true      -- Eigene Farben verwenden (Hintergrund...)
o.numberwidth = 5           -- Ziffernanzahl für die Zeilennummern
o.signcolumn = 'no'         -- Symbol-Spalte (aktivieren mit `yes:2`)
o.splitright = true         -- Neue vertikale Split-Fenster werden standardmäßig rechts geöffnet
o.splitbelow = true         -- Neue horizontale Split-Fenster werden standardmäßig unterhalb geöffnet

o.list = true                       -- Sonderzeichen listchars anzeigen
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'  -- Zeichen für Sonderzeichen


-- EINGABE, KORREKTUR
o.dictionary = '/Users/carstenschlegel/.vim/dict/test'      -- Wörterbuch 
o.complete = o.complete .. ',k'                             -- ??
o.spelllang = 'de'                                          -- Sprache deutsch
o.tabstop = 4                                               -- Tabstops = 4 Zeichen
o.shiftwidth = 4                                            -- Einrücken = 4 Zeichen
o.expandtab = true                                          -- Tabs werden Spaces
o.autoindent = true                                         -- Automatisch einrücken
local colorscheme = "carsten"                               -- Colorschema festlegen
    -- diese befinden sich in /Users/carstenschlegel/.config/nvim/colors/carsten.vim
    local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
    vim.o.background = "dark" -- or "light" for light mode
    if not ok then
        vim.notify("colorscheme " .. colorscheme .. " not found!")
        return
    end
--o.cindent = true            -- Automatisches Einfügen anhand des Contexts
o.textwidth = 0             -- Kein Automatischen Zeilenumbruch (CR)
--o.clipboard = 'unnamedplus' -- Direkt System-Zwischenablage verwenden
 

-- NAVIGATION
o.tags = '/Users/carstenschlegel/.vimtags,./tags'           -- Tags Dateien

-- INTERNES/PFADE
o.runtimepath = o.runtimepath .. ',/Users/carstenschlegel/.vim'
o.shell = 'pwsh -noprofile'                                 -- Terminal (PowerShell ohne Profile/SUP Script)
o.viminfo = "%,'50,\"100,:100,n~\\.nviminfo"                -- Speichern von VIM Daten (Undo ...)
g.mapleader = ' '
g.maplocalleader = ' '
o.timeoutlen = 1000         -- Zeit für Timeout (Leader-Key...)


if vim.neovide then
    vim.cmd("NeovideFocus")
end

-- Set background to transparent
vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
  highlight LineNr guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
]]

