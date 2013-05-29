local storyboard = require("storyboard")
local scene = storyboard.newScene()

function scene:createScene(event)
	local group = self.view
	local title = display.newText("Map", 0, 0, native.systemFontBold, 90)
	group:insert(title)
end

function scene:enterScene(event)
	local group = self.view
end

function scene:exitScene(event)
	local group = self.view
end

function scene:destroyScene(event)
	local group = self.view
end

scene:addEventListener("createScene", scene)
scene:addEventListener("enterScene", scene)
scene:addEventListener("exitScene", scene)
scene:addEventListener("destroyScene", scene)

bbpLat = 40.69399
bbpLong = -73.99927

--myMap = native.newMapView(20,20,280,300)
--myMap:setCenter(bbpLat, bbpLong)

return scene