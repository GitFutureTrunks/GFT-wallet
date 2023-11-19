if Config.Utility.Framework == "NEW" then
    QBCore = exports[Config.Utility.CoreName]:GetCoreObject()
elseif Config.Utility.Framework == "OLD" then 
        local QBCore = nil
        Citizen.CreateThread(function()
        while QBCore == nil do 
            TriggerEvent(Config.Utility.CoreName, function(obj)QBCore = obj end) 
            Citizen.Wait(200) 
        end 
    end) 
else
    print("The Framework '", Config.Utility.Framework, "' is not support, please change in config.lua")
end

local citizenid = nil
RegisterNetEvent('gft-wallet:Client:wallet', function(walletid)
    local playerPed = PlayerPedId()
    if IsEntityDead(playerPed) then return Notify(Language.Dead, "error") end
    if IsPedSwimming(playerPed) then return Notify(Language.Water, "error") end
    local citizenid = QBCore.Functions.GetPlayerData().citizenid
    if Config.Utility.StashID then
        TriggerServerEvent(Config.Utility.OpenInventory, "stash", Config.Utility.StashNames.Wallet..'_'..walletid, {maxweight = 500, slots = 4})
        TriggerEvent(Config.Utility.SetStash, Config.Utility.StashNames.Wallet..'_'..walletid)
    end
end)
