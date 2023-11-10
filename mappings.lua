---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}
M.telescopeundo = {
  n ={
    ["<C-u>"] = {":Telescope undo <CR>","Toggle Telescope Undo"}
  }
}
-- more keybinds!

return M
