function findTrack(track)
	return love.audio.newSource(track)
end

function playTrack(track,effect)
	if effect == false then
		track:setLooping(true)
		love.audio.play(track)
	else
		love.audio.play(track,"static")
	end
end
