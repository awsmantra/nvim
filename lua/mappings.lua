require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
-- local harpoon = require("harpoon")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- spectre
map("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', {
  desc = "Toggle Spectre",
})
map("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word",
})
map("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = "Search current word",
})
map("n", "<leader>sf", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file",
})

map("n", "zR", require("ufo").openAllFolds)
map("n", "zM", require("ufo").closeAllFolds)

map("n", "<Leader>i", "<cmd>IBLToggle<cr>", {
  desc = "Indent lines toggle",
})

-- Lua
map("n", "<leader>tx", function()
  require("trouble").toggle()
end)
map("n", "<leader>tw", function()
  require("trouble").toggle "workspace_diagnostics"
end)
map("n", "<leader>td", function()
  require("trouble").toggle "document_diagnostics"
end)
map("n", "<leader>tq", function()
  require("trouble").toggle "quickfix"
end)
map("n", "<leader>tl", function()
  require("trouble").toggle "loclist"
end)
map("n", "tR", function()
  require("trouble").toggle "lsp_references"
end)

map("n", "<space>a", "<cmd>lua vim.lsp.buf.code_action()<CR>", {
  desc = "import packages",
})

map("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
map("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
map("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
map("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

map("n", "<leader>nd", function()
  require("noice").cmd "dismiss"
end)

map("n", "<leader>o", "<cmd>Outline<CR>",
  { desc = "Toggle Outline" }
)
-- map("n", "<leader>hx", function() harpoon:list():add() end)
-- map("n", "<leader>hp", function() harpoon:list():prev() end)
-- map("n", "<leader>hn", function() harpoon:list():next() end)
-- map('n', '<leader>hp', require('harpoon.ui').nav_prev)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
