 /// @description Insert description here
// You can write your code in this editor
if (!global.gamePaused)
{
	depth = -bbox_bottom;
	if (lifted) && (instance_exists(oPlayer))
	{
		if (oPlayer.sprite_index != sPlayerLift)
		{
			x = oPlayer.x;
			y = oPlayer.y;
			z = 13;
			depth = oPlayer.depth-1;
		}
	}


if (!lifted)
{
	if(thrown)
	{
		throwDistanceTravelled = min(throwDistanceTravelled+3,throwDistance);
		x = xstart + lengthdir_x(throwDistanceTravelled, direction);
		y = ystart + lengthdir_y(throwDistanceTravelled, direction);
		if (tilemap_get_at_pixel(collisionMap,x,y) > 0)
		{
			thrown = false
			grav = 0.1;
			
		}
		throwPercent = throwStartPercent + lerp(0, 1 - throwStartPercent, throwTravelled / throwDistance);
		z = throwPeakHeight * sin(throwPercent * pi);
		if (throwDistance == throwTravelled)
		{
			thrown = false;
			if (entityThrowBreak)instance_destroy();
		}
	}
	else
	{
		if ( z > 0)
		{
			z = max(z - grav, 0);
			grav += 0.1;
			if (z == 0) && (entityThrowBreak) instance_destroy();
		}
		else
		{
			grav = 0.1;
		}
}

}

}