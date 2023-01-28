// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

PlayerCollision();


//update Sprite INdex
var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if(_oldSprite != sprite_index) localFrame = 0;


//Udate Image index
PlayerAnimateSprite();

if(keyAttack)
{
	state = PlayerStateAttack;
	stateAttack = AttackSlash;
}



if (keyActivate)
{
	var _activateX = lengthdir_x(10, direction);
	var _activateY = lengthdir_y(10, direction);
	activate = instance_position(x+_activateX, y+_activateY, pEntity);
	
	if (activate == noone || activate.entityActivateScript == -1)
	{
		
		if (global.iLifted != noone)
		{
			PlayerThrow();
		}
		else
		{
		state = PlayerStateRoll;
	    moveDistanceRemaining = distanceRoll;
		}
	}
	else
	{
	   ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
	   
	   if (activate.entityNPC)
	   {
		   with (activate)
		   {
			   direction = point_direction(x,y,other.x,other.y);
		   }
	}
}

}
}
