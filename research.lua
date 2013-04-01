local storyboard = require("storyboard")
local scene = storyboard.newScene()

function scene:createScene(event)
	local group = self.view
	
	data = event.params
	
	local title = display.newText(data.title, 0, 0, native.systemFontBold, 100)
	group:insert(title)
	if picture ~= nil then
		local picture = display.newImage(data.picture, 0, 105)
		group:insert(picture)
	end
	local content = display.newText(data.content, 0, 200, native.systemFontBold, 50)
	group:insert(content)
end

function scene:enterScene(event)
	local group = self.view
end

function scene:destroyScene(event)
	local group = self.view
end

scene:addEventListener("createScene", scene)
scene:addEventListener("enterScene", scene)
scene:addEventListener("exitScene", scene)
scene:addEventListener("destroyScene",scene)

return scene