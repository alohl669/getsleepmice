EnablePrimaryMouseButtonEvents(1)
function OnEvent(event, arg)
	OutputLogMessage("event = %s, arg = %s\n", event, arg);
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
		PressAndReleaseKey("c")
		Sleep(1000)
		if IsMouseButtonPressed(4) then
			PressAndReleaseKey("z")
		end
	end
end
