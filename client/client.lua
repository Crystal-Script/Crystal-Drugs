ESX = exports["es_extended"]:getSharedObject()

-- gridsystem --

Citizen.CreateThread(function()
	if Config.blipmaria then
		Citizen.Wait(2000)
		for k,v in ipairs(Config.markermaria)do
			local blip = AddBlipForCoord(v.x, v.y, v.z)
			SetBlipSprite (blip, v.blip)
			SetBlipDisplay(blip, 4)
			SetBlipScale  (blip, v.blipScale)
			SetBlipColour (blip, v.blipColor)
			SetBlipAsShortRange(blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(v.blipText)
			EndTextCommandSetBlipName(blip)
		end
	end
end)

Citizen.CreateThread(function()
	if Config.blipprocesso then
		Citizen.Wait(2000)
		for k,v in ipairs(Config.processomaria)do
			local blip = AddBlipForCoord(v.x, v.y, v.z)
			SetBlipSprite (blip, v.blip)
			SetBlipDisplay(blip, 4)
			SetBlipScale  (blip, v.blipScale)
			SetBlipColour (blip, v.blipColor)
			SetBlipAsShortRange(blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(v.blipText)
			EndTextCommandSetBlipName(blip)
		end
	end
end)


Citizen.CreateThread(function()
    Wait(250)
    for k,v in pairs(Config.markermaria) do
		TriggerEvent('gridsystem:registerMarker', {
			name = 'MARIJUANA'..k,
			pos = vector3(v.x,v.y,v.z),
			size = vector3(0.8, 0.8, 0.8),
			scale = vector3(0.8, 0.8, 0.8),
			type = 9,
			control = 'E',
			rotate = 0.0,
			rotate2 = 0.0,
			shouldBob = false,
			shouldRotate = true,
			color = { r = 255, g = 255, b = 255 },
			trasparent = 255,
			markertipo = 'droga',
			msg = 'MARIJUANA',
			action = function()
                exports['progressBars']:startUI(3500, "Raccogliendo")
                Citizen.CreateThread(function()
                    RequestAnimDict('mini@repair')
                
                    while not HasAnimDictLoaded('mini@repair') do
                        Citizen.Wait(100)
                    end
                
                    local ped = PlayerPedId()
                
                    TaskPlayAnim(ped, 'mini@repair', 'fixing_a_ped', 4.0, -4.0, -1, 0, 0, false, false, false)
                end)
                Wait(3500)
                local ped = PlayerPedId()
				Wait(200)
                TriggerServerEvent("weed:money")
				Wait(200)
                ClearPedTasks(ped)
			end
		})
	end
end)

--------------------------

Citizen.CreateThread(function()
    Wait(250)
    for k,v in pairs(Config.processomaria) do
		TriggerEvent('gridsystem:registerMarker', {
			name = 'MARIJUANAprocesso'..k,
			pos = vector3(v.x,v.y,v.z),
			size = vector3(0.8, 0.8, 0.8),
			scale = vector3(0.8, 0.8, 0.8),
			type = 9,
			control = 'E',
			rotate = 0.0,
			rotate2 = 0.0,
			shouldBob = false,
			shouldRotate = true,
			color = { r = 255, g = 255, b = 255 },
			trasparent = 255,
			markertipo = 'droga',
			msg = 'MARIJUANA',
			action = function()
                menu()
			end
		})
	end
end)

--------------------------------------------

function menu()
    ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'remove_cannabis_menu', {
        title = 'Processa Cannabis',
    },
    function(data, menu)
        local amount = tonumber(data.value)
        local halfAmount = math.floor(amount / 2)
        if amount and amount > 1 then
            TriggerServerEvent('add:weed', amount)
            menu.close()
        else
            ESX.ShowNotification("Devi inserire un numero valido.")
        end
    end,
    function(data, menu)
        menu.close()
    end)
end




--- coca- -----


for _, coord in pairs(Config.coords) do
    local modelHash = -1683281785
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Wait(500)
    end
    local object = CreateObject(modelHash, coord.x, coord.y, coord.z, false, false, false)
    FreezeEntityPosition(object, true)
end

---- blips -----

Citizen.CreateThread(function()
	if Config.blipcoca then
		Citizen.Wait(2000)
		for k,v in ipairs(Config.markercoca)do
			local blip = AddBlipForCoord(v.x, v.y, v.z)
			SetBlipSprite (blip, v.blip)
			SetBlipDisplay(blip, 4)
			SetBlipScale  (blip, v.blipScale)
			SetBlipColour (blip, v.blipColor)
			SetBlipAsShortRange(blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(v.blipText)
			EndTextCommandSetBlipName(blip)
		end
	end
end)

Citizen.CreateThread(function()
	if Config.blipprocessococa then
		Citizen.Wait(2000)
		for k,v in ipairs(Config.processococa)do
			local blip = AddBlipForCoord(v.x, v.y, v.z)
			SetBlipSprite (blip, v.blip)
			SetBlipDisplay(blip, 4)
			SetBlipScale  (blip, v.blipScale)
			SetBlipColour (blip, v.blipColor)
			SetBlipAsShortRange(blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(v.blipText)
			EndTextCommandSetBlipName(blip)
		end
	end
end)

-------------------------------------------------------------------

Citizen.CreateThread(function()
    Wait(250)
    for k,v in pairs(Config.markercoca) do
		TriggerEvent('gridsystem:registerMarker', {
			name = 'COCAINA'..k,
			pos = vector3(v.x,v.y,v.z),
			size = vector3(0.8, 0.8, 0.8),
			scale = vector3(0.8, 0.8, 0.8),
			type = 9,
			control = 'E',
			rotate = 0.0,
			rotate2 = 0.0,
			shouldBob = false,
			shouldRotate = true,
			color = { r = 255, g = 255, b = 255 },
			trasparent = 255,
			markertipo = 'droga',
			msg = 'COCAINA',
			action = function()
                exports['progressBars']:startUI(3500, "Raccogliendo")
                Citizen.CreateThread(function()
                    RequestAnimDict('mini@repair')
                
                    while not HasAnimDictLoaded('mini@repair') do
                        Citizen.Wait(100)
                    end
                
                    local ped = PlayerPedId()
                
                    TaskPlayAnim(ped, 'mini@repair', 'fixing_a_ped', 4.0, -4.0, -1, 0, 0, false, false, false)
                end)
                Wait(3500)
                local ped = PlayerPedId() 
                TriggerServerEvent("coca:money")
                ClearPedTasks(ped)
			end
		})
	end
end)

-------------------------------------------------------------------

Citizen.CreateThread(function()
    Wait(250)
    for k,v in pairs(Config.processococa) do
		TriggerEvent('gridsystem:registerMarker', {
			name = 'COCAINAPROCESSO'..k,
			pos = vector3(v.x,v.y,v.z),
			size = vector3(0.8, 0.8, 0.8),
			scale = vector3(0.8, 0.8, 0.8),
			type = 9,
			control = 'E',
			rotate = 0.0,
			rotate2 = 0.0,
			shouldBob = false,
			shouldRotate = true,
			color = { r = 255, g = 255, b = 255 },
			trasparent = 255,
			markertipo = 'droga',
			msg = 'COCAINA',
			action = function()
                menu1()
			end
		})
	end
end)

-------------------------------------------------------------------

function menu1()
    ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'remove_cannabis_menu', {
        title = 'Rimuovi Foglie di Cocaina',
    },
    function(data, menu)
        local amount = tonumber(data.value)
        local halfAmount = math.floor(amount / 2)
        if amount and amount > 1 then
            TriggerServerEvent('add:coca', amount)
            menu.close()
        else
            ESX.ShowNotification("Devi inserire un numero valido.")
        end
    end,
    function(data, menu)
        menu.close()
    end)
end