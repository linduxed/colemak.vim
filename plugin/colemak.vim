if v:version < 700 | echohl WarningMsg | echo "colemak.vim: You need Vim version 7.0 or later" | echohl None | finish | endif

function! ColemakEnable()
    " Up/down/left/right
    " Added the 'g' in front of 'j' and 'k' for visual line navigation.
    nnoremap n h|xnoremap n h|onoremap n h|
    nnoremap u gk|xnoremap u k|onoremap u k|
    nnoremap e gj|xnoremap e j|onoremap e j|
    nnoremap i l|xnoremap i l|onoremap i l|

    " Beginning/end of line
    nnoremap L ^|xnoremap L ^|onoremap L ^|
    nnoremap Y $|xnoremap Y $|onoremap Y $|

    " PageUp/PageDown
    nnoremap <silent> <expr> j (winheight(0)-1) . "\<C-u>"
    nnoremap <silent> <expr> h (winheight(0)-1) . "\<C-d>"
    xnoremap <silent> <expr> j (winheight(0)-1) . "\<C-u>"
    xnoremap <silent> <expr> h (winheight(0)-1) . "\<C-d>"
    nnoremap <silent> <expr> <PageUp> (winheight(0)-1) . "\<C-u>"
    nnoremap <silent> <expr> <PageDown> (winheight(0)-1) . "\<C-d>"
    vnoremap <silent> <expr> <PageUp> (winheight(0)-1) . "\<C-u>"
    vnoremap <silent> <expr> <PageDown> (winheight(0)-1) . "\<C-d>"
    vnoremap <silent> <expr> <S-PageUp> (winheight(0)-1) . "\<C-u>"
    vnoremap <silent> <expr> <S-PageDown> (winheight(0)-1) . "\<C-d>"

    " Jumplist navigation
    nnoremap <C-u> <C-i>
    nnoremap <C-e> <C-o>
    vnoremap <C-u> <C-i>
    vnoremap <C-e> <C-o>

    " Word left/right
    nnoremap l b|xnoremap l b|onoremap l b|
    nnoremap y w|xnoremap y w|onoremap y w|
    nnoremap <C-l> B|vnoremap <C-l> B|onoremap <C-l> B|
    nnoremap <C-y> W|vnoremap <C-y> W|onoremap <C-y> W|

    " End of word left/right
    nnoremap <silent> N ge|xnoremap <silent> N ge|onoremap N ge|
    nnoremap <silent> I e|xnoremap <silent> I e|onoremap I e|

    " Text objects
    " diw is drw. daw is now dtw.
    onoremap r i
    vnoremap r i
    onoremap t a
    vnoremap t a
    " Move visual replace from 'r' to 'R'
    onoremap R r
    vnoremap R r

    " Folds
    nnoremap b z|xnoremap b z|
    nnoremap bb zb|xnoremap bb zb|
    nnoremap bu zk|xnoremap bu zk|
    nnoremap be zj|xnoremap be zj|

    " Copy/paste
    nnoremap c y|xnoremap c y|
    nnoremap v p|xnoremap v p|
    nnoremap C y$|xnoremap C y|
    nnoremap V P|xnoremap V P|
    nnoremap cc yy

    " Undo/redo
    nnoremap z u|xnoremap z :<C-u>undo<CR>|
    nnoremap gz U|xnoremap gz U<C-u>undo<CR>|
    nnoremap Z <C-r>|xnoremap Z :<C-u>redo<CR>|

    " inSert/append (T)
    nnoremap s i|
    nnoremap S I|
    nnoremap t a|
    nnoremap T A|

    " Change
    nnoremap w c|xnoremap w c|
    nnoremap W C|xnoremap W C|
    nnoremap ww cc|

    " Visual mode
    nnoremap a v|xnoremap a v|
    nnoremap A V|xnoremap A V|

    " Insert in Visual mode
    vnoremap S I

    " Search
    nnoremap k n|xnoremap k n|onoremap k n|
    nnoremap K N|xnoremap K N|onoremap K N|

    " 'til
    " Breaks diffput
    nnoremap p t|xnoremap p t|onoremap p t|
    nnoremap P T|xnoremap P T|onoremap P T|

    " Fix diffput (t for 'transfer')
    nnoremap dt dp

    " Macros (replay the macro recorded by qq)
    nnoremap Q @q|

    " Cursor to bottom of screen
    " H and M haven't been remapped, only L needs to be mapped
    nnoremap B L

    " Misc overridden keys must be prefixed with g
    nnoremap gS S|xnoremap gS S|
    nnoremap gX X|xnoremap gX X|
    nnoremap gU U|xnoremap gU U|
    nnoremap gQ Q|xnoremap gQ Q|
    nnoremap gK K|xnoremap gK K|
    " extra alias
    nnoremap gh K|xnoremap gh K|

    " Window navigation
    nnoremap <C-w>n <C-w>h|xnoremap <C-w>n <C-w>h|
    nnoremap <C-w>u <C-w>k|xnoremap <C-w>u <C-w>k|
    nnoremap <C-w>e <C-w>j|xnoremap <C-w>e <C-w>j|
    nnoremap <C-w>i <C-w>l|xnoremap <C-w>i <C-w>l|
    nnoremap <C-w>N <C-w>H|xnoremap <C-w>n <C-w>h|
    nnoremap <C-w>U <C-w>K|xnoremap <C-w>u <C-w>k|
    nnoremap <C-w>E <C-w>J|xnoremap <C-w>e <C-w>j|
    nnoremap <C-w>I <C-w>L|xnoremap <C-w>i <C-w>l|
    " Disable spawning empty buffer
    nnoremap <C-w><C-n> <nop>|xnoremap <C-w><C-n> <nop>|
endfunction

command! ColemakEnable call ColemakEnable()
ColemakEnable
