-- import matt-starr files
require('matt-starr.options')
require('matt-starr.keymaps') -- key-maps must be before lazy to ensure the leader key is set
require('matt-starr.lazy_init')
require('matt-starr.lsp') -- must be after lazy loads lsp plugins
require('matt-starr.experimental') -- optional experimental configuration
require('matt-starr.filetypes')
