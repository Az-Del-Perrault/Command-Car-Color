RegisterNetEvent("SetCarColorEvent")

-- The event handler function follows after registering the event first.
AddEventHandler("SetCarColorEvent", function(carsid)
    
   

   
        local input = lib.inputDialog('Change Color Car', {
           {type = 'color', label = 'Colour input', required = true},
          })
          if input and input[1] then
            TriggerServerEvent("SetCarColorEvent",carsid , input[1]  )

          end

          

end)
