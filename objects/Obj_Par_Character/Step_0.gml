//Set depth
Scr_Depth();

x = target.followX[steps];
y = target.followY[steps];
direction = target.followDir[steps];

var cardinalDir = round(direction / 45);
var totalFrames = sprite_get_number(sprite_index) / 8;

localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
image_index = localFrame + (cardinalDir * totalFrames)

if x != xprevious or y != yprevious
{
	sprite_index = walkSprite;
}
else
{
	sprite_index = idleSprite;
	image_index = cardinalDir;
}

if(localFrame >= totalFrames)
	localFrame -= totalFrames;
