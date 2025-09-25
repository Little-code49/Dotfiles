-- bootstrap lazy.nvim, LazyVim and your plugins
-- 1) Keep Catppuccin Mocha + transparent editor
require("config.lazy")

-- TRANSPARENCE HACK
local transparent_groups = {
  -- main UI
  "Normal",
  "NormalNC",
  "NormalFloat",
  "FloatBorder",
  "SignColumn",
  "LineNr",
  "EndOfBuffer",
  -- Neo-tree
  "NeoTreeNormal",
  "NeoTreeNormalNC",
  "NeoTreeEndOfBuffer",
  "NeoTreeRootName",
  "NeoTreeDirectoryName",
  "NeoTreeDirectoryIcon",
  "NeoTreeFileName",
  "NeoTreeFileNameOpened",
  "NeoTreeGitModified",
  "NeoTreeGitUntracked",
  "NeoTreeTitleBar",
  "NeoTreeTabActive",
  "NeoTreeTabInactive",
  -- explorer title bar
  "WinBar",
  "WinBarNC",
  -- telescope
  "TelescopeNormal",
  "TelescopeBorder",
}

for _, group in ipairs(transparent_groups) do
  vim.api.nvim_set_hl(0, group, { bg = "none" })
end

-- Keep statusline solid
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#1e1e2e", fg = "#cdd6f4" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#1e1e2e", fg = "#6c7086" })
