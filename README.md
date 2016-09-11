<h1> GestureLib-Love2D </h1>
GestureLib-Love2D is port of my Haxe gesture library to love2D.

<h1>Features</h1>
 * Simple in use
 * Flex
 * Allows to combine multiple gestures

<h1>Supported gestures</h1>
 * Swipe
 * Long press
 * Tap
 
<h1>Prepare to work</h1>

<h3>Require</h3>

Require what you need.

<h4>Swipe</h4>

```lua
require "lib/GestureLib/Swipe"
```

<h4>Long press</h4>

```lua
require "lib/GestureLib/LongPress"
```

<h4>Tap</h4>

```lua
require "lib/GestureLib/Tap"
```

<h3>love.load()</h3>

Object declaration.

<h4>Swipe</h4>

```lua
Gesture_Swipe_N = Swipe('[TP,N,TR]', -1, 500);
```
Swipe(<b>g</b>, <b>d</b>, <b>t</b>)

<b>g</b> - Gestures, <b>must</b> be in square bracket and without spaces!

<h4>Gestures</h4>

 * TP - Touch Press
 * TR - Touch Release
 * N - Swipe ↑
 * NE - Swipe ↗
 * E - Swipe →
 * SE - Swipe ↘
 * S - Swipe ↓
 * SW - Swipe ↙
 * W - Swipe ←
 * NW - Swipe ↖

<b>d</b> - Minimal distance which cursor (or finger) must overcome. Values less than 0 automatically determine the most optimal distance.

<b>t</b> - Minimal time to finish gesture. 

<h4>Long press</h4>

```lua
Gesture_LongPress = LongPress(1000);
```
LongPress(<b>t</b>)

<b>t</b> - Determine how long user must press.

<h4>Tap</h4>

```lua
Gesture_MultipleTap = Tap(2,600);
```
Tap(<b>a</b>, <b>t</b>)

<b>a</b> - Amount of taps.

<b>t</b> - The time at Which user must to finish gesture. 


<h3>love.update(dt)</h3>

All objects must be updated.

e.g.
```lua
Gesture_Swipe_N:update();
```

<h3>love.mousepressed(x, y, button, istouch)</h3>

All objects must have access to mousepressed.

e.g.
```lua
Gesture_Swipe_N.mousepressed(x, y, button, istouch);
```

<h3>love.mousereleased(x, y, button, istouch)</h3>

All objects must have access to mousereleased.

e.g.
```lua
Gesture_Swipe_N.mousereleased(x, y, button, istouch)
```

<h1>Usage</h1>

```lua
Gesture_Swipe_N:Check()
```

<b>:Check()</b> checks if gesture is finished. Value is bool.

e.g. 
```lua
if (Gesture_Swipe_N:Check() == true) then
  print("Gesture_SwipeN")
end
```

<hr>

