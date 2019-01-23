" Collection of language specific macros
"
" :help key-notation for key-notations (eg: <Space>)
" Idea from: https://www.youtube.com/watch?v=Q4I_Ft-VLAg
" nnoremap - normal mode

filetype plugin on

" Jump to next <++>
inoremap ,, <Esc>/<++><Enter>"_c4l

" HTML/pug
autocmd FileType html,pug inoremap ,a <a href=""><++></a><Space><++><Esc>F"i
autocmd FileType html,pug inoremap ,b <b></b><Space><++><Esc>2T>i
autocmd FileType html,pug inoremap ,i <i></i><Space><++><Esc>2T>i
autocmd FileType html,pug inoremap ,c <code></code><Space><++><Esc>2T>i

" Markdown
autocmd FileType markdown inoremap ,a [](<++>)<Space><++><Esc>F]i

" JavaScript
autocmd filetype javascript,typescript inoremap ,f function (<++>) {<Enter><++><Enter>}<Esc>2kf<2ha
autocmd filetype javascript,typescript inoremap ,o {<Enter>}<Esc>O
autocmd filetype javascript,typescript inoremap ,i import<Space><Space>from<Space>"<++>";<++><Esc>Ffhi
autocmd filetype javascript,typescript inoremap ,l console.log(<Space><Space>)<++><Esc>F(la
autocmd filetype javascript,typescript inoremap ,t test(<Space>""<Space>,<Space>t<Space>=><Space>{<Enter><++><Enter>}<Space>);<Esc>02kf"a

" Typescript
autocmd filetype typescript inoremap ,c class<Space><Space>{<Enter>constructor( <++> )<Space>{<Enter><++><Enter>}<Enter>}<Esc>4kf{hi
