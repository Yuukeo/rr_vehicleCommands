
function notify()
	
end


RegisterCommand("fix", function(source, args)
	local vehicle = GetVehiclePedIsUsing(PlayerPedId(-1), false)
	if IsPedInAnyVehicle(PlayerPedId(-1), false) then
		SetVehicleBodyHealth(vehicle, 1000)
		SetVehicleEngineOn(vehicle, true, true)
		SetVehicleFixed(vehicle)
		Citizen.Wait(200)
	else

	end
 end)

 RegisterCommand("stopengine", function(source, args)
	local vehicle = GetVehiclePedIsUsing(PlayerPedId(-1), false)
	if IsPedInAnyVehicle(PlayerPedId(-1), false) then
		SetVehicleEngineOn(vehicle, false, true, true)
		Citizen.Wait(200)
	else
		ESX.ShowNotification("Du er ikke i et kjøretøy")
 	end
 end)


 RegisterCommand("startengine", function(source, args)
	local vehicle = GetVehiclePedIsUsing(PlayerPedId(-1), false)
	if IsPedInAnyVehicle(PlayerPedId(-1), false) then
		SetVehicleEngineOn(vehicle, true, false, false)
		Citizen.Wait(200)
	else
		ESX.ShowNotification("Du er ikke i et kjøretøy")
 	end
 end)
