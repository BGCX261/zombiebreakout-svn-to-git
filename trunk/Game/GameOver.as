//Game Over

//var lose:Lose = new Lose;
//lose.x = 400;
//lose.y = 300;

//addChild(lose);

//resetting the game if the mouse is clicked
stage.addEventListener(MouseEvent.CLICK, resetGame);
//removeChild(lose);
function resetGame(event:MouseEvent):void{
	//removing this listener
	stage.addEventListener(MouseEvent.CLICK, resetGame);
	//resetting the game
	
}