-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local storyboard = require "storyboard"
local widget = require "widget"

storyboard.gotoScene("scenetemplate")

display.setStatusBar(display.DefaultStatusBar)

local tabButtons = {
	{label="Map",up="openMenuIcon.jpg",down="openMenuIcon.jpg",onPress=function(event) print("yo") end,selected=true},
	{label="Events",up="openMenuIcon.jpg",down="openMenuIcon.jpg",onPress=function(event) print("yo") end},
	{label="Rules",up="openMenuIcon.jpg",down="openMenuIcon.jpg",onPress=function(event) print("yo") end},
	{label="More",up="openMenuIcon.jpg",down="openMenuIcon.jpg",onPress=function(event) print("yo") end},
}

local bar = widget.newTabBar{top=display.contentHeight - 50,buttons=tabButtons}
