/// @description Insert description here
// You can write your code in this editor
randomize();

global.gamePaused = false;
global.textSpeed = .75;
global.targetRoom = -1;
global.targetX =  -1;
global.targetY = -1;
global.targetDirection= 0;
global.iLifted = noone;
global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;

global.iLifted = noone;
global.iCamera = instance_create_layer(0,0,layer,oCamera);
global.iUi = instance_create_layer(0,0,layer,oUI);





surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);

