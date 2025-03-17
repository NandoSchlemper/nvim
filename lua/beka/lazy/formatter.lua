return {
    -- Outros plugins aqui...

    {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    -- Adicione os formatters que você instalou via Mason
                    null_ls.builtins.formatting.csharpier, -- Exemplo para Prettier
                    --  null_ls.builtins.formatting.biome,     -- Exemplo para Black (Python)
                    null_ls.builtins.formatting.gofumpt,   -- Exemplo para Stylua (Lua)
                    null_ls.builtins.formatting.goimports_reviser,
                    -- Adicione outros formatters conforme necessário
                },
            })

            -- Configurar formatação automática ao salvar
            vim.api.nvim_create_autocmd("BufWritePre", {
                pattern = "*",
                callback = function()
                    vim.lsp.buf.format({ async = false })
                end,
            })
        end,
    },
}
