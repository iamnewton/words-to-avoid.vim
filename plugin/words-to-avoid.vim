" Look for matches and highlight them
function! MatchTechWordsToAvoid()
	match TechWordsToAvoid /\c\(\<\(obviously\|basically\|simply\|of\scourse\|clearly\|\(^\|\W\)\@<=just\(\W\)\@=\(\W\)\@<!\|everyone\sknows\|however\||easy\)\>\)\|\(\<so,\)/
endfunction

" Run the matcher function on various events
autocmd FileType markdown,gitcommit call MatchTechWordsToAvoid()
autocmd BufWinEnter * call MatchTechWordsToAvoid()
autocmd InsertEnter * call MatchTechWordsToAvoid()
autocmd InsertLeave * call MatchTechWordsToAvoid()

" Clean up after ourself
autocmd BufWinLeave * call clearmatches()
