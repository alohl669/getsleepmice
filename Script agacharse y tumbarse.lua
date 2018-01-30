local agacharse	= false
local tumbarse = false
local tespera = integer

function OnEvent(event, arg)
	OutputLogMessage("event = %s, arg = %s\n", event, arg); 

	if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then 
		agacharse = true
		tumbarse = false
		tespera = 1
		PressAndReleaseKey("c")
		while agacharse == true and tespera < 10 do
			Sleep(100)
			tespera = tespera + 1
		end

	elseif (event == "MOUSE_BUTTON_RELEASED" and arg == 4) then
		agacharse = false
		tumbarse = false
		tespera = 1
	end
	
	if agacharse == true and tespera >= 10 then
		tumbarse = true
		PressAndReleaseKey("z")
	end
	
end
cz