include("base")
include("controls")

---dvar setup---
game:setdvar("sv_cheats",1)
game:setdvar("sv_hostname","@plugwalker47")
game:setdvar("didyouknow","@plugwalker47")

---menu setup---
menuopen = false
backmenu = "none"
activemenu = "none"
selection = 1
optionct = 0
clientact = " "

--arrays--
players = {}

--spawn setup--
function spawntext(player)
	if player:ishost() == 1 then
		player:freezecontrols(false)
		player:iprintln("^2Use [{+speed_throw}] and [{+actionslot 2}] to Open")
		player:iprintln("^2Menu Base by @plugwalker47")
	else
		player:iprintlnbold("^:This menu is host only as of now, my appoligies")
	end
end

---test functions--- (please put them in a separate file!)
function test(player)
	player:iprintlnbold("^:Test")
end

function playermove(player)
	local pos = player.origin
	local ang = player:getplayeranges()
	player:iprintlnbold("Moved ^:" .. clientact)
	for i, player in ipairs(players) do
		if player.name == clientact then
			player:setorigin(pos)
			player:setplayerangles(ang)
			player:setstance("stand")
		end
	end
end

function playerkick(player)
	player:iprintlnbold("Kicked ^:" .. clientact)
	game:executecommand("kick " .. clientact)
end

---client tracking---
function clientinit(player)
	table.insert(players, player)
	player:onnotifyonce("disconnect", function ()
        for i, p in ipairs(players) do
            if p == player then
                table.remove(players, i)
                break
            end
        end
    end)
end

---entry points--
level:onnotify("connected", clientinit)
level:onnotify("connected", buttonlisten)
level:onnotify("player_spawned", spawntext)