/// @desc last edited by LunaticWyrm467
//---------------Per Frame
//-----Speed/Text Length
var temp_StrLen = string_length(global.text[global.txtNum]);

if star_i < temp_StrLen
{
	star_i += 0.5 * global.textSpeed;
}