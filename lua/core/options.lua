local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 搜索
opt.ignorecase = true     --搜索大小写不敏感
opt.smartcase = true      --如果搜索内容包含大写启动大消息敏感
opt.incsearch = true      --输入及时搜索
-- opt.hlsearch = false -- do not highlight matches

-- 光标行高亮
opt.cursorline = true

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 启用鼠标
opt.mouse:append("a")


-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 外观
opt.termguicolors = true  --激活24-bit色彩
opt.signcolumn = "yes"    --显示左侧柱栏
vim.cmd[[colorscheme tokyonight-moon]]

-- 编码
vim.cmd[[set encoding=utf-8]]
vim.cmd[[set fileencodings=ucs-boom,utf-8,gbk]]
