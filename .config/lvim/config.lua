--------------------------------------------------------------------------------
--- Head: My / Note
--

--
-- * https://github.com/LunarVim/LunarVim/blob/rolling/utils/installer/config.example.lua
-- * https://github.com/samwhelp/note-about-nvim/blob/gh-pages/_demo/lua/case/lunarvim/config/-lvim/config.lua
--

--
--- Tail: My / Note
--------------------------------------------------------------------------------



-- lvim.builtin.alpha.dashboard.section.header.val = {
-- 	"                    ████████                  ",
-- 	"                ████░░░░░░░░████              ",
-- 	"            ████░░░░░░░░░░░░░░░░████          ",
-- 	"        ████░░░░░░░░░░░░░░░░░░░░░░░░████      ",
-- 	"        ██░░████░░░░░░░░░░░░░░░░████  ██      ",
-- 	"        ██░░░░░░████░░░░░░░░████░░  ░░██      ",
-- 	"        ██░░░░░░░░░░████████░░░░  ░░░░██      ",
-- 	"        ██░░░░░░  ░░░░░░██░░░░░░░░░░░░██      ",
-- 	"        ██░░░░  ░░░░░░░░██░░░░░░░░░░░░██      ",
-- 	"        ██░░  ░░░░░░░░░░██░░░░░░  ░░░░██      ",
-- 	"        ██░░░░░░░░░░░░  ██░░░░  ░░░░░░██      ",
-- 	"        ██░░░░░░░░░░  ░░██░░  ░░░░░░░░██      ",
-- 	"        ████░░░░░░  ░░░░██░░░░░░░░░░████      ",
-- 	"            ████░░░░░░░░██░░░░░░████          ",
-- 	"                ████░░░░██░░████              ",
-- 	"                    ████████                  ",
-- 	"                                              ",
-- }


lvim.builtin.alpha.dashboard.section.header.val = {
" ██████╗ ███████╗ ██████╗  █████╗    ██████╗ ███████╗██╗   ██╗",
"██╔═══██╗██╔════╝██╔════╝ ██╔══██╗   ██╔══██╗██╔════╝██║   ██║",
"██║   ██║███████╗██║  ███╗███████║   ██║  ██║█████╗  ██║   ██║",
"██║   ██║╚════██║██║   ██║██╔══██║   ██║  ██║██╔══╝  ╚██╗ ██╔╝",
"╚██████╔╝███████║╚██████╔╝██║  ██║██╗██████╔╝███████╗ ╚████╔╝",
" ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝╚═════╝ ╚══════╝  ╚═══╝",
}



--------------------------------------------------------------------------------
--- Head: My / Option
--

vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.wrap = true
--vim.opt.scrolloff = 5
--vim.opt.sidescrolloff = 15
vim.opt.relativenumber = true  -- 開啟相對行號

vim.cmd [[
" ## For Leave
set confirm
" ## WildMenu
set wildcharm=<C-o>
cnoremap <C-y> <Up>
if has('nvim')
  cnoremap <C-l> <Down><BS><C-o>
else
  cnoremap <C-l> <Down>
endif
" ## Move Line
nnoremap <S-PageUp> :m-2<CR>
nnoremap <S-PageDown> :m+<CR>
inoremap <S-PageUp> <Esc>:m-2<CR>i
inoremap <S-PageDown> <Esc>:m+<CR>i
" ## Show Invisibles
"set listchars=tab:→\ ,trail:·,extends:↷,precedes:↶
set listchars=tab:»\ ,nbsp:+,trail:·,extends:→,precedes:←
set list
nnoremap <Bslash>a :set list!<CR>
" ## Copy To Clipboard
set mouse=a
vnoremap <S-Tab> "+y
"vnoremap <C-c> "+y
"vmap <S-Tab> "+y
"vmap <C-c> "+y
"vnoremap <RightMouse> "+y
" Better Whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
let g:better_whitespace_ctermcolor=132
]]

--
--- Tail: My / Option
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: My / ColorScheme
--

-- lvim.colorscheme = "lvim"
lvim.colorscheme = "tokyonight"
--lvim.colorscheme = "dracula"
--lvim.colorscheme = "monokai"
--lvim.colorscheme = "onedark"
--lvim.colorscheme = "space-vim-dark"
--lvim.colorscheme = "space_vim_theme"
--lvim.colorscheme = "sonokai"
--lvim.colorscheme = "edge"
--lvim.colorscheme = "everforest"
--lvim.colorscheme = "gruvbox-material"

lvim.transparent_window = true


--
--- Tail: My / ColorScheme
--------------------------------------------------------------------------------




--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
-- 這個雞巴東西害我換行一直跑掉
lvim.format_on_save = false
--lvim.colorscheme = "onedarker"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )


--------------------------------------------------------------------------------
--- Head: My / Keybind
--

