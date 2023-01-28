// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AttackSlash(){
if (sprite_index != sPlayerAttackSlash)
{
	sprite_index = sPlayerAttackSlash;
	localFrame = 0;
	image_index = 0;
	
	
	if (!ds_exists(hitByAttack, ds_type_list)) hitByAttack = ds_list_create();
	ds_list_clear(hitByAttack);
}

CalcAttack(sPlayerAttackSlashHB);

PlayerAnimateSprite();

if (animationEnd)
{
	state = PlayerStateFree;
	animationEnd = false;

}
}