-- Enable powershell as your default shell
vim.opt.shell = "pwsh.exe -NoLogo"
vim.opt.shellcmdflag =
  "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.cmd [[
		let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		set shellquote= shellxquote=
  ]]

-- Set a compatible clipboard manager
vim.g.clipboard = {
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
}

-- 字体
vim.opt.guifont = "Intel One Mono:h14:b"
-- 使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true

-- 主题
lvim.colorscheme = "catppuccin-frappe"


-- neovide 配置
if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.o.guifont = "Intel One Mono:h14:b" -- text below applies for VimScript
  -- {}
  -- 设置透明度
  vim.g.neovide_transparency = 0.95
  -- 光标设置
  -- 动画长度
  vim.g.neovide_cursor_animation_length = 0.1
  -- 动画轨迹大小
  vim.g.neovide_cursor_trail_size = 0.5
  -- 动画主题
  -- railgun,torpedo,sonicboom,ripple,wireframe
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  -- 启用分析器
  -- vim.g.neovide_profiler = true

  
end

-- lvim.plugins ={
--   {
--     "olimorris/onedarkpro.nvim",
--     -- priority = 1000, -- Ensure it loads first
--   },
--   {
--     "catppuccin/nvim",
--     name = "catppuccin-macchiato",
--   }
-- }
