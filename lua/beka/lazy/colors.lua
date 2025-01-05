function C(color) 
    if color == "dark" then
        vim.cmd.colorscheme 'tokyonight-storm'
    elseif color == "light" then
        vim.cmd.colorscheme 'catppuccin-latte'
    else
        vim.cmd.colorscheme 'tokyonight'
    end
end

return { 
     "folke/tokyonight.nvim",
     "catppuccin/nvim",
     lazy = true,
     opts = {}
}
