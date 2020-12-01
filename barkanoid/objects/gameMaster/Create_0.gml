#region In-Game
//Must be assigned before the round begins
global.redPlayer = noone;
global.bluePlayer = noone;

//Game Setup
global.totalRounds = 3; //1, 3, 5
global.roundTime = 180; //Seconds

//Level Setup
global.boundsX1 = 32;
global.boundsX2 = room_width - 32;

//Level Setup
global.blueZone = 0;
global.redZone = room_height;

//Active Variables
global.redScore = 0;
global.blueScore = 0;

global.levelNumber = 0;
global.roundNumber = 0;
global.redServe = true;			//Checks who is serving
global.whoServedLast = true;	//Checks who served last; true for Red, false for blue
global.catchTimer = 3;			//Seconds
global.roundEnd = false;		//Checks whether the round began or ended
#endregion

#region Key Configuration - Player Red, Player Blue
global.controlBinding[0] = ord("A"); //Player Red Left
global.controlBinding[1] = ord("D"); //Player Red Right
global.controlBinding[2] = vk_space; //Player Red Catch

global.controlBinding[3] = vk_left;	 //Player Blue Left
global.controlBinding[4] = vk_right; //Player Blue Right
global.controlBinding[5] = mb_left;  //Player Blue Catch

global.controlBinding[6] = ord("P"); //Pause Button
#endregion

#region Key Configuration - Control Type
global.controlType[0] = "keyboard"; //Player Red Left
global.controlType[1] = "keyboard"; //Player Red Right
global.controlType[2] = "keyboard"; //Player Red Catch

global.controlType[3] = "keyboard";	//Player Blue Left
global.controlType[4] = "keyboard";	//Player Blue Right
global.controlType[5] = "mouse";	//Player Blue Catch

global.controlType[6] = "keyboard"; //Pause Button
#endregion

//Set the Boundaries
var i;
for (i = 0; i < ((room_height)/32); i++)
{
instance_create_depth(0, 32 * i, 0, objSolid);
instance_create_depth(room_width - 32, 32 * i, 0, objSolid);
}

var j;
for (j = 0; j < ((room_width - 64)/32); j++)
{
instance_create_depth(32 + (32 * j), 0, 0, objSolid);
instance_create_depth(32 + (32 * j), room_height - 32, 0, objSolid);
}

var k;
for (k = 0; k < ((room_width - 64)/96); k++)
{
instance_create_depth(32 + (96 * k), room_height/2, 0, objBreakable);
}