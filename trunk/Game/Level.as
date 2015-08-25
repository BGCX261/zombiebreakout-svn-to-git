import Brick;
var currentLvl:int = 1;
//The array code for lvl 1
//All of the later levels add one more row of bricks
var lvl1Code:Array = new Array(1,2,3,4,5,6,5,4,3,1,1,2,3,4,5,4,3,2,1,1,1,2,3,4,3,2,1,1,1,1,1,2,3,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1);
var lvl2Code:Array = new Array(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
var lvl3Code:Array = new Array(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
var lvl4Code:Array = new Array(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
var lvl5Code:Array = new Array(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
//The array that contains all of the level codes
var lvlArray:Array = new Array(lvl1Code, lvl2Code, lvl3Code, lvl4Code, lvl5Code);