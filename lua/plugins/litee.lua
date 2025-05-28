-- Base lib
require ("litee.lib").setup({
        notify = { enabled = true },
        panel = {
            orientation = "right",
            panel_size = 24,
        },
    }
)

-- Calltree plugin
require("litee.calltree").setup({
        on_open = "panel",
        map_resize_keys = false,
    }
)

-- Filetree plugin
require("litee.filetree").setup({})
vim.cmd("command! LTOpenFiletree")

-- Symboltree plugin
require("litee.symboltree").setup({})

-- Bookmark plugin
require("litee.bookmarks").setup({})
