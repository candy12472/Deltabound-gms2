//--------------Get Info Of An Item
function Scr_ItemInfo(_itemID)
{
	itemNameB = "";
	itemDescB = "";
	itemValueB = 0;
	
	switch(_itemID)
	{
		case 0:
			itemNameB = "None"
			itemDescB = " "
			itemValueB = 0;
		break;
		case 1:
			itemNameB = "Empanada"
			itemDescB = "Heals 100HP"
			itemValueB = 70;
		break;
		case 2:
			itemNameB = "Churro"
			itemDescB = "Heals --HP"
			itemValueB = 0;
		break;
		case 3:
			itemNameB = "Easter Egg"
			itemDescB = "The only easter egg you'll find here. \n Heals 75HP"
			itemValueB = 0;
		break;
		case 4:
			itemNameB = "Kids' Mojito"
			itemDescB = "A popular summer drink. \n Heals 50HP"
			itemValueB = 0;
		break;
		case 5:
			itemNameB = "Onigiri"
			itemDescB = "A jelly donut. \n Heals 70HP"
			itemValueB = 0;
		break;
	}
}

