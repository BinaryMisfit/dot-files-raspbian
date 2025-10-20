" Set the plugin directory
call plug#begin(plugin_path)

Plug 'junegunn/vim-plug'                                " Vim plugin manager
if !exists('g:vscode')
  Plug 'tmux-plugins/vim-tmux-focus-events'             " Better handle tmux focus events
  Plug 'roxma/vim-tmux-clipboard'                       " Better TMUX copy and paster
  Plug 'mhinz/vim-startify'                             " Improved start page
  Plug 'tpope/vim-fugitive'                             " Advanced GIT functionality
  Plug 'airblade/vim-gitgutter'                         " Show GIT changes in gutter
  Plug 'scrooloose/nerdcommenter'                       " Easy line comment functionality
  Plug 'dense-analysis/ale'                             " Asynchronous lint engine
  Plug 'neoclide/jsonc.vim'                             " JSON with comments support
  Plug 'vim-airline/vim-airline'                        " Advanced tab and statusbar
  Plug 'ryanoasis/vim-devicons'                         " Enable file type icons
  Plug 'sheerun/vim-polyglot'                           " Syntax Highligting
  Plug 'lambdalisue/vim-suda'                           " Sudo Override
endif

" Initialize plugins
call plug#end()
