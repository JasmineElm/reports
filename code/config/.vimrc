
" keep cursor in a reasonable place
set scrolloff=15

" sensible deaults for files
set encoding=utf-8
set ffs=unix " assume *nix line endings

" Converts tabs to spaces of width=2
set expandtab tabstop=2 shiftwidth=2

" save file when lose focus
set autowrite 

set incsearch smartcase hlsearch showmatch

" FINDNG FILES:
filetype plugin on

" tab completion on all files
set path+=**
set wildmenu wildmode=list:full
set autochdir

" VIM-PANDOC settings
"
let g:pandoc#completion#bib#mode 	  = 'citeproc'
let g:pandoc#biblio#sources 		    = "ybcg"
let g:pandoc#formatting#textwidth   = 80
" let g:pandoc#formatting#mode 		    = "hA"
let g:pandoc#folding#level 		      = 2
let g:pandoc#folding#fdc		        = 0

set showbreak=\  
" LIMELIGHT settings
"
let g:limelight_conceal_ctermfg     = 'gray'
let g:limelight_conceal_guifg       = 'DarkGray'
let g:limelight_default_coefficient = 0.8
map <leader>w :Limelight<CR>
	
" turn-on distraction free writing mode for markdown files
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} call DistractionFreeWriting()

function! DistractionFreeWriting()
    :Limelight
endfunction

set noru nornu nonu " remove cruft
   
set rulerformat=%#TabLineSel#\ %{WordCount()}%#Statement#\ %m\ %#VisualNOS#\ %l:%c

" CtrlP function for inserting a markdown link with Ctrl-X
function! CtrlPOpenFunc(action, line)
   if a:action =~ '^h$'    
      " Get the filename
      let filename = fnameescape(fnamemodify(a:line, ':t'))
	  let filename_wo_timestamp = fnameescape(fnamemodify(a:line, ':t:s/\d+-//'))

      " Close CtrlP
      call ctrlp#exit()
      call ctrlp#mrufiles#add(filename)

      " Insert the markdown link to the file in the current buffer
	  let mdlink = "[ ".filename_wo_timestamp." ]( ".filename." )"
      put=mdlink
  else    
      " Use CtrlP's default file opening function
      call call('ctrlp#acceptfile', [a:action, a:line])
   endif
endfunction

let g:ctrlp_open_func = { 
         \ 'files': 'CtrlPOpenFunc',
         \ 'mru files': 'CtrlPOpenFunc' 
         \ }

