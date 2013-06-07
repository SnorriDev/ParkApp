local storyboard = require("storyboard")
local scene = storyboard.newScene()
local widget = require "widget"

function scene:createScene(event)
	local group = self.view
	
	local susTable = {}
	susTable[1] = {}
	susTable[1].title = "Salvaged Materials"
	susTable[2] = {}
	susTable[2].title = "Habitat Creation"
	susTable[3] = {}
	susTable[3].title = "Stormwater Management"
	susTable[4] = {}
	susTable[4].title = "Energy Conservation"
	susTable[5] = {}
	susTable[5].title = "Green Roofs"
	susTable[6] = {}
	susTable[6].title = "Park Operations"
	
	local susContent = {}
	susContent[susTable[1].title] = "The park's sustainability agenda begins with an extreme economy with respect to the materials that are already on the site as well as the sourcing of additional materials to build the park. Existing site structures and fittings that are being removed, like the Cold Storage Warehouses, have been carefully deconstructed so that their materials can be re-used in the construction of the park.\
\
Old materials put to new use include \"raw\" elements like timber and pavement, as well as fixtures left over from the days of the Port Authority's occupancy, like the existing mast lighting and mooring cleats. Likewise, much of the site's marine structure and several of the existing buildings will be renovated and reused including the pier frames and cheek walls, the Pier 6 cafe, the boathouse at the foot of Pier 4, and the Smokestack Building located in Brooklyn Bridge Plaza.\
\
Granite salvaged from the deconstruction of two bridges elsewhere in the city has been used extensively in the park, bringing a durable material elegance for a relatively low cost. The design also re-uses 40,000 cubic yards of clean fill from the MTA’s East Side Access project in the creation of new landforms on Pier 1, thus eliminating the necessity to acquire new materials from great distances and at great expense."
	susContent[susTable[2].title] = "Shoreline ecologies that used to exist on the site and mimic conditions found elsewhere in the region are recreated within the park. These ecologies evolve over time and require less intensive maintenance to survive the harsh waterfront conditions. Native vegetation, bird and marine habitats are located in a way that minimizes human impact on the new habitat and maximize their visibility within the park. The most prominent of these ecological features can be found on Pier 1, Pier 2and Pier 4."
	susContent[susTable[3].title] = "Stormwater collected from Brooklyn Bridge Park's landscape and adjacent buildings is circulated through a series of above-ground landscape elements that function as ecological treatment systems prior to entering underground storage. The stored water supplies much of the park's irrigation needs. While this type of sustainable system improves the environmental performance of the park, it is also visible to park users, helping to raise public awareness of the way that our city interacts with the natural world.\
\
On Pier 1 storage tanks can accommodate 104,000 gallons of stormwater. Storage tanks are also located under Pier 6 and the Empire Fulton Ferry."

	susContent[susTable[4].title] = "Brooklyn Bridge Park incorporates new technology to conserve energy and to use renewable power sources such as solar energy. The majority of lighting within the park can be dimmed, improving the ability of park operators to modulate lighting in response to specific usage, season, neighborhood considerations, dark-sky concerns, and excess energy consumption. Each pier’s lighting is controlled separately from its neighbor, and from the uplands. Sports and active play lighting on each pier has its own control capability, and is dimmable. The ability to shut off certain lights while leaving others on will create opportunities to minimize electricity consumption without compromising safety. Brooklyn Bridge Park is proud to partner with Beautiful Earth Group, an innovative renewable energy company based in Red Hook, Brooklyn.  Beautiful Earth has donated a state of the art solar power charging station to Brooklyn Bridge Park that powers the park's fleet of electric vehicles. BE’s charging station is off-grid, entirely powered by 24 photovoltaic panels on the roof, which catch the sun’s rays throughout the day and store them as electricity in battery packs for 24/7, on-demand use. With production of 5.6 kilowatts, the station also stores enough energy to power a small home and can charge five electric service vehicles and a full-size electric car as they come and go."
	susContent[susTable[5].title] = "As part of our sustainable design, several structures within the park feature green roofs. Green roofs absorb rainwater, provide building insulation, create habitat for wildlife and help to lower urban air temperatures. Currently, green roofs are featured on the Pier 1 and Pier 6 gatehouses and the Pier 5 concession stand. In the future, more green roofs will be implemented into the park design. Check out the gallery below for photos of the Pier1 Gatehouse."
	susContent[susTable[6].title] = "Park operations staff uses a variety of sustainable practices to maintain the park, including participation in public recycling programs, light dimming control and stormwater reuse.\
\
All lawns and trees in the park are maintained organically. Lawns undergo soil testing, fungal compost applications, long-term fertilization and aeration. These practices work to enhance lawn root systems, brighten lawn color and slow weed growth. Following large public events, the lawns are specially treated with a biological compound that includes molasses and beet juice extract. This application restores nutrients to the lawn and helps strengthen the grass. In addition, all lawns are periodically closed to allow the grass time to rest and rebound.\
\
Trees and shrubs in the park are also maintained organically. Tree and shrub maintenance consists of fertilization, scheduled pruning and regular treatment with a biological compound that wards off insects and disease. These organic landscaping practices sustainably maintain park lawns and plantings without the use of chemicals."

	
	local susList = widget.newTableView{
		width = 320,
		height = 366,
		maskFile = "mask-320x366.png"
	}
	
	for i=1,6 do
		local function onRowTouch(event)
			local row = event.row
			local text = row.textObj
			
			if event.phase == "press" or event.phase == "tap" then
				storyboard.gotoScene("research", {params={
					title = susTable[i].title,
					content = susContent[susTable[i].title]
				}})
			elseif event.phase == "release" then
				row.reRender = true
			end
		end
		
		local function onRowRender(event)
			local group = event.view
			local row = event.target
			local index = event.index
			local id = event.id
			
			local text = display.newText(susTable[index].title, 0, 0, native.systemFont, 14)
			text:setReferencePoint( display.CenterLeftReferencePoint )
			text.x = 25
			text.y = row.height * 0.5
			
			row.textObj = text
		end
	
		susList:insertRow{
			id = "unique-row-" .. i,
			onRender = onRowRender,
			listener = onRowTouch
		}
	end
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