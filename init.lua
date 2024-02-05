require "kenan.options"
require "kenan.keymaps"
require "kenan.plugins"
require "kenan.colorscheme"
require "kenan.lsp"
require "kenan.telescope"
require "kenan.treesitter"
require "kenan.autopairs"
require "kenan.comment"
require "kenan.bufferline"
require "kenan.lualine"
require "kenan.impatient"
require "kenan.autocommands"

vim.cmd(
    [[
" Set C++ file type
autocmd BufNewFile,BufRead *.cpp set filetype=cpp
 
" Compile and run C++ program in subshell
function! CompileAndRun()
  let fileName = expand('%')
  if fileName =~ '\.cpp$'
    let exeName = substitute(fileName, '\.cpp$', '', '')
    execute 'w | !g++ -std=c++17 -Wall -O2 -o ' . exeName . ' ' . fileName
    if v:shell_error == 0
      redraw!
    endif
  else
    echo 'Not a C++ file'
  endif
endfunction
 
" Map keys to compile and run current file
map <F5> :call CompileAndRun()<CR>
map <F9> :w<CR>:!clear<CR>:call CompileAndRun()<CR>
    ]]
)