-- ## Save
lvim.keys.normal_mode['<C-s>'] = ':w<CR>'
-- ## Quick Switch
lvim.keys.normal_mode['<C-k>'] = ':bprevious<CR>'
lvim.keys.normal_mode['<C-j>'] = ':bnext<CR>'
lvim.keys.normal_mode['<C-h>'] = ':tabprevious<CR>'
lvim.keys.normal_mode['<C-l>'] = ':tabnext<CR>'
-- ## Switch Tab
--lvim.keys.normal_mode['<S-Home>'] = ':tabprevious<CR>'
--lvim.keys.normal_mode['<S-End>'] = ':tabnext<CR>'
-- ## Switch Window
lvim.keys.normal_mode['<Tab>'] = '<C-w>w'
lvim.keys.normal_mode['<Bs>'] = '<C-w>W'
-- ## Resize Window
lvim.keys.normal_mode['<S-Up>'] = '<C-w>+'
lvim.keys.normal_mode['<S-Down>'] = '<C-w>-'
lvim.keys.normal_mode['<S-Left>'] = '<C-w><'
lvim.keys.normal_mode['<S-Right>'] = '<C-w>>'
-- ## Bufer Delete
lvim.keys.normal_mode['<Bslash>q'] = ':bdelete<CR>'
lvim.keys.normal_mode['<Bslash>z'] = ':bdelete!<CR>'
lvim.keys.normal_mode['<Bslash>x'] = ':%bdelete<CR>'
lvim.keys.normal_mode['<Bslash>c'] = ':%bdelete!<CR>'

-- ## Windows vsp
lvim.keys.normal_mode["<leader>sv"] = ":vsplit<CR>"

--
--- Tail: My / Keybind
--------------------------------------------------------------------------------




-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
-- lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"c",
	"javascript",
	"json",
	"lua",
	"python",
	"typescript",
	"tsx",
	"css",
	"rust",
	"java",
	"yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumeko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- vim.tbl_map(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/nevim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
-- lvim.plugins = {
--     {"folke/tokyonight.nvim"},
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })



--------------------------------------------------------------------------------

--- React plugin

-- markdown-preview hotkey
vim.api.nvim_create_user_command("MDP", "MarkdownPreviewToggle", {})




local lspconfig = require("lspconfig")

lspconfig.html.setup({
  filetypes = { "html", "typescriptreact", "javascriptreact" }, -- 添加 tsx/jsx 支援
  settings = {
    html = {
      suggest = {
        html5 = true,
        angular1 = false,
        ionic = false,
      },
    },
  },
})



lvim.builtin.cmp.active = true
lvim.builtin.cmp.formatting = {
  format = function(entry, vim_item)
    -- 為不同類型的補全項目設置圖標（可選）
    local kind_icons = {
      Text = "",
      Method = "󰆧",
      Function = "󰊕",
      Constructor = "",
      Field = "󰜢",
      Variable = "󰀫",
      Class = "󰠱",
      Interface = "",
      Module = "",
      Property = "󰜢",
      Unit = "",
      Value = "󰎠",
      Enum = "",
      Keyword = "󰌋",
      Snippet = "",
      Color = "󰏘",
      File = "󰈙",
      Reference = "",
      Folder = "󰉋",
      EnumMember = "",
      Constant = "󰏿",
      Struct = "󰙅",
      Event = "",
      Operator = "󰆕",
      TypeParameter = "",
    }
    vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind)
    return vim_item
  end,
}
-- 自定義補全源（如 LSP、緩存、文件路徑等）
lvim.builtin.cmp.sources = {
  { name = "nvim_lsp" },         -- LSP
  { name = "buffer" },           -- 當前文件
  { name = "path" },             -- 文件路徑
  { name = "luasnip" },          -- 代碼片段
}

-- 如果需要 Tailwind CSS 的補全，可以添加
table.insert(lvim.builtin.cmp.sources, { name = "tailwindcss" })

-- 自定義補全鍵位
local cmp = require("cmp")
lvim.builtin.cmp.mapping = {
  ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
  ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
  ["<CR>"] = cmp.mapping.confirm({ select = true }), -- 確認補全
  ["<C-Space>"] = cmp.mapping.complete(),           -- 顯示補全選單
}
--- Head: My / Plugin
--

