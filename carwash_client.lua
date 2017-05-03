	--DO-NOT-EDIT-BELLOW-THIS-LINE--
Citizen.CreateThread(function ()
	Citizen.Wait(0)
end)

function DrawSpecialText(m_text, showtime)
	SetTextEntry_2("STRING")
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		if IsPedSittingInAnyVehicle(GetPlayerPed(-1)) then 
			SetVehicleDirtLevel(GetVehiclePedIsUsing(GetPlayerPed(-1)))
	SetVehicleUndriveable(GetVehiclePedIsUsing(GetPlayerPed(-1)), false)
	msg = "Vehicle ~y~Clean~s~ for free!"
	DrawSpecialText(msg, 5000)
	Wait(5000)
end)