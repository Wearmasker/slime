// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateDead(){
hSpeed = 0;
vSpeed = 0;

if (sprite_index != sPlayerDie) && (sprite_index != sPlayerDead)
{
	sprite_index = sPlayerDie;
	image_index = 0;
	image_speed = 0.7;
}

  if (image_index + image_speed > image_number)
  {
	  if (sprite_index == sPlayerDie)
	  {
		  image_speed = max(0, image_speed-00.3);
		  if(image_speed < 0.07)
		  {
			  image_index = 0;
			  sprite_index = sPlayerDead;
			  image_speed = 1.0;
		  }
	  }
	  else
	  {
		  image_speed = 0;
		  image_index = image_number-1;
		  global.targetX = -1;
		  global.targetY = -1;
		  RoomTransition(TRANS_TYPE.SLIDE,rVillage);
	  }
}
}