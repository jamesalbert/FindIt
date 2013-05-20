require "drawables"
require "collide"
require "levels"
require "fonts"
require "sound"
require "mouse"

function updatePos(x,y)
	love.graphics.print(""..x..","..y,x,y)
end

function love.load()
	local track = findTrack("midnight-ride.mp3")
	local level = 1

	playTrack(track)

	message,x,y = nextGoal(level)
	font = loadFont("Advert-Regular.ttf")

	m = false

	createGame()
	glass = Collider:addCircle(cursor.x+150,cursor.y+75,75)
	goal = Collider:addCircle(x,y,25)

	adjustScreen(map.w,map.h)
end

function love.update(dt)
	if m == true then return end

	cursor.x = love.mouse.getX() - cursor.w / 2
	cursor.y = love.mouse.getY() - cursor.h / 2

	updateCollisions(glass,cursor,goal,Collider)
end

function love.draw()
	lights("on")
	setFont(font)

	drawGame()
	--goal:draw("fill")

	lights("off")
	--updatePos(cursor.x+145,cursor.y+85)
	setFont(font,24)
	lights({255,0,0})
	printText(level,900,40)
	if m == true then
		lights("on")
		love.graphics.draw(paper.i,0,0)
		lights("off")
		printText(message,100,100)
	end
end

function love.mousepressed()
	mouse.x,mouse.y = love.mouse.getPosition()
end

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	elseif key == "m" then
		m = true
	end
end

function love.keyreleased(key)
	if key == "m" then
		m = false
	end
end
