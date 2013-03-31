-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local storyboard = require "storyboard"
local widget = require "widget"

storyboard.gotoScene("scenetemplate")

display.setStatusBar(display.DefaultStatusBar)

local function onMenuOptionPressed(event)
	print(event.target.id)
end

local tabButtons = {
	{label="Map",id="map",up="openMenuIcon.jpg",down="openMenuIcon.jpg",onPress=onMenuOptionPressed,selected=true},
	{label="Events",id="events",up="openMenuIcon.jpg",down="openMenuIcon.jpg",onPress=onMenuOptionPressed},
	{label="Rules",id="rules",up="openMenuIcon.jpg",down="openMenuIcon.jpg",onPress=onMenuOptionPressed},
	{label="More",id="more",up="openMenuIcon.jpg",down="openMenuIcon.jpg",onPress=onMenuOptionPressed},
}

local bar = widget.newTabBar{top=display.contentHeight - 50,buttons=tabButtons}
