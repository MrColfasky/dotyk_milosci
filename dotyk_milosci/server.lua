local allowed =
{
    "steam:steamhex1",
    "steam:steamhex2",
    "steam:steamhex3",
    "steam:steamhex4"
}
--You can get your steamhex from http://www.vacbanned.com/ and entering your steam id then copying Steam3 ID (64bit) HEX and not DEC
RegisterCommand("dotykmilosci", function(source, args)
    -- Usage: /dotykmilosci <ID>
    local identifier = GetPlayerIdentifiers(source)[1]
    if checkAllowed(identifier) then
      if args[1] == nil then
        print("^1Error, you must provide a player ID.")
	return
      end
      local target = args[1]
      TriggerClientEvent("dotykmilosci:toggleNUI", target, true)
    end
end)

RegisterCommand("dotykmiloscioff", function(source, args)
    -- Usage: /dotykmilosci <ID>
    local identifier = GetPlayerIdentifiers(source)[1]
    if checkAllowed(identifier) then
        if args[1] == nil then
            print("^1Error, you must provide a player ID.")
	    return
        end

        local target = args[1]
        TriggerClientEvent("dotykmilosci:toggleNUI", target, false)
    end
end)

function checkAllowed(id)
    for k, v in pairs(allowed) do
        if id == v then
	    return true
        end
    end
    return false
end
