local QBCore = exports['qb-core']:GetCoreObject()

--[FUNCTIONS]--

-- DEBUG FUNCTIONS
if Config.Debug == true then
    print('[EAS - DEBUG]: Script loaded with debugging enabled')

    if Config.Phone == 'qb' then
        print('[EAS - DEBUG]: Using qb-phone notifications')
    elseif Config.Phone == 'road' then
        print('[EAS - DEBUG]: Using roadphone notifications')
    elseif Config.Phone == 'lb' then
        print('[EAS - DEBUG]: Using lb-phone notifications')
    end

    if Config.RagdollEffect == true then
        print('[EAS - DEBUG]: Ragdoll effects enabled')
    else
        print('[EAS - DEBUG]: Ragdoll effects disabled')
    end
end

-- TSUNAMI AFTERSHOCK EFFECT
local Player = PlayerPedId()

function TsunamiEffect()
    local startStamina = 30
    while startStamina > 0 do
        Wait(1000)
        startStamina = startStamina - 1
        RestorePlayerStamina(Player, 1.0)
        if math.random(1, 100) < 9 then
            if not IsPedRagdoll(Player) and IsPedOnFoot(Player) and not IsPedSwimming(Player) then
                ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.06)
                SetPedToRagdollWithFall(Player, 0, 0, 1, GetEntityForwardVector(Player), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
            end
        end
    end
    startStamina = 0
end

--[EVENTS]--

-- CUSTOM ALERT
RegisterNetEvent('vl_eas:cl:sendAlertCustom', function()

    if Config.Debug == true then
        print('[EAS - DEBUG]: Custom Alert triggered')
    end

    TriggerEvent('InteractSound_CL:PlayOnOne', Config.CustomAlertSound, Config.SoundVolume)

    if Config.Debug == true then
        print('[EAS - DEBUG]: Playing sound '.. Config.CustomAlertSound ..' at '.. Config.SoundVolume ..' volume.')
    end

    Wait(math.random(7000, 13000))

    if Config.Debug == true then
        print('[EAS - DEBUG]: Sending Alert to all players')
    end

    if Config.Phone == 'qb' then
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Config.CustomSender,
            subject = Config.CustomSubject,
            message = Config.CustomMessage,
            button = {}
        })
    elseif Config.Phone == 'road' then
        TriggerServerEvent('roadphone:receiveMail', {
            sender = Config.CustomSender,
            subject = Config.CustomSubject,
            message = Config.CustomMessage,
            image = Config.CustomImage
        })
    elseif Config.Phone == 'lb' then
        TriggerServerEvent('vl_eas:sv:sendAlertCustom', source)
    end

end)

-- MANUAL TEST ALERT
RegisterNetEvent('vl_eas:cl:sendAlertTest', function()

    if Config.Debug == true then
        print('[EAS - DEBUG]: Test Alert triggered')
    end

    TriggerEvent('InteractSound_CL:PlayOnOne', Config.TestAlertSound, Config.SoundVolume)

    if Config.Debug == true then
        print('[EAS - DEBUG]: Playing sound '.. Config.TestAlertSound ..' at '.. Config.SoundVolume ..' volume.')
    end

    Wait(math.random(7000, 13000))

    if Config.Debug == true then
        print('[EAS - DEBUG]: Sending Alert to all players')
    end

    if Config.Phone == 'qb' then
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Config.TestSender,
            subject = Config.TestSubject,
            message = Config.TestMessage,
            button = {}
        })
    elseif Config.Phone == 'road' then
        TriggerServerEvent('roadphone:receiveMail', {
            sender = Config.TestSender,
            subject = Config.TestSubject,
            message = Config.TestMessage,
            image = Config.TestImage
        })
    elseif Config.Phone == 'lb' then
        TriggerServerEvent('vl_eas:sv:sendAlertTest', source)
    end

end)

