-- This resource is part of the default Cfx.re asset pack (cfx-server-data)
-- Altering or recreating for local use only is strongly discouraged.

version '1.0.0'
author 'Agentheo85'
description 'A command to change color car'



-- compatibility wrapper
fx_version 'adamant'
game 'gta5'
lua54 "yes"


shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_script 'client.lua'

server_script 'server.lua'

