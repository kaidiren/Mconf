call plug#begin('~/.vim/plugged')

Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/vim-scripts/L9.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'https://github.com/dense-analysis/ale.git'
Plug 'https://github.com/scrooloose/nerdtree.git', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/kaidiren/vim-airline-themes.git'
Plug 'https://github.com/editorconfig/editorconfig-vim.git'
Plug 'https://github.com/pangloss/vim-javascript.git', { 'for': 'javascript' }
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/svermeulen/vim-easyclip.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/elzr/vim-json.git', { 'for': 'json' }
Plug 'https://github.com/gioele/vim-autoswap.git'
Plug 'https://github.com/EinfachToll/DidYouMean.git'
Plug 'https://github.com/wincent/terminus.git'
Plug 'https://github.com/dietsche/vim-lastplace.git'
Plug 'https://github.com/mileszs/ack.vim.git'
Plug 'https://github.com/MattesGroeger/vim-bookmarks.git'
Plug 'https://github.com/ntpeters/vim-better-whitespace.git'
Plug 'https://github.com/rhysd/vim-clang-format.git', { 'for': ['c', 'cpp'] }
Plug 'https://github.com/vim-scripts/LargeFile.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/heavenshell/vim-jsdoc.git', { 'for': 'javascript' }
Plug 'https://github.com/rust-lang/rust.vim.git', { 'for': 'rust' }
Plug 'https://github.com/fatih/vim-go.git' , { 'for': 'go' }
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'https://github.com/peitalin/vim-jsx-typescript.git', { 'for': 'typescript.tsx' }
Plug 'https://github.com/tomlion/vim-solidity.git', { 'for': 'solidity' }
Plug 'https://github.com/rhysd/vim-fixjson.git', { 'for': 'json' }

call plug#end()

let g:LargeFile= 1

let g:bookmark_no_default_key_mappings = 1
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
nmap <silent>ma :BookmarkToggle<CR>
nmap <silent>ml :BookmarkShowAll<CR>
nmap <silent>mn :BookmarkNext<CR>
nmap <silent>mb :BookmarkPrev<CR>
nmap <silent>mc :BookmarkClearAll<CR>

let g:TerminusInsertCursorShape = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|coverage|tmp)|(\.(git|svn|hg))$',
  \ 'file': '\v\.(exe|so|dll|swp)$'
  \ }

" 通用配置
set ff=unix
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set textwidth=120
set backspace=2
set hlsearch
" 默认编码
set encoding=utf-8
" 禁用光标样式
set guicursor=
" 行号
set nu
set t_Co=256

" 开启折叠
" za 折叠 za 打开
set foldmethod=marker
set foldmarker={,}
" 默认打开文件的时候不折叠
set foldlevelstart=999
" autocmd BufWinEnter * normal zR
" autocmd BufRead * normal zR

" 开启实时搜索功能
set incsearch

" 搜索时大小写不敏感
set ignorecase

" 设置为粘贴模式
" set paste

set clipboard=unnamed

" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

" 主题
" let g:solarized_termtrans = 1
syntax enable
set background=dark
colorscheme solarized

let g:airline#extensions#ale#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='blue'
let g:airline_section_a = airline#section#create_left(['mode'])
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'error', 'warning', 'c'],
  \ [ 'z', 'x', 'y']
  \ ]
let g:airline_symbols.notexists = ''
" configure which whitespace checks to enable. >
" indent: mixed indent within a line
" long: overlong lines
" trailing: trailing whitespace
" mixed-indent-file: different indentation in different lines

let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing', 'long', 'mixed-indent-file' ]

let g:ale_linter_aliases = {'typescript.tsx': 'typescript'}
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\   'typescriptreact': ['eslint'],
\   'typescript.tsx': ['eslint'],
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'rust': ['rustfmt']
\}

" standard
let g:ale_linters = {
\  'javascript': ['eslint'],
\  'typescript': ['eslint'],
\  'typescriptreact': ['eslint'],
\   'typescript.tsx': ['eslint'],
\  'rust': ['rustc']
\}

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_open_list = 0
let g:ale_set_quickfix = 1
let g:ale_lint_delay = 10
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = 'XX'
let g:ale_sign_warning = '!!'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:rustfmt_autosave = 1

" YCM 配置
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_auto_trigger = 1
let g:ycm_key_invoke_completion = '<C-x>'
let g:ycm_echo_current_diagnostic = 1
let g:ycm_seed_identifiers_with_syntax = 1

set updatetime=100

let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '**'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_modified_removed = '-*'
let g:gitgutter_sign_removed_first_line = '--'

let g:EasyClipAlwaysMoveCursorToEndOfPaste = 1
let g:EasyClipPreserveCursorPositionAfterYank = 1

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCustomDelimiters = { 'javascript': { 'left': '//', 'leftAlt': '/**', 'rightAlt': '*/' } }

"打开powerline
set laststatus=2

" 快捷键映射
let mapleader = " "
set timeoutlen=300
" leader 的默认值为 \

let g:vim_json_syntax_conceal = 0

" crontab -e edit bug
autocmd filetype crontab setlocal nobackup nowritebackup

let g:ycm_global_ycm_extra_conf = '/Users/rkd/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'

" 取消搜索高亮
nnoremap <silent> <leader><Esc> :<C-u>nohlsearch<CR>

" 复制光标所在的单词
nnoremap <silent> <leader>y viwy
vnoremap <silent> <leader>y iwy


" 注释快捷键
" leader cs
" leader cl
" leader cu
" vim-surround cheat
" ds"
" cs'"
" ysiw( 单词
" yss( 行

let g:gitgutter_max_signs = 10000
let g:javascript_plugin_jsdoc = 1

let g:jsdoc_allow_input_prompt= 1
let g:jsdoc_enable_es6 = 1

let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

let g:loaded_sql_completion = 0
let g:omni_sql_no_default_maps = 1

let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_functions = 1

nnoremap <Leader>r :call <SID>TmuxRepeat()<CR>

function! s:TmuxRepeat()
  silent! exec "!tmux select-pane -l && tmux send up enter && tmux select-pane -l"
  redraw!
endfunction

" let g:neoformat_enabled_javascript = ['standard']
" let g:neoformat_only_msg_on_error = 1

" augroup fmt
"   autocmd!
"   au BufWritePre *.js try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
" augroup END

" autocmd bufwritepost *.js silent !standard --fix %
" set autoread
