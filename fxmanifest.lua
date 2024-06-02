shared_script '@es_extended/imports.lua'
fx_version 'adamant'
game 'gta5'
lua54 'yes'

client_script {
    'client/client.lua'
}

server_script {
    'server/server.lua',
    '@mysql-async/lib/MySQL.lua'
}

shared_scripts {
    'config.lua',
    '@es_extended/imports.lua',
	'@ox_lib/init.lua',
}