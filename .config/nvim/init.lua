require("config.lazy")

vim.cmd[[colorscheme tokyonight]]

vim.opt.encoding = "utf-8"
vim.opt.showcmd = true                     -- display incomplete commands
vim.opt.number = true                      -- always show line numbers

-- Whitespace
vim.opt.wrap = false                       -- don't wrap lines
vim.opt.tabstop = 2                        -- a tab is two spaces (ruby pattern)
vim.opt.shiftwidth = 2
vim.opt.expandtab = true                   -- use spaces, not tabs
vim.opt.backspace = "indent,eol,start"     -- backspace through everything in insert mode
vim.opt.autoindent = true                  -- auto-indenting is on
vim.opt.copyindent = true                  -- copy previous line's indentation

-- Searching
vim.opt.hlsearch = true                    -- highlight matches
vim.opt.incsearch = true                   -- incremental searching
vim.opt.ignorecase = true                  -- searches are case insensitive...
vim.opt.smartcase = true                   -- ... unless they contain at least one capital letter = true

vim.opt.history=1000                       -- remember more commands and search history
vim.opt.undolevels=1000                    --  use many muchos levels of undo
vim.opt.wildignore="*.swp,*.bak,*.pyc,*.class"

vim.opt.title = true                       -- change the terminal's title
vim.opt.visualbell = true                  -- don't beep

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>ev', ':e $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>so', ':so $MYVIMRC<CR>')
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
