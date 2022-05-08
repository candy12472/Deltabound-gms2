//--------------Get Info Of Player's Items
function Scr_ItemInfoAll()
{
	for(var i = 0; i < 14; i += 1;)
	{
		itemID = global.item[i];
		Scr_ItemInfo(itemID);
		global.itemName[i] = itemNameB;
		global.itemDesc[i] = itemDescB;
		global.itemValue[i] = itemValueB;
	}
}