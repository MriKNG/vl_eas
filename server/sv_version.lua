local resourceName = GetCurrentResourceName()
local currentVersion = GetResourceMetadata(resourceName, 'version', 0)

local githubUser = 'MriKNG'
local githubRepo = 'vl_eas'

local latestVersion = nil
local updateUrl = nil

local function trimVersion(v)
    if not v then return nil end
    return tostring(v):gsub('^v', ''):gsub('%s+', '')
end

local function isOutdated(current, latest)
    return trimVersion(current) ~= trimVersion(latest)
end

local function checkVersion()
    local url = ('https://api.github.com/repos/%s/%s/releases/latest'):format(githubUser, githubRepo)

    PerformHttpRequest(url, function(status, body)
        if status ~= 200 or not body then
            print(('[%s] Version check failed. HTTP: %s'):format(resourceName, status))
            return
        end

        local data = json.decode(body)
        if not data or not data.tag_name then return end

        latestVersion = data.tag_name
        updateUrl = data.html_url

        if isOutdated(currentVersion, latestVersion) then
            print('^1----------------------------------------------------------------------------------')
            print(('^1[%s]: OUTDATED VERSION^7'):format(resourceName))
            print(('^3Current:^7 %s'):format(currentVersion))
            print(('^2Latest:^7 %s'):format(latestVersion))
            print(('^5Update:^7 %s'):format(updateUrl))
            print('^1----------------------------------------------------------------------------------')
        else
            print(('^2[%s]: Version is up to date: %s^7'):format(resourceName, currentVersion))
        end
    end, 'GET', '', {
        ['User-Agent'] = resourceName
    })
end

AddEventHandler('onResourceStart', function(res)
    if res ~= resourceName then return end
    checkVersion()
end)

AddEventHandler('playerJoining', function()
    local src = source

    if latestVersion and isOutdated(currentVersion, latestVersion) then
        TriggerClientEvent('MriKNG:versionWarning', src, currentVersion, latestVersion, updateUrl)
    end
end)