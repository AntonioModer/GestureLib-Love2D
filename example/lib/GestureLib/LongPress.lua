require "lib/GestureLib/GestureLib"


function LongPress(t)
		--[[
		* @param	t		minimal time
		]]--
	local self = GestureLib();
	
	self.gestureCheck = '[TP,LP]';
	self.minTime = t;
	self.count_instances = GestureLib_global_count_instances + 1;
	GestureLib_global_count_instances = self.count_instances;

	function self:Check()
		if (self.gestureCheck ~= GestureLib_ArrayToString(self.gestures)) then 
			return false; 
		end 
	
		return true;
	end

	function self:update()
		if self.count_instances == 1 then
			GestureLib_Mouse_X, GestureLib_Mouse_Y = love.mouse.getPosition();
		end
		
		self.timer = 0;
		if ( self.gestures[table.getn(self.gestures)] ~= self.gesturesBuffer) then
			--[[Prevents from duplicate the same value
				Last performed gesture must be other than last gesture at array, 
				otherwise value from gesturesBuffer is not pushed to array--]]
			table.insert(self.gestures, self.gesturesBuffer);
		end
	
		if (self.gesturing == true) then
			self.timer = -(self.nowTime - (love.timer.getTime() * 1000));	
		if (GestureLib_Dist(self.preMouse_X, GestureLib_Mouse_X, self.preMouse_Y, GestureLib_Mouse_Y) < (love.graphics.getWidth() + love.graphics.getHeight()) / 40) then
				if (self.timer >= self.minTime) then
					self.gesturesBuffer = 'LP';
					self.gesturing = false;
				end
			end
		end
		
	end
	


	return self
end