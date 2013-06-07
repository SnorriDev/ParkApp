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
		content = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur imperdiet consectetur euismod. Phasellus non ipsum vel eros vestibulum consequat. Integer convallis quam id urna tristique eu viverra risus eleifend.\n\nAenean suscipit placerat venenatis. Pellentesque faucibus venenatis eleifend. Nam lorem felis, rhoncus vel rutrum quis, tincidunt in sapien. Proin eu elit tortor. Nam ut mauris pellentesque justo vulputate convallis eu vitae metus. Praesent mauris eros, hendrerit ac convallis vel, cursus quis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum, dui in vehicula dapibus, lorem nisi placerat turpis, quis gravida elit lectus eget nibh. Mauris molestie auctor facilisis.\n\nCurabitur lorem mi, molestie eget tincidunt quis, blandit a libero. Cras a lorem sed purus gravida rhoncus. Cras vel risus dolor, at accumsan nisi. Morbi sit amet sem purus, ut tempor mauris.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur imperdiet consectetur euismod. Phasellus non ipsum vel eros vestibulum consequat. Integer convallis quam id urna tristique eu viverra risus eleifend.\n\nAenean suscipit placerat venenatis. Pellentesque faucibus venenatis eleifend. Nam lorem felis, rhoncus vel rutrum quis, tincidunt in sapien. Proin eu elit tortor. Nam ut mauris pellentesque justo vulputate convallis eu vitae metus. Praesent mauris eros, hendrerit ac convallis vel, cursus quis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum, dui in vehicula dapibus, lorem nisi placerat turpis, quis gravida elit lectus eget nibh. Mauris molestie auctor facilisis.\n\nCurabitur lorem mi, molestie eget tincidunt quis, blandit a libero. Cras a lorem sed purus gravida rhoncus. Cras vel risus dolor, at accumsan nisi. Morbi sit amet sem purus, ut tempor mauris."
	}})
end

local tabButtons = {
	{label="Map",id="map",up="openMenuIcon.png",down="openMenuIcon.png",onPress=onMenuOptionPressed,selected=true},
	{label="Research",id="research",up="openMenuIcon.png",down="openMenuIcon.png",onPress=onMenuOptionPressed},
	{label="Sustainability",id="sustainability",up="openMenuIcon.png",down="openMenuIcon.png",onPress=onMenuOptionPressed},
	{label="More",id="more",up="openMenuIcon.png",down="openMenuIcon.png",onPress=onMenuOptionPressed},
}

local bar = widget.newTabBar{top=display.contentHeight - 50,buttons=tabButtons}

slideButton = widget.newButton({
	left = display.contentWidth-10,
	width = display.contentWidth/2,
	height = display.contentHeight,
	onPress = slide
})