package
{
	import flash.display.Sprite;
	import flash.events.*;	

	public class MenuFrame extends Sprite
	{
		var bg:Background = new Background
		
		public function MenuFrame()
		{
			addChild(bg);
			bg.x = 400;
			bg.y = 300;
		}
	}
}