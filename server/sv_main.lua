local QBCore = exports['qb-core']:GetCoreObject()

--[COMMANDS]--

-- CUSTOM ALERT
QBCore.Commands.Add('eascustom', 'Send Custom Emergency Alert System message to everyone', {}, true, function(source, args)
    TriggerClientEvent('vl_eas:cl:sendAlertCustom', -1)
end, 'god')

-- TTEST ALERT
QBCore.Commands.Add('eastest', 'Send Emergency Alert System test message to everyone', {}, true, function(source, args)
    TriggerClientEvent('vl_eas:cl:sendAlertTest', -1)
end, 'god')


--[EVENT HANDLERS]--

-- 15 MIN REMINDER
AddEventHandler('txadmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 900 then
        TriggerClientEvent('vl_eas:cl:sendAlertAuto15', -1)
    end
end)

-- 5 MIN REMINDER
AddEventHandler('txadmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 600 then
        TriggerClientEvent('vl_eas:cl:sendAlertAuto5', -1)
    end
end)

-- 1 MIN REMINDER
AddEventHandler('txadmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 60 then
        TriggerClientEvent('vl_eas:cl:sendAlertAuto1', -1)
    end
end)


--[EVENTS]--

-- 15 MIN ALERT
RegisterNetEvent('vl_eas:sv:sendAlertTest', function()
    exports["lb-phone"]:EmergencyNotification(source, {
        title = Config.TestSubject,
        content = Config.TestMessage,
        icon = "warning", -- the icon of the notification (optional), "warning" or "danger"
    })
end)

RegisterNetEvent('vl_eas:sv:sendAlertCustom', function()
    exports["lb-phone"]:EmergencyNotification(source, {
        title = Config.CustomSubject,
        content = Config.CustomMessage,
        icon = "warning", -- the icon of the notification (optional), "warning" or "danger"
    })
end)

RegisterNetEvent('vl_eas:sv:sendAlert15', function()
    exports["lb-phone"]:EmergencyNotification(source, {
        title = Config.Alert15Subject,
        content = Config.Alert15Message,
        icon = "warning", -- the icon of the notification (optional), "warning" or "danger"
    })
end)

-- 5 MIN ALERT
RegisterNetEvent('vl_eas:sv:sendAlert5', function()
    exports["lb-phone"]:EmergencyNotification(source, {
        title = Config.Alert5Subject,
        content = Config.Alert5Message,
        icon = "warning", -- the icon of the notification (optional), "warning" or "danger"
    })
end)

-- 1 MIN ALERT
RegisterNetEvent('vl_eas:sv:sendAlert1', function()
    exports["lb-phone"]:EmergencyNotification(source, {
        title = Config.Alert1Subject,
        content = Config.Alert1Message,
        icon = "warning", -- the icon of the notification (optional), "warning" or "danger"
    })
end)