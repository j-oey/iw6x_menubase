include("__init__")
include("base")

---button listening init---
function buttonlisten(player)
	openlisten(player)
	backlisten(player)
	selectlisten(player)
	uplisten(player)
	downlisten(player)
end

---button controls---
function openlisten(player)
	player:notifyonplayercommand("menu", "+actionslot 2")
	player:onnotify("menu", function()
	if menuopen == false then
		if player:adsbuttonpressed() == 1 then
			menubuild(player)
			newmenu(player, "Menu")
			player:freezecontrols(false)
		else end
	else end
	end)
end

function backlisten(player)
	player:notifyonplayercommand("menuc", "+melee_zoom")
	player:onnotify("menuc", function()
	if menuopen == true then
		if backmenu == "none" then
			menuclose(player)
		else
			newmenu(player, backmenu)
		end
	else end
	end)
end

function selectlisten(player)
	player:notifyonplayercommand("pickdat","+usereload")
	player:onnotify("pickdat", function() if menuopen == true then optionarray(player) else end end)
end

function uplisten(player)
	player:notifyonplayercommand("goinup","+actionslot 1")
	player:onnotify("goinup", function()
	if menuopen == true then
		if scrollbar.y == 72
		then scrollbar.y = ( ( optionct * 20 ) + 52 ) selection = optionct
		else scrollbar.y = (scrollbar.y - 20) selection = (selection - 1) end
	else end
	end)
end

function downlisten(player)
	player:notifyonplayercommand("goindown","+actionslot 2")
	player:onnotify("goindown", function()
	if menuopen == true then
		if scrollbar.y > ( ( optionct * 20 ) + 32 ) then
			scrollbar.y = 72 selection = 1
		else scrollbar.y = (scrollbar.y + 20) selection = (selection + 1) end
	else end
	end)
end