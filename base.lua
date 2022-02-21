include("__init__")
include("controls")

---drawing and destroying hud elems---
function menubuild(player)
	bg = game:newclienthudelem(player)
    bg.alpha = 0.6
    bg.alignx = "right"
    bg.aligny = "top"
    bg.horzalign = "right"
    bg.vertalign = "top"
    bg.x = 20
    bg.y = 40
    bg.hidewheninmenu = false
    bg:setshader("black", 200, 270)

	scrollbar = game:newclienthudelem(player);
	scrollbar.alpha = 0.8;
    scrollbar.alignx = "right";
    scrollbar.aligny = "top";
    scrollbar.horzalign = "right";
    scrollbar.vertalign = "top";
    scrollbar.x = 20;
    scrollbar.y = 72
    scrollbar.hidewheninmenu = false;
    scrollbar:setshader("black", 200, 20);

	title = game:newclienthudelem(player)
    title.alpha = 1;
	title.font = "dev";
    title.fontscale = 1.8;
    title.alignx = "right";
    title.aligny = "top";
    title.horzalign = "right";
    title.vertalign = "top";
	title.x = 10;
    title.y = 46;
	title.hidewheninmenu = false;
    title:settext("")

	option1 = game:newclienthudelem(player)
    option1.alpha = 1;
	option1.font = "objective";
    option1.fontscale = 1.6;
    option1.alignx = "right";
    option1.aligny = "top";
    option1.horzalign = "right";
    option1.vertalign = "top";
	option1.x = 10;
    option1.y = 72
	option1.hidewheninmenu = false;
    option1:settext("")

	option2 = game:newclienthudelem(player)
    option2.alpha = 1;
	option2.font = "objective";
    option2.fontscale = 1.6;
    option2.alignx = "right";
    option2.aligny = "top";
    option2.horzalign = "right";
    option2.vertalign = "top";
	option2.x = 10;
    option2.y = 92
	option2.hidewheninmenu = false;
    option2:settext("")

	option3 = game:newclienthudelem(player)
    option3.alpha = 1;
	option3.font = "objective";
    option3.fontscale = 1.6;
    option3.alignx = "right";
    option3.aligny = "top";
    option3.horzalign = "right";
    option3.vertalign = "top";
	option3.x = 10;
    option3.y = 112
	option3.hidewheninmenu = false;
    option3:settext("")

	option4 = game:newclienthudelem(player)
    option4.alpha = 1;
	option4.font = "objective";
    option4.fontscale = 1.6;
    option4.alignx = "right";
    option4.aligny = "top";
    option4.horzalign = "right";
    option4.vertalign = "top";
	option4.x = 10;
    option4.y = 132
	option4.hidewheninmenu = false;
    option4:settext("")

	option5 = game:newclienthudelem(player)
    option5.alpha = 1;
	option5.font = "objective";
    option5.fontscale = 1.6;
    option5.alignx = "right";
    option5.aligny = "top";
    option5.horzalign = "right";
    option5.vertalign = "top";
	option5.x = 10;
    option5.y = 152
	option5.hidewheninmenu = false;
    option5:settext("")

	option6 = game:newclienthudelem(player)
    option6.alpha = 1;
	option6.font = "objective";
    option6.fontscale = 1.6;
    option6.alignx = "right";
    option6.aligny = "top";
    option6.horzalign = "right";
    option6.vertalign = "top";
	option6.x = 10;
    option6.y = 172
	option6.hidewheninmenu = false;
    option6:settext("")

	option7 = game:newclienthudelem(player)
    option7.alpha = 1;
	option7.font = "objective";
    option7.fontscale = 1.6;
    option7.alignx = "right";
    option7.aligny = "top";
    option7.horzalign = "right";
    option7.vertalign = "top";
	option7.x = 10;
    option7.y = 192
	option7.hidewheninmenu = false;
    option7:settext("")

	option8 = game:newclienthudelem(player)
    option8.alpha = 1;
	option8.font = "objective";
    option8.fontscale = 1.6;
    option8.alignx = "right";
    option8.aligny = "top";
    option8.horzalign = "right";
    option8.vertalign = "top";
	option8.x = 10;
    option8.y = 212
	option8.hidewheninmenu = false;
    option8:settext("")

	option9 = game:newclienthudelem(player)
    option9.alpha = 1;
	option9.font = "objective";
    option9.fontscale = 1.6;
    option9.alignx = "right";
    option9.aligny = "top";
    option9.horzalign = "right";
    option9.vertalign = "top";
	option9.x = 10;
    option9.y = 232
	option9.hidewheninmenu = false;
    option9:settext("")

	newmenu(player,"^:Failsafe" )
	menuopen = true
	game:ontimeout(function () selection = 1 scrollbar.y = 72 end, 0)
end

