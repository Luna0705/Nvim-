return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            'saghen/blink.cmp',
            {
                "folke/lazydev.nvim",
                opts = {
                    library = {
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            -- LSP Servers setup
            local servers = {
                lua_ls = {}, -- Lua
                html = {}, -- HTML
                jsonls = {}, -- JSON
                ts_ls = {}, -- JS, JSX, TS, TSX
                svelte = {}, -- Svelte
                tailwindcss = {}, -- TailwindCSS
            }

            for server, opts in pairs(servers) do
                opts.capabilities = capabilities
                lspconfig[server].setup(opts)
            end

            -- Auto format on save for supported filetypes
            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(args)
                    local c = vim.lsp.get_client_by_id(args.data.client_id)
                    if not c then return end

                    local format_filetypes = {
                        lua = true,
                        html = true,
                        javascript = true,
                        javascriptreact = true,
                        typescript = true,
                        typescriptreact = true,
                        svelte = true,
                        json = true,
                        css = true,
                    }

                    if format_filetypes[vim.bo[args.buf].filetype] then
                        vim.api.nvim_create_autocmd('BufWritePre', {
                            buffer = args.buf,
                            callback = function()
                                vim.lsp.buf.format({ bufnr = args.buf, id = c.id })
                            end,
                        })
                    end
                end,
            })
        end,
    }
}
