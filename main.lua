-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local storyboard = require "storyboard"
local widget = require "widget"
local slid = false

storyboard.gotoScene("map")

display.setStatusBar(display.DefaultStatusBar)

local slide = function (event)
	print("moving")
	if slid then
		transition.to(slideButton, {time=100, x=display.contentWidth-10})
		slid = false
	else
		transition.to(slideButton, {time=100, x=display.contentWidth/2})
		slid = true
	end
end

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

slideButton = widget.newButton({
	left = display.contentWidth-10,
	width = display.contentWidth/2,
	height = display.contentHeight,
	onPress = slide
})