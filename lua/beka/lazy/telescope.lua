return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require('telescope').setup({
            defaults = {
                file_ignore_patterns = {
                    "node_modules/",
                    ".git/",
                    "dist/",
                    "build/",
                    ".cache/",
                    "%.min%%.*",
                    "%.lock",
                    "package-lock.json",
                    "yarn.lock",
                    "%.o",
                    "%.a",
                    "%.out",
                    "%.class",
                    "%.pdf",
                    "%.zip",
                    "%.rbc",
                    "__pycache__/",
                    "%.pdb",
                    "%.dll",
                    "%.DS_Store",
                    "%.svg",
                    "%.png",
                    "%.jpg",
                    "%.jpeg",
                },
                vimgrep_arguments = {
                    "rg",
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                    "--hidden",
                },
            },
        })
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<C-a>', builtin.find_files, {})
        vim.keymap.set('n', '<C-z>', builtin.buffers, {})
        vim.keymap.set('n', '<C-b>', builtin.lsp_definitions, {})
    end
}
