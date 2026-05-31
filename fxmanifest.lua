fx_version 'cerulean'
game 'gta5'

name 'vl_eas'
description 'Emergency Alert System utilizing phone emails / notifications'
repository 'https://github.com/MriKNG/vl_eas'

author 'KNG'
version '2.0.0'

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
    --'qb-core',
    'qbx_core',
--    'qb-phone',
--    'roadphone',
    'lb-phone',
}

lua54 'yes'