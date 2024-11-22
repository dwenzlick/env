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

-- require('telescope').setup({
--   defaults = {
--     -- configure to use ripgrep
--     vimgrep_arguments = {
--       "rg",
--       "--follow",        -- Follow symbolic links
--       "--hidden",        -- Search for hidden files
--       "--no-heading",    -- Don't group matches by each file
--       "--with-filename", -- Print the file path with the matched lines
--       "--line-number",   -- Show line numbers
--       "--column",        -- Show column numbers
--       "--smart-case",    -- Smart case search

--       -- Exclude some patterns from search
--       "--glob=!**/.git/*",
--       "--glob=!**/.idea/*",
--       "--glob=!**/.vscode/*",
--       "--glob=!**/build/*",
--       "--glob=!**/dist/*",
--       "--glob=!**/yarn.lock",
--       "--glob=!**/package-lock.json",
--     },
--   },
--   pickers = {
--     find_files = {
--       hidden = true,
--       -- needed to exclude some files & dirs from general search
--       -- when not included or specified in .gitignore
--       find_command = {
--         "rg",
--         "--files",
--         "--hidden",
--         "--glob=!**/.git/*",
--         "--glob=!**/.idea/*",
--         "--glob=!**/.vscode/*",
--         "--glob=!**/build/*",
--         "--glob=!**/dist/*",
--         "--glob=!**/yarn.lock",
--         "--glob=!**/package-lock.json",
--       },
--     },
--   }
-- })

-- local telescope = require("telescope")
-- local telescopeConfig = require("telescope.config")

-- -- Clone the default Telescope configuration
-- local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

-- -- I want to search in hidden/dot files.
-- table.insert(vimgrep_arguments, "--hidden")
-- -- I don't want to search in the `.git` directory.
-- table.insert(vimgrep_arguments, "--glob")
-- table.insert(vimgrep_arguments, "!**/.git/*")

-- telescope.setup({
--   defaults = {
--     -- `hidden = true` is not supported in text grep commands.
--     vimgrep_arguments = vimgrep_arguments,
--   },
--   pickers = {
--     find_files = {
--       hidden = true,
--       -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
--       find_command = { 
--         "rg",
--         "--files", 
--         "--hidden", 
--         "--glob=!**/.git/*" 
--       },
--     },
--   },
-- })

-- local builtin = require("telescope.builtin")
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- require("telescope").load_extension("ui-select")

