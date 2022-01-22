" set insert cursor to vertical bar
set guicursor=i:ver30-iCursor

" add column guide
if exists("+colorcolumn")
  set colorcolumn=80
endif

" Enable theming support
if has("termguicolors")
 set termguicolors
end

" Theme
set background=dark
colorscheme solarized8_flat

