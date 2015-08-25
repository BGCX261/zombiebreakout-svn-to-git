package
{
	import flash.display.MovieClip;
	import flash.events.*
	import flash.ui.Mouse;
	Mouse.hide();
	
	import Ball;
	import Paddle;
	
	public class Level extends MovieClip
	{
		var ball:Ball = new Ball();			
		var paddle:Paddle = new Paddle();
		var brickA:BrickA = new BrickA();

		public function Level()
		{
			addChild(ball);
			addChild(paddle);
			addChild(brickA);
		}		
	}
}