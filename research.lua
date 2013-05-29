local storyboard = require("storyboard")
local scene = storyboard.newScene()
scrollView = require("scrollView")

function scene:createScene(event)
	local group = self.view
	local scrollView = scrollView.new{top=display.screenOriginY, bottom=display.screenOriginY}
	
	data = event.params
	
	local title = display.newText(data.title, 0, 0, native.systemFontBold, 100)
	scrollView:insert(title)
	if picture ~= nil then
		local picture = display.newImage(data.picture, 0, 105)
		group:insert(picture)
	end
	local content = display.newText(data.content, 0, 200, native.systemFontBold, 50)
	scrollView:insert(content)
	local scrollBackground = display.newRect(0,0,display.contentWidth, scrollView.height+64)
	scrollBackground:setFillColor(0,0,0)
	scrollView:insert(1, scrollBackground)
	
	scrollView:addScrollBar()
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