level = 1

goalList = {
	{ "She's right below the mountain tops, find her!",642,352 },
	{ "Find the inverted man, and go North.",111,145 },
	{ "He's the happiest guy with the longest face.",935,485 }
}

function getLevel()
	return level
end

function setLevel(x)
	level = x
end

function nextGoal(level)
	local message = goalList[level][1]
	local x       = goalList[level][2]
	local y       = goalList[level][3]
	return message,x,y
end
