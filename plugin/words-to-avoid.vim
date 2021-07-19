" Setup the syntax highlighting with red bg/white text
highlight TechWordsToAvoid ctermbg=red ctermfg=white guibg=red guifg=white

" Look for matches and highlight them
function! MatchTechWordsToAvoid()
	match TechWordsToAvoid /\c\(\<\(obviously\|basically\|simply\|of\scourse\|clearly\|\(^\|\W\)\@<=just\(\W\)\@=\(\W\)\@<!\|everyone\sknows\|however\||easy\)\>\)\|\(\<so,\)/
endfunction

" Set the flag to enable matches on supported filetypes
autocmd FileType markdown,gitcommit

" Run the matcher function on various events
autocmd FileType * call MatchTechWordsToAvoid()
autocmd BufWinEnter * call MatchTechWordsToAvoid()
autocmd InsertEnter * call MatchTechWordsToAvoid()
autocmd InsertLeave * call MatchTechWordsToAvoid()

" Clean up after ourself
autocmd BufWinLeave * call clearmatches()
