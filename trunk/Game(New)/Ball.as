/*************
Ball Script
v1.0.0
*************/
package
{
	import flash.display.MovieClip;
	import flash.events.*;
	
	import Paddle;
	
	public class Ball extends MovieClip
	{
		var ballXspeed:Number = 0;
		var ballYspeed:Number = 0;
		var paddle:Paddle = new Paddle;

		public function Ball()
		{
			this.scaleX = .22;
			this.scaleY = .22;
			this.x = 390;
			this.y = 530;
			this.addEventListener(Event.ENTER_FRAME, moveBall);
			ballXspeed = 10;
			ballYspeed = -10;
		}	
		
		public function moveBall(event:Event):void
		{
			this.x += ballXspeed;
			this.y += ballYspeed;
			
			if(this.x >= 800 - this.width)
			{
				ballXspeed *= -1;
			}
			
			if(this.x <= 0)
			{
				ballXspeed *= -1;
			}
			
			if(this.y >= 600 - this.height)
			{
				ballYspeed *= -1;
			}
			
			if(this.y <= 0)
			{
				ballYspeed *= -1;
			}
			if(this.hitTestObject(paddle))
			{
				calcBallAngle();
			}
		}

		public function calcBallAngle(event:Event = null)
		{
			var ballPosition:Number = this.x - paddle.x;
			var hitPercent:Number = (ballPosition / (paddle.width - this.width)) - .5;
			ballXspeed = hitPercent * 10;
			ballYspeed *= -1;
		}
	}
}