function hi(group, opts)
    local c = "hi " .. group
    
    for k, v in pairs(opts) do
        c = c .. " " .. k .. "=" .. v
    end

    vim.cmd(c)
end

vim.cmd("hi clear SignColumn")

hi("ColorColumn", { ctermbg=234 })
hi("LineNr", { ctermbg=234, ctermfg=14 })
hi("CorsorLineNr", { ctermbg=23, ctermfg=7 })
hi("CursorLine", { ctermbg=236 })
hi("IncSearch", { ctermbg=3, ctermfg=1 })
hi("Search", { ctermbg=1, ctermfg=3 })
hi("Visual", { ctermbg=1, ctermfg=16 })
hi("Pmenu", { ctermbg=240, ctermfg=12 })
hi("PmenuSel", { ctermbg=3, ctermfg=1 })
hi("SpellBad", { ctermbg=0, ctermfg=1 })
hi("SpellCap", { ctermbg=0, ctermfg=15 })
hi("VertSplit", { ctermbg=6, ctermfg=0 })
hi("MatchParen", { ctermbg=241, })
hi("SpellLocal", { ctermbg=55, })
hi("Search", { ctermfg=15, ctermbg=52 })

hi("DiffAdd", { ctermbg=4, ctermfg=15 })
hi("DiffDelete", { ctermbg=5, ctermfg=14 })
hi("DiffChange", { ctermbg=238 })

hi("Folded", { ctermfg=1, ctermbg=0 })
hi("FoldColumn", { ctermfg=1, ctermbg=0 })

hi("TabLineFill", { ctermbg=234, ctermfg=7, term=NONE, cterm=NONE })
hi("TabLine", { ctermbg=236, ctermfg=230, term=NONE, cterm=NONE })
hi("TabLineSel", { ctermbg=240, ctermfg=7, term=NONE, cterm=bold })


