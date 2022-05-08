depth = -999;

for(var i = 0; i < array_length(global.party); i++;)
{
	//Actual HP
	hundreds = string_char_at(global.hp[i], 1);
	tens = string_char_at(global.hp[i], 2);
	ones = string_char_at(global.hp[i], 3);

	//Numbers shown in screen
	showH = real(hundreds) * 8;
	showT = real(tens) * 8;
	showO = real(ones) * 8;
}
