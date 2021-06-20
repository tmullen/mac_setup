" #{ruby interpolation}
map ,# ysiw#
vmap ,# c#{<C-R>"}<ESC>

" quotes
map ," ysiw"
vmap ," c"<C-R>""<ESC>

" single quotes
map ,' ysiw'
vmap ,' c'<C-R>"'<ESC>

" parens
" The difference is in whether a space is put in
map ,( ysiw(
map ,) ysiw)
vmap ,( c( <C-R>" )<ESC>
vmap ,) c(<C-R>")<ESC>

" brackets
map ,] ysiw]
map ,[ ysiw[
vmap ,[ c[ <C-R>" ]<ESC>
vmap ,] c[<C-R>"]<ESC>

" braces
map ,} ysiw}
map ,{ ysiw{
vmap ,} c{ <C-R>" }<ESC>
vmap ,{ c{<C-R>"}<ESC>

map ,` ysiw`
