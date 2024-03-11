local M = {}

-- vim key remap --
local key_remap = function()
  lvim.keys.insert_mode["jj"] = "<Esc>"
  lvim.keys.normal_mode["<leader>so"] = ":SymbolsOutline<cr>"
end

M.config = function()
  -- bufferline_config()
  key_remap()
end

return M