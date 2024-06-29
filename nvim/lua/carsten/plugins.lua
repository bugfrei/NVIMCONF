-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

return require('packer').startup({
    function(use)
        ---------------------
        -- Package Manager --
        ---------------------

        use('wbthomason/packer.nvim')

        ----------------------
        -- Required plugins --
        ----------------------
        use('christoomey/vim-tmux-navigator')
        use('easymotion/vim-easymotion')
        use('sitiom/nvim-numbertoggle')
        use('tpope/vim-markdown')
        use('scrooloose/nerdtree')
        use('vimwiki/vimwiki')
        use("derektata/lorem.nvim")
        use { "johmsalas/text-case.nvim",
          config = function()
            require('textcase').setup {}
          end
        }

    end,
    config = {
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end,
        },
    },
})
