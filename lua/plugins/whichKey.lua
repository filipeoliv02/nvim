local wk = require('whichkey_setup')

local keymap = {
    f = {
        name = '+Find',
        b = {'<Cmd>Telescope buffers<CR>', 'buffer'},
        f = {'<Cmd>Telescope find_files<CR>', 'file'},
   	r = {'<Cmd>Rg<CR>', 'Search on Files'},
    },
    v = {'<Cmd>vsplit<CR>', 'Vertical Split'}
}

wk.register_keymap('leader', keymap)
