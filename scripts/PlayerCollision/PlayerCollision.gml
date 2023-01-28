// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCollision(){
    var _collision = false;
	var _entityList = ds_list_create();

// Horizontal Tiles
if (tilemap_get_at_pixel(collisionMap, x +hSpeed, y))
{
	x -= x mod TILE_SIZE;
	if (sign(hSpeed) == 1) x += TILE_SIZE -1;
	hSpeed = 0;
	_collision = true;
}
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed -3, y))
	{	hSpeed = 0;
		_collision = true;	
		} 
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed + 3, y))
	{	hSpeed = 0;
		_collision = true;	
		}
		
 var _entityCount = instance_position_list(x + hSpeed, y, pEntity, _entityList, false);
 var _snapX;
 while (_entityCount > 0)
 {
	 var _entityCheck = _entityList[| 0];
	 if (_entityCheck.entityCollision == true)
	 { 
		 if (sign(hSpeed) == -1) _snapX = _entityCheck.bbox_right+1;
		 else _snapX =_entityCheck.bbox_left-1;
		 x = _snapX;
		 hSpeed = 0;
		 _collision = true;
		 _entityCount = 0;
	 }
	 ds_list_delete(_entityList,0);
	 _entityCount--;
	 }



 
	// Horizontal Move Commit
	x += hSpeed;	
	
	ds_list_clear(_entityList)
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed - 8))
	{	vSpeed = 0;
		_collision = true;	}
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed))
	{	vSpeed = 0;
		_collision = true;	}
	
	// Horizontal Move Commit
	y += vSpeed;


    return _collision;
}