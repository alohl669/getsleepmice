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
	
	
	if agacharse == true and tespera < 10 then
		Sleep(100)
		tespera = tespera + 1
	elseif tespera >= 10 then
		tumbarse = true
	end
	
	if agacharse == true then
		PressAndReleaseKey("c")
	elseif agacharse == true and tumbarse == true then
		PressAndReleaseKey("z")
	end
	
end
