return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", 
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.api.nvim_set_keymap('n', '<Leader>df', ':Neotree filesystem reveal right<CR>', {noremap = true, silent = true})
        vim.api.nvim_set_keymap('n', '<Leader>dc', ':Neotree action=copy<CR>', {noremap = true, silent = true})
        vim.api.nvim_set_keymap('n', '<Leader>dd', ':Neotree action=delete<CR>', {noremap = true, silent = true})
        vim.api.nvim_set_keymap('n', '<Leader>dr', ':Neotree refresh<CR>', {noremap = true, silent = true})
    end
}
