local M = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        require("nvim-treesitter.configs").setup({
            -- Specify the languages you want Treesitter to install
            ensure_installed = {
                "bash",
                "c",
                "cpp",
                "javascript",
                "typescript",
                "lua",
                "python",
                "html",
                "css",
                "json",
                "yaml",
                -- Add other languages as needed
            },

            -- Enable syntax highlighting
            highlight = {
                enable = true,
            },
            
            -- Optional: enable additional features like incremental selection or indentation
            indent = {
                enable = true,
            },
        })
    end,
}

return { M }
