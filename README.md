# iw6x_menubase
simple iw6x lua menu base i used for failsafe

controls are not kbm friendly but can be edited:
--open: aim in & dpad down
--close/back: knife
--scroll: dpad up/dpad down
--select: x button

console binds are as follows:
--open: aim in & +actionslot 2
--close/back: +melee_zoom
--scroll: +actionslot 1/+actionslot 2
--select: +usereload

comes with one test function and a couple client based functions like teleport and kick

i wont provide much help in terms of making specific functions but i am happy to explain how this base works and how to modify it

adding a function takes 4 steps:
1) make the function (preferrably in a separate functions file and include it in your base fiel)
2) find a submenu where you want to put the function and change the text of sed option
3) update the option count if you replaced a blank function line
4) go down to the options array and find the functions for the corresponding submenu and add the function

menus are somewhat simple too:
steps 1-4 are the same as a function but you will use newmenu(player,"MenuName") instead
5) make a new submenu in the newmenu function
  heres a template:
      elseif menuset == "MenuName" then
      option1:settext("")
      option2:settext("")
      option3:settext("")
      option4:settext("")
      option5:settext("")
      option6:settext("")
      option7:settext("")
      option8:settext("")
      option9:settext("")
      optionct = 1
      activemenu = menuset
      backmenu = "none"
      
 6) replace the backmenu with the previous menu you came from, if this is the main menu leave it as none
 7) add the text for functions in the menu and update the optionct variable to match the number of options
 8) make a similar addition to the optionarray function
    template:
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
 9) if you only have 2 options you can remove the lines concerning options 3-9

in terms of references heres a couple place to look that may help
https://xlabs.dev/iw6x_scripting_documentation
https://github.com/XLabsProject/iw6x-client/blob/develop/src/client/game/scripting/function_tables.cpp
