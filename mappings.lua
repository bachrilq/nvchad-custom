---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}
M.undotree = {
  n ={
    ["<C-u>"] = {":UndotreeToggle <CR>","Toggle Undotree"}
  }
}
-- more keybinds!

return M
