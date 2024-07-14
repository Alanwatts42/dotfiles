require('kommentary.config')


vim.api.nvim_set_keymap("n", "gcc", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("n", "gc", "<Plug>kommentary_motion_default", {})
vim.api.nvim_set_keymap("v", "gc", "<Plug>kommentary_visual_default<C-c>", {})

vim.cmd('vmap <leader>c <Plug>ToggleCommaround')

vim.cmd('nnoremap " :NeoTree reveal<cr>')
vim.cmd('nnoremap <a-/> :NeoTree toggle current reveal_force_cwd<cr>')