lvim.plugins = {
	-- Discord Presence
	{
    "andweeb/presence.nvim",
    config = function()
      require("presence").setup({
        neovim_image_text = "LunarVim on macOS",
        main_image = "file",
		enable_line_number = true,
        editing_text = "Editing %s",
        file_explorer_text = "Browsing %s",
        workspace_text = "Working on %s",
        client_text = "Using LunarVim",
      })
    end
  },
	--markdown-preview
	{
        "iamcco/markdown-preview.nvim",
        build = "cd app && npm install",
        ft = { "markdown" },
        config = function()
            vim.g.mkdp_auto_start = 1
        end,
    },
	-- 補全
	{
		"windwp/nvim-ts-autotag",
		config = function()
		  require("nvim-ts-autotag").setup({
			filetypes = {
			  "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "vue", "svelte", "xml",
			},
		  })
		end,
	},
	-- 滾動平滑
	{
	  "karb94/neoscroll.nvim",
	  event = "WinScrolled",
	  config = function()
		require("neoscroll").setup({
		  -- 預設配置
		  easing_function = "quadratic", -- 滾動平滑曲線
		  hide_cursor = false,          -- 滾動時是否隱藏游標
		})

		-- 設定鍵位
		local t = {}
		t["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "100" } }
		t["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "100" } }
		t["<C-b>"] = { "scroll", { "-vim.api.nvim_win_get_height(0)", "true", "100" } }
		t["<C-f>"] = { "scroll", { "vim.api.nvim_win_get_height(0)", "true", "100" } }
		t["<C-y>"] = { "scroll", { "-0.10", "false", "50" } }
		t["<C-e>"] = { "scroll", { "0.10", "false", "50" } }
		t["<j>"] = { "scroll", { "0.10", "true", "50" } }
		t["<k>"] = { "scroll", { "-0.10", "true", "50" } }
		require("neoscroll.config").set_mappings(t)
	  end,
	},
	{
	  "karb94/neoscroll.nvim",
	  event = "WinScrolled",
	  config = function()
	  require('neoscroll').setup({
			-- All these keys will be mapped to their corresponding default scrolling animation
			mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
			'<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
			hide_cursor = true,          -- Hide cursor while scrolling
			stop_eof = true,             -- Stop at <EOF> when scrolling downwards
			use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
			respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
			cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
			easing_function = nil,        -- Default easing function
			pre_hook = nil,              -- Function to run before the scrolling animation starts
			post_hook = nil,              -- Function to run after the scrolling animation ends
			})
	  end
	},
	-- 通知 and 酷酷的 cmdline block
	{
		"folke/noice.nvim",
		enabled = ENABLE_NOICE,
		lazy = true,
		event = { "BufRead", "BufNewFile" },
		dependencies = { "rcarriga/nvim-notify", "MunifTanjim/nui.nvim" },
		config = function()
			require("noice").setup({
				lsp = {
					progress = {
						enabled = false,
					},
				},
				presets = {
					bottom_search = true,
					command_palette = true,
					long_message_to_split = false,
					inc_rename = false,
					lsp_doc_border = true,
				},
				messages = {
					enabled = true,
					view = "notify",
					view_error = "notify",
					view_warn = "notify",
					view_history = "messages",
					view_search = "virtualtext",
				},
				health = {
					checker = false,
				},
			})
		end,
	},


	-- ## https://github.com/ntpeters/vim-better-whitespace
	{
		"ntpeters/vim-better-whitespace",
		config = function()
					vim.g.better_whitespace_enabled=1
					vim.g.strip_whitespace_on_save=1
					vim.g.strip_whitespace_confirm=0
					vim.g.better_whitespace_ctermcolor=132
		end
	},
	-- ## ColorScheme

	-- ## dracula
	-- https://github.com/dracula/vim
	--{'dracula/vim', as = 'dracula'},

	-- ## gruvbox
	-- https://github.com/morhetz/gruvbox
	--{'morhetz/gruvbox'},

	-- ## monokai
	-- https://github.com/sickill/vim-monokai
	--{'sickill/vim-monokai'},

	-- ## onedark
	-- https://github.com/joshdick/onedark.vim
	--{'joshdick/onedark.vim'},

	-- ## space-vim-dark
	-- https://github.com/liuchengxu/space-vim-dark
	--{'liuchengxu/space-vim-dark'},

	-- ## space_vim_theme
	-- https://github.com/liuchengxu/space-vim-theme
	--{'liuchengxu/space-vim-theme'},

	-- ## lvim
	-- https://github.com/lvim-tech/lvim-colorscheme
	--{'lvim-tech/lvim-colorscheme'},

	-- ## sonokai
	-- https://github.com/sainnhe/sonokai
	--{'sainnhe/sonokai'},

	-- ## edge
	-- https://github.com/sainnhe/edge
	--{'sainnhe/edge'},

	-- ## everforest
	-- https://github.com/sainnhe/everforest
	--{'sainnhe/everforest'},

	-- ## gruvbox-material
	-- https://github.com/sainnhe/gruvbox-material
	--{'sainnhe/gruvbox-material'},

	-- ## gruvbox
	-- {'npxbr/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}
	-- https://github.com/ellisonleao/gruvbox.nvim
	{ 'ellisonleao/gruvbox.nvim' }
}


--
--- Tail: My / Plugin
--------------------------------------------------------------------------------
