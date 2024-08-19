RegisterNetEvent("SetCarColorEvent")
lib.addCommand(Config.CommandName, {
    help = 'Change Car Color',
    restricted = Config.GroupCommand
}, function(source, args, raw)
  --  print(GetPlayerName(source))
    local PlayerPed = GetPlayerPed(source) 
    local Vehicle = GetVehiclePedIsIn(PlayerPed,false)
    if Vehicle and DoesEntityExist(Vehicle) then
        TriggerClientEvent("SetCarColorEvent", source, Vehicle)

    end
end)


AddEventHandler('SetCarColorEvent', function(carsid,color)
    local PlayerPed = GetPlayerPed(source) 
    local Vehicle = GetVehiclePedIsIn(PlayerPed,false) == carsid
    if Vehicle then 
    local r, g, b = lib.math.hextorgb(color)

    SetVehicleCustomPrimaryColour(carsid,  r, g, b)
    SetVehicleCustomSecondaryColour(carsid,  r, g, b)

        
        
       

    end

  end)