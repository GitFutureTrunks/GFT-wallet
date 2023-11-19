Config = {}

Config.Utility = {
    Framework = "NEW", -- "NEW" - New QBCore | "OLD" - Old QBCore
    CoreName = "qb-core", -- Your core name
    OpenInventory = "inventory:server:OpenInventory",
    SetStash = "inventory:client:SetCurrentStash",
    LoadOutfit = "qb-clothing:client:loadOutfit",
    StashID = true,
    StashNames = {
        Wallet = "Wallet",   -- Name of stash
    },
}

Language = {
    OpenWallet = "Opening wallet...",
    Dead = "You cannot access the wallet while dead.",
    Water = "You cannot access the wallet in the water.",
}

function Notify(msg)
    QBCore.Functions.Notify(msg)
end
