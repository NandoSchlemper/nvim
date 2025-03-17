function C(color)
    if color == "dark" then
        vim.cmd.colorscheme 'tokyonight-storm'
    elseif color == "light" then
        vim.cmd.colorscheme 'catppuccin-latte'
    else
        vim.cmd.colorscheme 'cyberdream'
    end
end

return {
    "folke/tokyonight.nvim",
    "catppuccin/nvim",
    "scottmckendry/cyberdream.nvim",
    lazy = true,
    opts = {}
}
