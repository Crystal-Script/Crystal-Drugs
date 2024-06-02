ESX = exports["es_extended"]:getSharedObject()

--weed--

RegisterNetEvent("weed:money")
AddEventHandler("weed:money", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('cannabis', 1)
end)


RegisterServerEvent('add:weed')
AddEventHandler('add:weed', function(amount)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        local cannabisItem = xPlayer.getInventoryItem('cannabis')

        if cannabisItem then
            if cannabisItem.count >= amount then
                xPlayer.removeInventoryItem('cannabis', amount)

                xPlayer.addInventoryItem('marijuana', amount / 2)

                TriggerClientEvent('ESX:showNotification', source, "Hai processato " .. amount .. " cannabis in marijuana.")
            else
                TriggerClientEvent('ESX:showNotification', source, "Non hai abbastanza cannabis per processarla.")
            end
        else
            TriggerClientEvent('ESX:showNotification', source, "Non possiedi l'oggetto necessario per processare la cannabis.")
        end
    end
end)

-- fine weed --

--coca--

RegisterNetEvent("coca:money")
AddEventHandler("coca:money", function(amount)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('coca_leaf', 1)
end)



RegisterServerEvent('add:coca')
AddEventHandler('add:coca', function(amount)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        local cannabisItem = xPlayer.getInventoryItem('coca_leaf')

        if cannabisItem then
            if cannabisItem.count >= amount then
                xPlayer.removeInventoryItem('coca_leaf', amount)

                xPlayer.addInventoryItem('coca', amount / 2)

                TriggerClientEvent('esx:showNotification', source, "Hai processato " .. amount .. " foglie di cocaina in cocaina.")
            else
                TriggerClientEvent('esx:showNotification', source, "Non hai abbastanza foglie di cocaina per processarla.")
            end
        else
            TriggerClientEvent('esx:showNotification', source, "Non possiedi l'oggetto necessario per processare le foglie di cocaina.")
        end
    end
end)