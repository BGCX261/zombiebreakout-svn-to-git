package
{
	/*
	Zombie Breakout v1.0
	Main Code:
	*/
	
	//Import
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.ui.Mouse;
	Mouse.hide();
	
	public class GameHandler extends Sprite
	{
	
		//Variables
		var begin:Click = new Click;
		begin.y = 300;
		begin.x = 400;
		
		var paddle:Paddle = new Paddle;
		paddle.y = 575;
		paddle.x = 360;
		
		var ball:Ball = new Ball;
		var ballXSpeed:Number = 10;
		var ballYSpeed:Number = -10;
		ball.y = 555;
		ball.x = 390;
		
		var brickAmt:int = 0;
		
		//how many lives you got
		var lives:int = 3;
		//if the game is over
		var gameOver:Boolean = false;
		
		//Main Function
		function beginCode(event:MouseEvent):void
			{
				removeChild(begin);
				//removes the listener for a click
				stage.removeEventListener(MouseEvent.CLICK, beginCode);
				paddle.addEventListener(Event.ENTER_FRAME, movePaddle);
				ball.addEventListener(Event.ENTER_FRAME, moveBall);
				//adding a listener to check if the level is done
				addEventListener(Event.ENTER_FRAME, checkLevel);
			}
		
		//Paddle Movement
		function movePaddle(event:Event):void
			{
				paddle.x = mouseX;
				
				//Paddle Boundries
				if(mouseX < 0)
					{
						paddle.x = 0;
					}
					
				if(mouseX > stage.stageWidth - paddle.width)
					{
						paddle.x = stage.stageWidth - paddle.width;
					}
			}
		
		//Ball Movement
		function moveBall(event:Event):void
			{
				ball.x += ballXSpeed;
				ball.y += ballYSpeed;
				
				//Ball Boundries and Bounce
				if(ball.x >= stage.stageWidth - ball.width)
				{
					ballXSpeed *= -1;
				}
			
				if(ball.x <= 0)
				{
					ballXSpeed *= -1;
				}
				
				if(ball.y >= stage.stageHeight)
				{
					//if the ball hits the bottom
					//then bounce up and lose a life
					paddle.y = 575;
					paddle.x = 360;
					ball.y = 555;
					ball.x = 390;
					lives --;
					//if there aren't any lives left
					if(lives <= 0)
					{
						//the game is over now
						gameOver = true;
						
						//**************
						//GameOver
						//**************

						removeChild(ball);
						removeChild(paddle);
					}
				}
				
				if(ball.y <= 0)
				{
					ballYSpeed *= -1;
				}
				
				//Collision with Paddle
				if(ball.hitTestObject(paddle))
				{
					calcBallAngle();
				}
			}
		
		//Calculating Direction After Bouncing Off of Paddle
		function calcBallAngle():void
			{
				var ballPosition:Number = ball.x - paddle.x;
				var hitPercent:Number = (ballPosition / (paddle.width - ball.width)) - .5;
				ballXSpeed = hitPercent * 10;
				ballYSpeed *= -1;
			}
			
		function makeLvl():void
			{
				var arrayLength:int = lvlArray[currentLvl-1].length;
				var brickRow:int = 0;
				for(var i:int = 0;i<arrayLength;i++)
					{
						if(lvlArray[currentLvl-1][i] == 1)
							{
								var brick:Brick = new Brick();
								brick.x = 40+(i-brickRow*9)*80;
								brick.y = 40+brickRow*20;
								for(var c:int = 1;c<=10;c++)
									{
										if(i == c*9-1)
											{
												brickRow ++;
											}
									}
						addChild(brick);
						addChild(paddle);
						addChild(ball);
						addChild(begin);
							}
						if(lvlArray[currentLvl-1][i] == 2)
							{
								var brickL:BrickL = new BrickL();
								brickL.x = 40+(i-brickRow*9)*80;
								brickL.y = 40+brickRow*20;
								for(var c:int = 1;c<=10;c++)
									{
										if(i == c*9-1)
											{
												brickRow ++;
											}
									}
								addChild(brickL);
							}
						if(lvlArray[currentLvl-1][i] == 3)
							{
								var brickM:BrickM = new BrickM();
								brickM.x = 40+(i-brickRow*9)*80;
								brickM.y = 40+brickRow*20;
								for(var c:int = 1;c<=10;c++)
									{
										if(i == c*9-1)
											{
												brickRow ++;
											}
									}
								addChild(brickM);
							}
						if(lvlArray[currentLvl-1][i] == 4)
							{
								var brickH:BrickH = new BrickH();
								brickH.x = 40+(i-brickRow*9)*80;
								brickH.y = 40+brickRow*20;
								for(var c:int = 1;c<=10;c++)
									{
										if(i == c*9-1)
											{
												brickRow ++;
											}
									}
								addChild(brickH);
							}
						if(lvlArray[currentLvl-1][i] == 5)
							{
								var brickD:BrickD = new BrickD();
								brickD.x = 40+(i-brickRow*9)*80;
								brickD.y = 40+brickRow*20;
								for(var c:int = 1;c<=10;c++)
									{
										if(i == c*9-1)
											{
												brickRow ++;
											}
									}
								addChild(brickD);
							}
						if(lvlArray[currentLvl-1][i] == 6)
							{
								var brickI:BrickI = new BrickI();
								brickI.x = 40+(i-brickRow*9)*80;
								brickI.y = 40+brickRow*20;
								for(var c:int = 1;c<=10;c++)
									{
										if(i == c*9-1)
											{
												brickRow ++;
											}
									}
								addChild(brickI);
							}
						if(lvlArray[currentLvl-1][i] == 7)
							{
								var brickF:BrickF = new BrickF();
								brickF.x = 40+(i-brickRow*9)*80;
								brickF.y = 40+brickRow*20;
								for(var c:int = 1;c<=10;c++)
									{
										if(i == c*9-1)
											{
												brickRow ++;
											}
									}
								addChild(brickF);
							}
						if(lvlArray[currentLvl-1][i] == 8)
							{
								var brickE:BrickE = new BrickE();
								brickE.x = 40+(i-brickRow*9)*80;
								brickE.y = 40+brickRow*20;
								for(var c:int = 1;c<=10;c++)
									{
										if(i == c*9-1)
											{
												brickRow ++;
											}
									}
								addChild(brickE);
							}
		
					}
			}
			
		function checkLevel(event:Event):void
		{
			//checking if the bricks are all gone
			if(brickAmt == 0)
			{
				//reset the level by increasing the level
				currentLvl ++;
				//and re-running makeLvl
				makeLvl();
				//then resetting the ball's and paddle's position
				ball.y = 555;
				ball.x = 390;
				paddle.y = 575;
				paddle.x = 360;
				//then removing all of the listeners
				paddle.removeEventListener(Event.ENTER_FRAME, movePaddle);
				ball.removeEventListener(Event.ENTER_FRAME, moveBall);
				removeEventListener(Event.ENTER_FRAME, checkLevel);
				//then listening for a mouse click to start the game again
				stage.addEventListener(MouseEvent.CLICK, beginCode);
			}
		}
	}
	//if the mouse clicks, then begin the game
	stage.addEventListener(MouseEvent.CLICK, beginCode);
	makeLvl();
}