-- AUTOMATIC 15 MIN ALERT
RegisterNetEvent('vl_eas:cl:sendAlertAuto15', function()

    if Config.Debug == true then
        print('[EAS - DEBUG]: 15 Min automatic alert triggered')
    end

    TriggerEvent('InteractSound_CL:PlayOnOne', Config.Alert15Sound, Config.SoundVolume)

    if Config.Debug == true then
        print('[EAS - DEBUG]: Playing sound '.. Config.Alert15Sound ..' at '.. Config.SoundVolume ..' volume.')
    end

    Wait(math.random(7000, 13000))

    if Config.Debug == true then
        print('[EAS - DEBUG]: Sending Alert to all players')
    end

    if Config.Phone == 'qb' then
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Config.Alert15Sender,
            subject = Config.Alert15Subject,
            message = Config.Alert15Message,
            button = {}
        })
    elseif Config.Phone == 'road' then
        TriggerServerEvent('roadphone:receiveMail', {
            sender = Config.Alert15Sender,
            subject = Config.Alert15Subject,
            message = Config.Alert15Message,
            image = Config.Alert15Image
        })
    elseif Config.Phone == 'lb' then
        TriggerServerEvent('vl_eas:sv:sendAlert15', source)
    end

    Wait(math.random(15000, 25000))
    TriggerServerEvent('qb-weathersync:server:setWeather', 'THUNDER')
    Wait(math.random(13000, 23000))

    if Config.RagdollEffect == true then
        TsunamiEffect()
    end

end)

-- AUTOMATIC 5 MIN ALERT
RegisterNetEvent('vl_eas:cl:sendAlertAuto5', function()

    if Config.Debug == true then
        print('[EAS - DEBUG]: 5 Min automatic alert triggered')
    end

    TriggerEvent('InteractSound_CL:PlayOnOne', Config.Alert5Sound, Config.SoundVolume)

    if Config.Debug == true then
        print('[EAS - DEBUG]: Playing sound '.. Config.Alert5Sound ..' at '.. Config.SoundVolume ..' volume.')
    end

    Wait(math.random(7000, 13000))

    if Config.Debug == true then
        print('[EAS - DEBUG]: Sending Alert to all players')
    end

    if Config.Phone == 'qb' then
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Config.Alert5Sender,
            subject = Config.Alert5Subject,
            message = Config.Alert5Message,
            button = {}
        })
    elseif Config.Phone == 'road' then
        TriggerServerEvent('roadphone:receiveMail', {
            sender = Config.Alert5Sender,
            subject = Config.Alert5Subject,
            message = Config.Alert5Message,
            image = Config.Alert5Image
        })
    elseif Config.Phone == 'lb' then
        TriggerServerEvent('vl_eas:sv:sendAlert5', source)
    end

    Wait(math.random(15000, 25000))
    TriggerServerEvent('qb-weathersync:server:setWeather', 'THUNDER')
    Wait(math.random(13000, 23000))

    if Config.RagdollEffect == true then
        TsunamiEffect()
    end

end)

-- AUTOMATIC 1 MIN ALERT
RegisterNetEvent('vl_eas:cl:sendAlertAuto1', function()

    if Config.Debug == true then
        print('[EAS - DEBUG]: 1 Min automatic alert triggered')
    end

    TriggerEvent('InteractSound_CL:PlayOnOne', Config.Alert1Sound, Config.AudioVolume)

    if Config.Debug == true then
        print('[EAS - DEBUG]: Playing sound '.. Config.Alert1Sound ..' at '.. Config.SoundVolume ..' volume.')
    end

    Wait(math.random(7000, 13000))

    if Config.Debug == true then
        print('[EAS - DEBUG]: Sending Alert to all players')
    end

    if Config.Phone == 'qb' then
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Config.Alert1Sender,
            subject = Config.Alert1Subject,
            message = Config.Alert1Message,
            button = {}
        })
    elseif Config.Phone == 'road' then
        TriggerServerEvent('roadphone:receiveMail', {
            sender = Config.Alert1Sender,
            subject = Config.Alert1Subject,
            message = Config.Alert1Message,
            image = Config.Alert1Image
        })
    elseif Config.Phone == 'lb' then
        TriggerServerEvent('vl_eas:sv:sendAlert1', source)
    end

    Wait(math.random(13000, 23000))

    if Config.RagdollEffect == true then
        TsunamiEffect()
    end

end)