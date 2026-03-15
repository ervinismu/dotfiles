return {
  { 'junegunn/fzf', build = ':call fzf#install()' },
  {
    'junegunn/fzf.vim',
    keys = {
      { '<leader>ff', '<cmd>Files<cr>', desc = 'Find files' },
      { '<leader>fg', '<cmd>GFiles<cr>', desc = 'Find git giles' },
      { '<leader>ft', '<cmd>Rg<cr>', desc = 'Find text with RipGrep' },
    },
  }
}
