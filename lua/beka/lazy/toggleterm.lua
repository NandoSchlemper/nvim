return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = function()
            require("toggleterm").setup({
                direction = "float",
                float_opts = {
                    border = "curved",
                    winblend = 3,
                },
            })
            -- Map C-\ to toggle terminal
            vim.keymap.set({ "n", "t" }, "<C-\\>", "<Cmd>ToggleTerm<CR>", { noremap = true, silent = true })
        end
    }
}
