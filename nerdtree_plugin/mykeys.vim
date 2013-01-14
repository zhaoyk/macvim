if exists("g:loaded_nerdtree_mykeys")
    finish
endif
let g:loaded_nerdtree_mykeys = 1

call NERDTreeAddKeyMap({
	   \ 'key': '\m',
	   \ 'callback': 'NERDTreeQuickBookmark',
	   \ 'quickhelpText': 'bookmark' })

function! NERDTreeQuickBookmark()	
	exec "Bookmark"	
endfunction

