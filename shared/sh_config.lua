Config = {}

Config.Debug = true -- ENABLE CONSOLE LOGGING FOR DEBUGGING
Config.RagdollEffect = true -- ENABLE RAGDOLLNG WHILE TSUNAMI WARNING IS ACTIVE
Config.Phone = 'lb' --COMPATIBLE WITH 'qb' / 'road' / 'lb' (qb-phone / roadphone / lb-phone)

-- CUSTOM MESSAGE SETTINGS
Config.CustomSender = 'Los Santos Weather Service' --SENDER OF THE EMAIL (NOT USED FOR lb-phone)
Config.CustomSubject = 'CUSTOM - EMERGENCY ALERT' --TITLE OF THE EMAIL / ALERT
Config.CustomMessage = 'My custom message example' --MESSAGE OF THE EMAIL / ALERT
Config.CustomImage = '/public/html/static/img/icons/app/mail.png' --ONLY USED BY ROADPHONE

-- TEST MESSAGE SETTINGS
Config.TestSender = 'Los Santos Weather Service' --SENDER OF THE EMAIL (NOT USED FOR lb-phone)
Config.TestSubject = 'TEST - EMERGENCY ALERT' --TITLE OF THE EMAIL / ALERT
Config.TestMessage = 'My test message'  --MESSAGE OF THE EMAIL / ALERT
Config.TestImage = '/public/html/static/img/icons/app/mail.png' --ONLY USED BY ROADPHONE

-- 15 MIN AUTOMATIC MESSAGE SETTINGS
Config.Alert15Sender = 'Los Santos Weather Service' --SENDER OF THE EMAIL (NOT USED FOR lb-phone)
Config.Alert15Subject = '15 MIN - EMERGENCY ALERT' --TITLE OF THE EMAIL / ALERT
Config.Alert15Message = 'My 15 minute warning' --MESSAGE OF THE EMAIL / ALERT
Config.Alert15Image = '/public/html/static/img/icons/app/mail.png' --ONLY USED BY ROADPHONE


-- 5 MIN AUTOMATIC MESSAGE SETTINGS
Config.Alert5Sender = 'Los Santos Weather Service' --SENDER OF THE EMAIL (NOT USED FOR lb-phone)
Config.Alert5Subject = '5 MIN - EMERGENCY ALERT' --TITLE OF THE EMAIL / ALERT
Config.Alert5Message = 'My 5 minute warning' --MESSAGE OF THE EMAIL / ALERT
Config.Alert5Image = '/public/html/static/img/icons/app/mail.png' --ONLY USED BY ROADPHONE


-- 1 MIN AUTOMATIC MESSAGE SETTINGS
Config.Alert5Sender = 'Los Santos Weather Service' --SENDER OF THE EMAIL (NOT USED FOR lb-phone)
Config.Alert5Subject = '1 MIN - EMERGENCY ALERT' --TITLE OF THE EMAIL / ALERT
Config.Alert5Message = 'My 1 minute warning' --MESSAGE OF THE EMAIL / ALERT
Config.Alert5Image = '/public/html/static/img/icons/app/mail.png' --ONLY USED BY ROADPHONE


-- AUDIO CONFIG - Add .ogg audio files to (interact-sound/client/html/sounds)
Config.CustomAlertSound = 'Alert' --CUSTOM ALERT SOUND
Config.TestAlertSound = 'Alert' --TEST ALERT SOUND
Config.Alert15Sound = 'Alert' --15 MIN ALERT SOUND
Config.Alert5Sound = 'Alert' --5 MIN ALERT SOUND
Config.Alert1Sound = 'raidsiren' --1 MIN ALERT SOUND

Config.SoundVolume = 0.5