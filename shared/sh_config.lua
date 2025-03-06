Config = {}

Config.Debug = false -- ENABLE CONSOLE LOGGING FOR DEBUGGING
Config.RagdollEffect = true -- ENABLE RAGDOLLNG WHILE TSUNAMI WARNING IS ACTIVE
Config.Phone = 'lb' --COMPATIBLE WITH 'qb' / 'road' / 'lb' (qb-phone / roadphone / lb-phone)

-- CUSTOM MESSAGE SETTINGS
Config.CustomSender = 'Los Santos Weather Service' --SENDER OF THE EMAIL (NOT USED FOR lb-phone)
Config.CustomSubject = 'EMERGENCY ALERT - CUSTOM' --TITLE OF THE EMAIL / ALERT
Config.CustomMessage = 'My custom message example' --MESSAGE OF THE EMAIL / ALERT
Config.CustomImage = '/public/html/static/img/icons/app/mail.png' --ONLY USED BY ROADPHONE

-- TEST MESSAGE SETTINGS
Config.TestSender = 'Los Santos Weather Service' --SENDER OF THE EMAIL (NOT USED FOR lb-phone)
Config.TestSubject = 'EMERGENCY ALERT - TEST' --TITLE OF THE EMAIL / ALERT
Config.TestMessage = 'This is a test of the emergency alert system. No action is needed.'  --MESSAGE OF THE EMAIL / ALERT
Config.TestImage = '/public/html/static/img/icons/app/mail.png' --ONLY USED BY ROADPHONE

-- 15 MIN AUTOMATIC MESSAGE SETTINGS
Config.Alert15Sender = 'Los Santos Weather Service' --SENDER OF THE EMAIL (NOT USED FOR lb-phone)
Config.Alert15Subject = 'EMERGENCY ALERT - 15 MIN' --TITLE OF THE EMAIL / ALERT
Config.Alert15Message = 'Tsunami warning issued for San Andreas. Citizens are advised to evacuate.' --MESSAGE OF THE EMAIL / ALERT
Config.Alert15Image = '/public/html/static/img/icons/app/mail.png' --ONLY USED BY ROADPHONE


-- 5 MIN AUTOMATIC MESSAGE SETTINGS
Config.Alert5Sender = 'Los Santos Weather Service' --SENDER OF THE EMAIL (NOT USED FOR lb-phone)
Config.Alert5Subject = 'EMERGENCY ALERT - 5 MIN' --TITLE OF THE EMAIL / ALERT
Config.Alert5Message = 'Tsunami warning issued for San Andreas. Citizens are advised to evacuate.' --MESSAGE OF THE EMAIL / ALERT
Config.Alert5Image = '/public/html/static/img/icons/app/mail.png' --ONLY USED BY ROADPHONE


-- 1 MIN AUTOMATIC MESSAGE SETTINGS
Config.Alert1Sender = 'Los Santos Weather Service' --SENDER OF THE EMAIL (NOT USED FOR lb-phone)
Config.Alert1Subject = 'EMERGENCY ALERT - 1 MIN' --TITLE OF THE EMAIL / ALERT
Config.Alert1Message = 'Tsunami warning issued for San Andreas. Citizens are advised to evacuate.' --MESSAGE OF THE EMAIL / ALERT
Config.Alert1Image = '/public/html/static/img/icons/app/mail.png' --ONLY USED BY ROADPHONE


-- AUDIO CONFIG - Add .ogg audio files to (interact-sound/client/html/sounds)
Config.CustomAlertSound = 'Alert' --CUSTOM ALERT SOUND
Config.TestAlertSound = 'AlertTest' --TEST ALERT SOUND
Config.Alert15Sound = 'Alert15' --15 MIN ALERT SOUND
Config.Alert5Sound = 'Alert5' --5 MIN ALERT SOUND
Config.Alert1Sound = 'raidsiren' --1 MIN ALERT SOUND

Config.SoundVolume = 1.3