---options destroy on menu close only---
function menuclose(player)
	bg:destroy()
	title:destroy()
	scrollbar:destroy()
	option1:destroy()
	option2:destroy()
	option3:destroy()
	option4:destroy()
	option5:destroy()
	option6:destroy()
	option7:destroy()
	option8:destroy()
	option9:destroy()
	menuopen = false
end

---option text---
function newmenu(player, menuset) 
	scrollbar.y = 72
	selection = 1
	title:settext("^:" .. menuset)
	if menuset == "Menu" then
		option1:settext("Submenu 1")
		option2:settext("Submenu 2")
		option3:settext("Submenu 3")
		option4:settext("Submenu 4")
		option5:settext("Submenu 5")
		option6:settext("Submenu 6")
		option7:settext("Submenu 7")
		option8:settext("Submenu 8")
		option9:settext("Clients")
		optionct = 9
		activemenu = menuset
		backmenu = "none"
	elseif menuset == "Submenu 1" then
		option1:settext("text")
		option2:settext("text")
		option3:settext("text")
		option4:settext("text")
		option5:settext("text")
		option6:settext("text")
		option7:settext("text")
		option8:settext("text")
		option9:settext("text")
		optionct = 9
		activemenu = menuset
		backmenu = "Menu"
	elseif menuset == "Submenu 2" then
		option1:settext("text")
		option2:settext("text")
		option3:settext("text")
		option4:settext("text")
		option5:settext("text")
		option6:settext("text")
		option7:settext("text")
		option8:settext("text")
		option9:settext("text")
		optionct = 9
		activemenu = menuset
		backmenu = "Menu"
	elseif menuset == "Submenu 3" then
		option1:settext("text")
		option2:settext("text")
		option3:settext("text")
		option4:settext("text")
		option5:settext("text")
		option6:settext("text")
		option7:settext("text")
		option8:settext("text")
		option9:settext("text")
		optionct = 9
		activemenu = menuset
		backmenu = "Menu"
	elseif menuset == "Submenu 4" then
		option1:settext("text")
		option2:settext("text")
		option3:settext("text")
		option4:settext("text")
		option5:settext("text")
		option6:settext("text")
		option7:settext("text")
		option8:settext("text")
		option9:settext("text")
		optionct = 9
		activemenu = menuset
		backmenu = "Menu"
	elseif menuset == "Submenu 5" then
		option1:settext("text")
		option2:settext("text")
		option3:settext("text")
		option4:settext("text")
		option5:settext("text")
		option6:settext("text")
		option7:settext("text")
		option8:settext("text")
		option9:settext("text")
		optionct = 9
		activemenu = menuset
		backmenu = "Menu"
	elseif menuset == "Submenu 6" then
		option1:settext("text")
		option2:settext("text")
		option3:settext("text")
		option4:settext("text")
		option5:settext("text")
		option6:settext("text")
		option7:settext("text")
		option8:settext("text")
		option9:settext("text")
		optionct = 9
		activemenu = menuset
		backmenu = "Menu"
	elseif menuset == "Submenu 7" then
		option1:settext("text")
		option2:settext("text")
		option3:settext("text")
		option4:settext("text")
		option5:settext("text")
		option6:settext("text")
		option7:settext("text")
		option8:settext("text")
		option9:settext("text")
		optionct = 9
		activemenu = menuset
		backmenu = "Menu"
	elseif menuset == "Submenu 8" then
		option1:settext("text")
		option2:settext("text")
		option3:settext("text")
		option4:settext("text")
		option5:settext("text")
		option6:settext("text")
		option7:settext("text")
		option8:settext("text")
		option9:settext("text")
		optionct = 9
		activemenu = menuset
		backmenu = "Menu"
	elseif menuset == "Clients" then
		option1:settext(players[1])
		option2:settext("")
		option3:settext("")
		option4:settext("")
		option5:settext("")
		option6:settext("")
		option7:settext("")
		option8:settext("")
		option9:settext("")
		if #players >= 2 then
		option2:settext(players[2])
		end
		if #players >= 3 then
		option3:settext(players[3])
		end
		if #players >= 4 then
		option4:settext(players[4])
		end
		if #players >= 5 then
		option5:settext(players[5])
		end
		if #players >= 6 then
		option6:settext(players[6])
		end
		if #players >= 7 then
		option7:settext(players[7])
		end
		if #players >= 8 then
		option8:settext(players[8])
		end
		if #players >= 9 then
		option9:settext(players[9])
		end
		optionct = #players
		activemenu = menuset
		backmenu = "Menu"
	elseif menuset == "clients2" then
		title:settext("^:".. clientact)
		option1:settext("Kick Client")
		option2:settext("TP to Self")
		option3:settext("")
		option4:settext("")
		option5:settext("")
		option6:settext("")
		option7:settext("")
		option8:settext("")
		option9:settext("")
		optionct = 2
		activemenu = menuset
		backmenu = "Clients"
	end
end

