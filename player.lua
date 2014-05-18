player = {}

function player.load()
	player.sprite = love.graphics.newImage("Agent-100.png")
	player.x = 0 + 16
	player.y = 0 + 16
	player.hidden = false
end

function player.checkIfMoved(dt)
	if love.keyboard.isDown("w") then
		player.y = player.y - (SCREEN_Y_CENTER * dt)
	end
	if love.keyboard.isDown("s") then
		player.y = player.y + (SCREEN_Y_CENTER * dt)
	end
	if love.keyboard.isDown("a") then
		player.x = player.x - (SCREEN_X_CENTER * dt)
	end
	if love.keyboard.isDown("d") then
		player.x = player.x + (SCREEN_X_CENTER * dt)
	end
end

function player.checkIfHidden()
	if player.y < 0 then
		player.hidden = true
	elseif player.y > SCREEN_HEIGHT then
		player.hidden = true
	elseif player.x < 0 then
		player.hidden = true
	elseif player.x > SCREEN_WIDTH then
		player.hidden = true
	else
		player.hidden = false
	end
end

function player.isHidden()
	return player.hidden
end

function player.draw()

end