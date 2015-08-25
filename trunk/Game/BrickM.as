//Classes must always be wrapped in a package
package 
{
	//importing display elements that we can use in this class
	import flash.display.*;
	import flash.events.*;
	
	//defining the class name and saying that it
	//extends the MovieClip class, meaning that it has the same
	//properties as a movieclip
	public class BrickM extends MovieClip 
	{
		//The main timeline!
		private var _root:MovieClip;
		//all classes must have a function that runs every time
		//an instance of the class is put on stage
		public function BrickM()
		{
			//Code that will be run when the brick is added to the stage
			addEventListener(Event.ADDED, beginClass);
			//Enter frame code
			addEventListener(Event.ENTER_FRAME, enterFrameEvents);
		}
		//private function are just functions that you can't access
		//from the main timeline, but only within the class itself
		private function beginClass(event:Event):void
		{
			//defining _root as the document root
			_root = MovieClip(root);
			//incrementing how many bricks are on the stage
			_root.brickAmt ++;		
		}
		
		private function enterFrameEvents(event:Event):void
		{
			//hit testing with the ball
			if(this.hitTestObject(_root.ball))
			{
				//decrementing the amount of bricks on stage
				_root.brickAmt --;				
				//making the ball bounce off vertically
				_root.ballYSpeed *= -1;
				//destroying this brick
				this.parent.removeChild(this);
				//stop running this code
				removeEventListener(Event.ENTER_FRAME, enterFrameEvents);
				//checking if the player has lost
			}
			
			if(_root.gameOver)
			{
				//destroy this brick
				this.parent.removeChild(this);
				//stop running this code
				removeEventListener(Event.ENTER_FRAME, enterFrameEvents);
			}
		}
	}
}