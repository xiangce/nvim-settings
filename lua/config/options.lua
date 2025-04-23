-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------

-- Default options are not included
-- See: https://neovim.io/doc/user/vim_diff.html
-- [2] Defaults - *nvim-defaults*

-----------------------------------------------------------
-- General
-----------------------------------------------------------
-- 清除所有之前定义的 autocmd 并从干净的状态开始
vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.mouse = ''                        -- Enable mouse support
vim.opt.clipboard = ''                    -- Copy/paste to system clipboard
vim.opt.completeopt = { "menuone", "noselect", "noinsert" } -- Autocomplete options
vim.opt.cmdheight = 1                       -- neovim 命令行中有更多空间用于显示消息
vim.opt.conceallevel = 0                    -- so that `` is visible in markdown files
vim.opt.cursorline = true                   -- highlight the current line

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------

vim.opt.colorcolumn = '80'      -- Line lenght marker at 80 columns
vim.opt.foldenable = false
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.foldmethod = "expr"   -- folding set to "expr" for treesitter based folding
vim.opt.hlsearch = true         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true       -- Ignore case letters when search
vim.opt.inccommand = 'split'
vim.opt.signcolumn = "no"
vim.opt.laststatus = 2          -- Set global statusline
vim.opt.linebreak = true        -- Wrap on word boundary
vim.opt.number = true           -- Show line number
vim.opt.numberwidth = 1         -- set number column width to 2 {default 4}
vim.opt.pumheight = 10          -- pop up menu height
vim.opt.relativenumber = true   -- set relative numbered lines
vim.opt.scrolloff = 5
vim.opt.showcmd = true
vim.opt.showmatch = true        -- Highlight matching parenthesis vim.opt.sidescrolloff = 4
vim.opt.smartcase = true        -- Ignore lowercase for the whole pattern
vim.opt.splitbelow = true       -- Horizontal split to the bottom
vim.opt.splitright = true       -- Vertical split to the right
vim.opt.termguicolors = true    -- Enable 24-bit RGB colors
vim.opt.title = true            -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F - nvim" -- what the title of the window will be set to
vim.opt.wrap = true             -- display lines as one long line

vim.g.border_style = "rounded"
vim.g.markdown_fenced_languages = {
    "bash=sh",
}


-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
vim.opt.expandtab = true        -- Use spaces instead of tabs
vim.opt.shiftwidth = 4          -- Shift 4 spaces when tab
vim.opt.tabstop = 4             -- 1 tab == 4 spaces
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.breakindent = true
vim.opt.smartindent = true      -- Autoindent new lines
vim.opt.showtabline = 2         -- always show tabs
vim.opt.list = true
vim.opt.listchars = "tab:│ ,trail:·,nbsp:+"

-----------------------------------------------------------
-- Files
-----------------------------------------------------------
vim.opt.backup = false                    -- 创建备份文件
vim.opt.swapfile = false                  -- Don't use swapfile
vim.opt.fileencoding = "utf-8"            -- the encoding written to a file
vim.opt.spell = false                     -- disable spell checking
-- vim.opt.spelllang = "en"                  -- language for spell checking
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
vim.opt.undofile = true -- enable persistent undo
vim.opt.writebackup = false               -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
vim.opt.hidden = true           -- Enable background buffers
vim.opt.history = 50            -- Remember N lines in history
vim.opt.lazyredraw = true       -- Faster scrolling
vim.opt.synmaxcol = 240         -- Max column for syntax highlight
vim.opt.updatetime = 200        -- ms to wait for trigger an event
vim.opt.timeoutlen = 500        -- timeout length

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
-- Disable nvim intro
-- vim.opt.shortmess:append "sI"

-- Disable builtin plugins
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
   "rplugin",
   "synmenu",
   "optwin",
   "compiler",
   "bugreport",
   "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
   vim.g["loaded_" .. plugin] = 1
end

vim.lsp.enable('pyright')
