-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local storyboard = require "storyboard"
local widget = require "widget"

storyboard.gotoScene("scenetemplate")

display.setStatusBar(display.DefaultStatusBar)

local scenes = {"scenetemplate","scenetemplate","scenetemplate","scenetemplate","scenetemplate"}

local tabButtons = {
	{label="1",up="openMenuIcon.jpg",down="openMenuIcon.jpg",onPress=function(event) print("yo") end,selected=true},
}

local bar = widget.newTabBar{top=display.contentHeight - 50,buttons=tabButtons}
