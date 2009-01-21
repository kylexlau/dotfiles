" The commands in this are executed when the GUI is started.

"set the X11 font to use
"set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1
"set guifont=Monaco\ 14,\ Micorsoft\ YaHei\ 14
"set guifont=Consolas\ 14,\ Micorsoft\ YaHei\ 14
"set guifont=Consolas\ 14
"set guifontwide=Microsoft\ YaHei\ 13
"set gfn=Consolas\ 14
"set gfw=Microsoft\ YaHei\ 13
"colo murphy " colo=colors, elflord, torte, desert, murphy

" UI
set go-=m "Remove menubar
set go-=T "Remove toolbar, go=guioption"
set go-=r "Remove v_scroll bar

" geometry
"set lines=25 columns=90

"set ch=2		" Make command line two lines high
set mousehide		" Hide the mouse when typing text

let c_comment_strings=1

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

