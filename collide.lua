collider = require 'hardon'
require "levels"
require "sound"

function on_collision()
	if love.mouse.isDown("l") then
		if getLevel() ~= # goalList then
			correct = findTrack("correct.mp3")
			playTrack(correct,true)
			setLevel(getLevel() + 1)
		else
			correct = findTrack("applause.mp3")
			playTrack(correct,true)
			setLevel(1)
		end
		local level = getLevel()
		message,x,y = nextGoal(level)
	end
end

function setupCollisions()
	local detector = collider(100,on_collision)
	return detector
end

function updateCollisions(glass,cursor,goal,Collider)
	local m,x,y = nextGoal(getLevel())
	glass:moveTo(cursor.x+145,cursor.y+85)
	goal:moveTo(x,y)
	Collider:update(dt)
end

Collider = setupCollisions()
