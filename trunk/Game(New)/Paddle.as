/*************
Paddle Script
v1.0.0
*************/
package
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.ui.Mouse;
	
	public class Paddle extends MovieClip
	{
		public function Paddle()
		{
			this.scaleX = .125;
			this.scaleY = .125;
			this.x = 350;
			this.y = 550;
			this.addEventListener(Event.ENTER_FRAME, movePaddle);
		}
		
		function movePaddle(event:Event = null)
		{
			this.x = stage.mouseX;
		}
	}
}