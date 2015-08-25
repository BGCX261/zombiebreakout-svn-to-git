/************************
Zombie Breakout:
Game Handler Code v1.0.0
************************/

package
{
	/*****
	Import
	*****/
	import flash.display.MovieClip;
	import flash.events.MouseEvent;

	import Level;
			
	public class GameHandler extends MovieClip
	{
		var bg:Background = new Background();
		var game:Level = new Level();
		
		public function GameHandler()
		{
			addChild(bg);
			bg.x = 400;
			bg.y = 300;
			bg.addEventListener(MouseEvent.CLICK, beginLevel);			
			
			function beginLevel(event:MouseEvent)
			{
				removeChild(bg);
				addChild(game);
			}
		}
	}
}