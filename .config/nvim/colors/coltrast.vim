" Copyright 2021 codic12
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.

" Boilerplate stuff
highlight clear
if exists("syntax_on")
  syntax reset
endif
set background=dark " hahahaha no light theme get rekt

" Set the colors
highlight Normal guibg=#1A1311 guifg=#C8BAA4 gui=NONE
highlight Comment guifg=#988295 gui=italic
highlight Keyword guifg=#D9B27C gui=NONE
highlight LineNr guifg=#6F5F57 gui=NONE
highlight EndOfBuffer guifg=#739996 gui=NONE
highlight Conditional guifg=#769FBE gui=NONE
highlight Type guifg=#769FBE gui=NONE
highlight Function guifg=#98B779 gui=NONE
highlight Identifier guifg=#B399AF gui=NONE
highlight Statement guifg=#B399AF gui=NONE
highlight Constant guifg=#C3A070 gui=NONE
highlight Pmenu guibg=#291E1B gui=NONE
highlight Include guifg=#C65F5F gui=NONE
highlight Visual guifg=#C8BAA4 guibg=#574d4b gui=NONE
highlight Search guifg=#C8BAA4 guibg=#574d4b gui=bold
highlight StatusLine guibg=#171110 gui=NONE
highlight RightStatusLine guibg=#291E1B gui=NONE
highlight SignColumn guibg=#291E1B gui=NONE
highlight MatchParen guibg=#291E1B gui=NONE
