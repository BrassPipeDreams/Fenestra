--TODO
--Menus/Etc
--Write Map code
--/Map Sprites
--Add enemies
--/Sprites
--/AI
--/Fail State
--Goal
--Organize files

require("player")

function love.load()
	-- System Stuff
	SCREEN_HEIGHT = love.window.getHeight()
	SCREEN_WIDTH = love.window.getWidth()
	love.graphics.setColor(255, 255, 255, 255)

	player.load()
	--Map related things
	--TODO!
end

function love.update(dt)
	SCREEN_HEIGHT = love.window.getHeight()
	SCREEN_WIDTH = love.window.getWidth()

	SCREEN_Y_CENTER = SCREEN_HEIGHT / 2
	SCREEN_X_CENTER = SCREEN_WIDTH / 2

	player.checkIfMoved(dt)
	player.checkIfHidden()

	if love.keyboard.isDown("up") then
		love.window.setMode(SCREEN_WIDTH, SCREEN_HEIGHT + 16) -- FIX THIS! IF NOT SCRAP IT!
	end
	if love.keyboard.isDown("down") then
		
	end
	if love.keyboard.isDown("left") then
		
	end
	if love.keyboard.isDown("right") then
		
	end
end

function love.draw()
	love.graphics.rectangle("fill" , 100, 100, 200, 200)
	love.graphics.print(love.timer.getFPS())
	love.graphics.draw(player.sprite, player.x, player.y)
	if player.isHidden() then
		love.graphics.print("HIDDEN!", SCREEN_X_CENTER, SCREEN_Y_CENTER)
		love.graphics.line(player.x, player.y, SCREEN_X_CENTER, SCREEN_Y_CENTER)
	end
end

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
end

-- Move to a different file later