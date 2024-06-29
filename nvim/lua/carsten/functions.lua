-- AddLineNr: Fügt Zeilennummer (1. ...) für jede Zeile hinzu
-- Mob      : Für das Parsen von Mafia Mob-Codes
vim.cmd [[
    function AddLineNr_()
        %s/^/\=line(".").". "
    endfunction
    command! AddLineNr call AddLineNr_()

    function Mob_()
        %s/[^0-9.]//g
        g/^$/d
        v/\d\d\d.\d\d\d.\d\d\d/g/.*/d
        norm!GoFERTIG ENTER ZUM KOPIERENgg
        nnoremap <cr> "+dd 
    endfunction
    command! Mob call Mob_()
]]
