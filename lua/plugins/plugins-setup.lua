local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "http://git.265326.xyz/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- 主题
    "tanvirtin/monokai.nvim",
    "folke/tokyonight.nvim",
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    --文档树
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    "christoomey/vim-tmux-navigator", -- 用ctl-hjkl来定位窗口
    "nvim-treesitter/nvim-treesitter", -- 语法高亮
    "p00f/nvim-ts-rainbow", -- 配合treesitter，不同括号颜色区分

    -- lsp
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",  -- 这个相当于mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig",

    -- 自动补全
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "hrsh7th/cmp-path", -- 文件路径

    -- 模糊搜索
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    "lewis6990/gitsigns.nvim", -- git提示
    "akinsho/bufferline.nvim", -- buffer分割线
    "windwp/nvim-autopairs", -- 自动补全括号
    "numToStr/Comment.nvim", -- gcc和gc注释

    "nvimdev/lspsaga.nvim",  -- lsp ui美化
    "nvim-pack/nvim-spectre",
})
