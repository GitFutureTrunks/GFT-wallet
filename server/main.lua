if Config.Utility.Framework == "NEW" then
    QBCore = exports[Config.Utility.CoreName]:GetCoreObject()
elseif Config.Utility.Framework == "OLD" then 
    QBCore = nil
    TriggerEvent(Config.Utility.CoreName, function(obj) QBCore = obj end) 
else
    print("The Framework '", Config.Utility.Framework, "' is not support, please change in config.lua")
end

QBCore.Functions.CreateUseableItem("wallet", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('gft-wallet:Client:wallet', source, item.info.walletid)
end)
