NDCore = exports["ND_Core"]:GetCoreObject()
if Config.UseMoney then
	RegisterServerEvent('fuel:pay')
	AddEventHandler('fuel:pay', function(price)
		local player = source
		NDCore.Functions.DeductMoney(math.floor(price), player, "bank")
		TriggerClientEvent("chat:addMessage", player, {
			color = {0, 255, 0},
			args = {"Success", "Paid: $" .. string.format("%.2f", price) .. " for gas."}
		})
	end)
end

