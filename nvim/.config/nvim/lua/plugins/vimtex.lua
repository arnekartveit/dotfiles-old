return {
  "lervag/vimtex",
  lazy = false,
  init = function()     
    vim.g.vimtex_view_method = 'skim'
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_quickfix_mode = 0
    -- Other configurations...   
  end
}
