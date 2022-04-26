RegisterNetEvent("dotykmilosci:toggleNUI")
AddEventHandler("dotykmilosci:toggleNUI", function(display)
    SendNUIMessage({
    type = "ui",
    display = display
  })
end)
