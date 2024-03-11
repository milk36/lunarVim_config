-- 插件 --
local M = {}

-- local jdtls_config = {
--   cmd = {'/path/to/jdt-language-server/bin/jdtls'},
--   root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
-- }

M.config = function()
  lvim.plugins = {
    -- 主题插件
    {
      "altercation/vim-colors-solarized"
    },
    {
    "olimorris/onedarkpro.nvim",
    -- priority = 1000, -- Ensure it loads first
    },
    {
      "catppuccin/nvim",
      name = "catppuccin-macchiato",
    },
    {
      -- 快速文本跳转
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require("hop").setup()
        -- vim.api.nvim_set_keymap("n", "<leader>s", ":HopChar2<cr>", { silent = true })
        vim.api.nvim_set_keymap("n", "s", ":HopWord<cr>", { silent = true })
      end,
    },
    {
      -- 代码文件结构树
      "simrat39/symbols-outline.nvim",
      config = function()
        require('symbols-outline').setup()
      end
    },
    -- 可以智能地重新打开您上次编辑位置的文件
    -- {
    --   "ethanholz/nvim-lastplace",
    --   -- event = "BufRead",
    --   config = function()
    --    require("nvim-lastplace").setup({
    --     lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
    --     lastplace_ignore_filetype = {
    --      "gitcommit", "gitrebase", "svn", "hgcommit",
    --     },
    --     lastplace_open_folds = true,
    --    })
    --   end,
    --  },
    -- markdown-preview.nvim md预览

    -- jdtls
    {
      "mfussenegger/nvim-jdtls",
      ft = 'java',
      dependencies = { 'neovim/nvim-lspconfig' },
      -- config = function ()
      --   require('jdtls').start_or_attach(jdtls_config)
      -- end,
    },
    -- 调试适配器协议
    -- {
    --   "mfussenegger/nvim-dap",
    -- }
  }
end

return M