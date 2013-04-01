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
	storyboard.gotoScene(event.target.id, {params={
		title = "TITLE",
		content = "Lorem ipsum"
	}})
end

local tabButtons = {
	{label="Map",id="map",up="openMenuIcon.jpg",down="openMenuIcon.jpg",onPress=onMenuOptionPressed,selected=true},
	{label="Research",id="research",up="openMenuIcon.jpg",down="openMenuIcon.jpg",onPress=onMenuOptionPressed},
	{label="Rules",id="rules",up="openMenuIcon.jpg",down="openMenuIcon.jpg",onPress=onMenuOptionPressed},
	{label="More",id="more",up="openMenuIcon.jpg",down="openMenuIcon.jpg",onPress=onMenuOptionPressed},
}

local bar = widget.newTabBar{top=display.contentHeight - 50,buttons=tabButtons}
