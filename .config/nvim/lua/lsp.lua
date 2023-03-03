local cmp = require('cmp')
local kind = require('lspkind')
cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn['vsnip#anonymous'](args.body)
		end,
	},
    formatting = {
        fields = { 'kind', 'abbr', 'menu' },
		format = function(entry, vim_item)
		  local kind = require('lspkind').cmp_format({ mode = 'symbol_text', maxwidth = 50 })(entry, vim_item)
		  local strings = vim.split(kind.kind, '%s', { trimempty = true })
		  kind.kind = ' ' .. (strings[1] or '') .. ' '
		  kind.menu = ''
		  return kind
		end,
    },
	window = {
        completion = {
            winhighlight = 'Normal:Pmenu,FlatBorder:Pmenu,Search:None',
            col_offset = -3,
            side_padding = 0,
        },
	},
	mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' },
	}, {
		{ name = 'buffer' },
	})
})

local cmp_caps = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(client, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<space>', vim.lsp.buf.hover, buftopts)
    vim.api.nvim_buf_create_user_command(bufnr, 'Rename', function() vim.lsp.buf.rename() end, {})
    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function() vim.lsp.buf.format() end, {})
end

require('lspconfig').rust_analyzer.setup({
	capabilities = cmp_caps,
	on_attach = on_attach,
	settings = {
		['rust-analyzer'] = {}
	}
})
