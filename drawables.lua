function createImage(self,image)
	if not self.x or not self.y then
		self.x = 0
		self.y = 0
	end
	self.i = love.graphics.newImage(image)
	self.w = self.i:getWidth()
	self.h = self.i:getHeight()
	return self
end

function adjustScreen(width,height,fullscreen)
	if not fullscreen then
		fullscreen = false
	end
	love.graphics.setMode(width,height,fullscreen)
end

function createGame()
	map        = createImage({},"map.gif")
	cursor     = createImage({},"cursor.png")
	paper      = createImage({},"message.jpg")
	messageBox = createImage({x=10,y=10},"messageBox.png")
	levelBox   = createImage({x=775,y=10},"levelBox.png")
end

function drawGame()
	love.graphics.draw(map.i,map.x,map.y)
	love.graphics.draw(cursor.i,cursor.x,cursor.y)
	love.graphics.draw(messageBox.i,messageBox.x,messageBox.y)
	love.graphics.draw(levelBox.i,levelBox.x,levelBox.y)
end
