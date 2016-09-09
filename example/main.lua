require "lib/GestureLib/Swipe"
require "lib/GestureLib/LongPress"
require "lib/GestureLib/Tap"


function love.load()
	SwipeN = Swipe('[TP,N,TR]', -1, 500);
	SwipeS = Swipe('[TP,S,TR]', -1, 500);
	SwipeLDC = Swipe('[TP,S,E,TR]', -1, 800);
	gLongPress = LongPress(1000);
	gTap = Tap(2,600);
end

function love.draw()
	love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
end
  

function love.update(dt)
	SwipeN:update();
	SwipeS:update();
	SwipeLDC:update();
	gLongPress:update();
	gTap:update();
			
	if SwipeN:Check() == true then
			print("WORK N")
	end
	if SwipeS:Check() == true then
			print("WORK S")
	end
	if SwipeLDC:Check() == true then
			print("WORK LDC")
	end
	if gLongPress:Check() == true then
			print("WORK LongPress")
	end
	if gTap:Check() == true then
			print("WORK gTap")
	end
end

 

function love.mousepressed(x, y, button, istouch)
	SwipeN.mousepressed(x, y, button, istouch);
	SwipeS.mousepressed(x, y, button, istouch);
	SwipeLDC.mousepressed(x, y, button, istouch);
	gLongPress.mousepressed(x, y, button, istouch);
	gTap.mousepressed(x, y, button, istouch);
end

function love.mousereleased(x, y, button, istouch)
	SwipeN.mousereleased(x, y, button, istouch)
	SwipeS.mousereleased(x, y, button, istouch)
	SwipeLDC.mousereleased(x, y, button, istouch);
	gLongPress.mousereleased(x, y, button, istouch);
	gTap.mousereleased(x, y, button, istouch);
end
