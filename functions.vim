function! SearchForDeclarationCursor()
  let searchTerm = 'def ' . expand("<cword>")
  cexpr system('Ag -w ' . shellescape(searchTerm))
endfunction
