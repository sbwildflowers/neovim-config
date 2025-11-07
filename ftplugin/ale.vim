augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.svelte set filetype=javascript.svelte
augroup END
"let b:ale_linter_aliases = ['css','javascript']
"let b:ale_linters = ['stylelint', 'eslint']
"let b:ale_linters = {'javascript': ['eslint'], 'svelte': ['eslint']}
