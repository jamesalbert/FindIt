function lights(switch)
	if switch == "on" then
		love.graphics.setColor(255,255,255)
	elseif switch == "off" then
		love.graphics.setColor(0,0,0)
	else
		love.graphics.setColor(switch[1],switch[2],switch[3])
	end
end

function loadFont(name,size,rotate,scale)
	if not size then
		size = 12
	end
	local font = love.graphics.newFont(name,size)
	return font
end

function setFont(font)
	love.graphics.setFont(font)
end

function printText(text,x,y,r,s)
	if not r then
		r = 0
	end
	if not s then
		s = 1
	end
	love.graphics.print(text,x,y,r,s)
end
