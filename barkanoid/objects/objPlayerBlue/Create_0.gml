//Player Two
hasBall = false;
canHasBall = false;
ballInRange = false;
isAI = true;

//Player Stats
playerSpeed = 3;
playerReach = 3;
playerPower = 3;
playerBite = 3;

//AI Stats
aiReact = room_speed * (0.8 + random(0.4));
aiReactF = 0;

//Control Parameters
holdAlarm = (playerBite + 2) * room_speed;

//Draw Variables
currentSpriteWidth = sprite_width;
currentSpriteHeight = sprite_height;