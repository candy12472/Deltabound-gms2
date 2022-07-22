//--------------Get Info Of An Item
function Scr_ItemInfo(_itemID)
{
	itemNameB = "";
	itemDescB = "";
	itemValueB = 0;
	itemHPB = 0;
	
	switch(_itemID)
	{
		case 0:
			itemNameB = "None"
			itemDescB = " "
			itemValueB = 0;
			itemHPB = 0;
		break;
		case 1:
			itemNameB = "Empanada"
			itemDescB = "Heals 100HP"
			itemValueB = 70;
			itemHPB = 0;
		break;
		case 2:
			itemNameB = "Churro"
			itemDescB = "Heals --HP"
			itemValueB = 0;
			itemHPB = 0;
		break;
		case 3:
			itemNameB = "Kids' Mojito"
			itemDescB = "A popular summer drink. \nHeals 50HP"
			itemValueB = 0;
			itemHPB = 50;
		break;
		case 4:
			itemNameB = "Onigiri"
			itemDescB = "A jelly donut. \nHeals 70HP"
			itemValueB = 0;
			itemHPB = 70;
		break;
		case 5:
			itemNameB = "Easter Egg"
			itemDescB = "The only easter egg you'll find here. \nHeals 75HP"
			itemValueB = 0;
			itemHPB = 75;
		break;
	}
}

