for(var i = 0; i < 3; i++;)
{
	if string(string_char_at(global.hp[0], i + 1)) != "" && global.hp[0] > 0
	{
		num[i] = real(string(string_char_at(global.hp[0], i + 1)))
	}
	else
	{
		num[i] = 0;
	}
}

show_debug_message(global.hp[0])