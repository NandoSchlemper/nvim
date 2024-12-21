function ReColor(color) 
    color = color or "tokyonight-moon"
    vim.cmd.colorscheme(color)
end

return { 
     "folke/tokyonight.nvim",
     lazy = true,
     opts = {},
     config = function() 
        ReColor()
     end
}
