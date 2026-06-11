-- import loamfield files
require('loamfield.options')
require('loamfield.keymaps') -- key-maps must be before lazy (plugin manager), to ensure the leader key is set
require('loamfield.lazy_init')
require('loamfield.lsp') -- must be after lazy (plugin manager) loads lsp plugins
require('loamfield.experimental') -- optional experimental configuration
require('loamfield.filetypes')
