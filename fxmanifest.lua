fx_version 'cerulean'
game 'gta5'

name 'vl_tsunami'
description 'Emergency Alert System utilizing phone emails / notifications'
repository ''
author 'KNG'
version '1.0'

shared_scripts {
    'shared/*.lua'
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

dependencies {
    'interact-sound', --NEEDED FOR PLAYING ALERT SOUNDS
    'qb-core',
--    'qb-phone',
--    'roadphone',
    'lb-phone',
}

lua54 'yes'