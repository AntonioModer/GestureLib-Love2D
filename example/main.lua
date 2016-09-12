require "lib/GestureLib/Swipe"
require "lib/GestureLib/LongPress"
require "lib/GestureLib/Tap"


function love.load()
	Gesture_SwipeN = Swipe('[TP,N,TR]', -1, 500);
	Gesture_SwipeS = Swipe('[TP,S,TR]', -1, 0);
	Gesture_SwipeLDC = Swipe('[TP,S,E,TR]', -1, 800);
	Gesture_LongPressGesture = LongPress(1000, false);
	Gesture_DoubleTap = Tap(2,600);
end

function love.draw()
	love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
end
  

function love.update(dt)
	Gesture_SwipeN:update();
	Gesture_SwipeS:update();
	Gesture_SwipeLDC:update();
	Gesture_LongPressGesture:update();
	Gesture_DoubleTap:update();
		
	if Gesture_SwipeN:Check() == true then
		print("Gesture_SwipeN")
	end
	if Gesture_SwipeLDC:Check() == true then
			print("Gesture_SwipeLDC")

	end
	if Gesture_LongPressGesture:Check() == true then
			print("Gesture_LongPressGesture")
			if Gesture_SwipeS:Check() == true then
				print("Gesture_SwipeS")
			end
	end
	if Gesture_DoubleTap:Check() == true then
			print("Gesture_DoubleTap")
	end
end

 

function love.mousepressed(x, y, button, istouch)
	Gesture_SwipeN.mousepressed(x, y, button, istouch);
	Gesture_SwipeS.mousepressed(x, y, button, istouch);
	Gesture_SwipeLDC.mousepressed(x, y, button, istouch);
	Gesture_LongPressGesture.mousepressed(x, y, button, istouch);
	Gesture_DoubleTap.mousepressed(x, y, button, istouch);
end

function love.mousereleased(x, y, button, istouch)
	Gesture_SwipeN.mousereleased(x, y, button, istouch)
	Gesture_SwipeS.mousereleased(x, y, button, istouch)
	Gesture_SwipeLDC.mousereleased(x, y, button, istouch);
	Gesture_LongPressGesture.mousereleased(x, y, button, istouch);
	Gesture_DoubleTap.mousereleased(x, y, button, istouch);
end