---option functions---
function optionarray(player)
	if activemenu == "Menu" then
		if selection == 1 then newmenu(player, "Submenu 1")
		elseif selection == 2 then newmenu(player,"Submenu 2")
		elseif selection == 3 then newmenu(player,"Submenu 3")
		elseif selection == 4 then newmenu(player,"Submenu 4")
		elseif selection == 5 then newmenu(player,"Submenu 5")
		elseif selection == 6 then newmenu(player, "Submenu 6")
		elseif selection == 7 then newmenu(player,"Submenu 7")
		elseif selection == 8 then newmenu(player,"Submenu 8")
		elseif selection == 9 then newmenu(player,"Clients")
		end
	elseif activemenu == "Submenu 1" then
		if selection == 1 then test(player)
		elseif selection == 2 then test(player)
		elseif selection == 3 then test(player)
		elseif selection == 4 then test(player)
		elseif selection == 5 then test(player)
		elseif selection == 6 then test(player)
		elseif selection == 7 then test(player)
		elseif selection == 8 then test(player)
		elseif selection == 9 then test(player)
		end
    elseif activemenu == "Submenu 2" then
		if selection == 1 then test(player)
		elseif selection == 2 then test(player)
		elseif selection == 3 then test(player)
		elseif selection == 4 then test(player)
		elseif selection == 5 then test(player)
		elseif selection == 6 then test(player)
		elseif selection == 7 then test(player)
		elseif selection == 8 then test(player)
		elseif selection == 9 then test(player)
		end
    elseif activemenu == "Submenu 3" then
		if selection == 1 then test(player)
		elseif selection == 2 then test(player)
		elseif selection == 3 then test(player)
		elseif selection == 4 then test(player)
		elseif selection == 5 then test(player)
		elseif selection == 6 then test(player)
		elseif selection == 7 then test(player)
		elseif selection == 8 then test(player)
		elseif selection == 9 then test(player)
        end
    elseif activemenu == "Submenu 4" then
		if selection == 1 then test(player)
		elseif selection == 2 then test(player)
		elseif selection == 3 then test(player)
		elseif selection == 4 then test(player)
		elseif selection == 5 then test(player)
		elseif selection == 6 then test(player)
		elseif selection == 7 then test(player)
		elseif selection == 8 then test(player)
		elseif selection == 9 then test(player)
		end
    elseif activemenu == "Submenu 5" then
		if selection == 1 then test(player)
		elseif selection == 2 then test(player)
		elseif selection == 3 then test(player)
		elseif selection == 4 then test(player)
		elseif selection == 5 then test(player)
		elseif selection == 6 then test(player)
		elseif selection == 7 then test(player)
		elseif selection == 8 then test(player)
		elseif selection == 9 then test(player)
		end
    elseif activemenu == "Submenu 6" then
		if selection == 1 then test(player)
		elseif selection == 2 then test(player)
		elseif selection == 3 then test(player)
		elseif selection == 4 then test(player)
		elseif selection == 5 then test(player)
		elseif selection == 6 then test(player)
		elseif selection == 7 then test(player)
		elseif selection == 8 then test(player)
		elseif selection == 9 then test(player)
		end
    elseif activemenu == "Submenu 7" then
		if selection == 1 then test(player)
		elseif selection == 2 then test(player)
		elseif selection == 3 then test(player)
		elseif selection == 4 then test(player)
		elseif selection == 5 then test(player)
		elseif selection == 6 then test(player)
		elseif selection == 7 then test(player)
		elseif selection == 8 then test(player)
		elseif selection == 9 then test(player)
		end
    elseif activemenu == "Submenu 8" then
		if selection == 1 then test(player)
		elseif selection == 2 then test(player)
		elseif selection == 3 then test(player)
		elseif selection == 4 then test(player)
		elseif selection == 5 then test(player)
		elseif selection == 6 then test(player)
		elseif selection == 7 then test(player)
		elseif selection == 8 then test(player)
		elseif selection == 9 then test(player)
		end
	elseif activemenu == "Clients" then
		if selection == 1 then clientact = players[1].name newmenu(player, "clients2")
		elseif selection == 2 then clientact = players[2].name newmenu(player, "clients2")
		elseif selection == 3 then clientact = players[3].name newmenu(player, "clients2")
		elseif selection == 4 then clientact = players[4].name newmenu(player, "clients2")
		elseif selection == 5 then clientact = players[5].name newmenu(player, "clients2")
		elseif selection == 6 then clientact = players[6].name newmenu(player, "clients2")
		elseif selection == 7 then clientact = players[7].name newmenu(player, "clients2")
		elseif selection == 8 then clientact = players[8].name newmenu(player, "clients2")
		elseif selection == 9 then clientact = players[9].name newmenu(player, "clients2")
		end
	elseif activemenu == "clients2" then
        if selection == 1 then playerkick(player)
		elseif selection == 2 then playermove(player)
        end
	end
end