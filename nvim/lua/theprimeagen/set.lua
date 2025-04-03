local vo = vim.opt

vo.number = true
vo.relativenumber = true
vo.autoindent = true
vo.tabstop = 4
vo.shiftwidth = 4
vo.smarttab = true
vo.softtabstop = 4

vo.wrap = false

vo.swapfile = false
vo.backup = false
vo.undodir = os.getenv("HOME") .. "/.vim/undodir"
vo.undofile = true

vo.hlsearch = false
vo.incsearch = true

vo.termguicolors = true

vo.scrolloff = 8
vo.signcolumn = "yes"
vo.isfname:append("@-@")

vo.updatetime = 50

vo.colorcolumn = "120"
