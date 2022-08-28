function hi(group, opts)
    vim.api.nvim_set_hl(0, group, opts);
end

vim.cmd("hi clear SignColumn")

hi("ColorColumn", { ctermbg=234 })
hi("LineNr", { ctermbg=234, ctermfg=14 })
hi("CorsorLineNr", { ctermbg=23, ctermfg=7 })
hi("CursorLine", { ctermbg=235 })
hi("IncSearch", { ctermbg=3, ctermfg=1 })
hi("Search", { ctermbg=1, ctermfg=3 })
hi("Visual", { ctermbg=4, ctermfg=16 })
hi("SpellBad", { ctermbg=0, ctermfg=1 })
hi("SpellCap", { ctermbg=0, ctermfg=15 })
hi("VertSplit", { ctermbg=6, ctermfg=0 })
hi("MatchParen", { ctermbg=241, })
hi("SpellLocal", { ctermbg=55, })
hi("Search", { ctermfg=15, ctermbg=52 })
hi("Hint", { ctermfg=60 })

hi("DiffAdd", { ctermbg=4, ctermfg=15 })
hi("DiffDelete", { ctermbg=5, ctermfg=14 })
hi("DiffChange", { ctermbg=238 })

hi("Folded", { ctermfg=1, ctermbg=0 })
hi("FoldColumn", { ctermfg=1, ctermbg=0 })

hi("TabLineFill", { ctermbg=234, ctermfg=7, term=NONE, cterm=NONE })
hi("TabLine", { ctermbg=236, ctermfg=230, term=NONE, cterm=NONE })
hi("TabLineSel", { ctermbg=240, ctermfg=7, term=NONE, cterm=bold })

hi("GitSignsAdd", { ctermfg=76 })
hi("GitSignsChange", { ctermfg=214 })
hi("GitSignsCurrentLineBlame", { ctermfg=237 })


-- nvim-cmp menu

hi("Pmenu", { ctermbg=236 })
-- hi("PmenuSel", { ctermbg=67 })
hi("PmenuSel", { ctermbg=234 })

-- purple
hi("CmpItemKindFunction", { ctermfg=104 })
hi("CmpItemKindMethod", { ctermfg=104 })

-- lightblue
hi("CmpItemKindVariable", { ctermfg=110 })
hi("CmpItemKindInterface", { ctermfg=110 })
hi("CmpItemKindText", { ctermfg=110 })

-- blue
hi("CmpItemAbbrMatch", { ctermfg=111 })
hi("CmpItemAbbrMatchFuzzy", { ctermfg=111 })
