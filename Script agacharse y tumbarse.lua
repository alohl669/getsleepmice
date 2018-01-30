local agacharse	= false
local tumbarse = false
local tespera = integer

function OnEvent(event, arg)
	OutputLogMessage("event = %s, arg = %s\n", event, arg); 

	if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then 
		agacharse = true
		tespera = 1
	elseif (event == "MOUSE_BUTTON_RELEASED" and arg == 4) then
		agacharse = false
		tespera = 1
	end
	
	if agacharse == true then
		PressAndReleaseKey("c")
		while tespera < 10 do
			Sleep(100)
			tespera = tespera + 1
		end
		if tespera >= 10 then
			tumbarse = true
		end
	elseif tumbarse == true then
		PressAndReleaseKey("z")
	end
	
end
