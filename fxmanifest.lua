fx_version 'adamant'
game 'gta5'
lua54 'on'

author 'Lama Development'
description 'Interact UI'
version '1.0.0'

ui_page 'ui/index.html'

client_scripts {
    'client/main.lua'
}

files {
    'ui/index.html',
    'ui/assets/script.js',
    'ui/assets/style.css'
}

exports {
    'showUI',
    'hideUI'
}