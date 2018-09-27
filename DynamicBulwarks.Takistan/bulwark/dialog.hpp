class startBox_Dialog
{
    idd = 9999;
    movingEnabled = false;

    class controls
    {
    ////////////////////////////////////////////////////////
    // GUI EDITOR OUTPUT START (by Hilltop, v1.063, #Hofuqe)
    ////////////////////////////////////////////////////////
	
	// BOX
	
class startBox_rscPicture: RscPicture
        {
            idc = 1200;
            text = "#(argb,8,8,3)color(0.1,0.1,0.1,0.8)";
            x = 0.3 * safezoneW + safezoneX;
            y = 0.07 * safezoneH + safezoneY;
            w = 0.4 * safezoneW;
            h =  0.8 * safezoneH;
        };
	
	// BUILDITEMS
	
        class startBox_buildList: RscListbox
        {
            idc = 1500;
            x = 0.31 * safezoneW + safezoneX;
            y = 0.10 * safezoneH + safezoneY;
            w = 0.185 * safezoneW;
            h = 0.3 * safezoneH;
        };
		
        class startBox_buildButton: RscButton
        {
            idc = 1600;
            text = "Purchase Building";
            x = 0.309 * safezoneW + safezoneX;
            y = 0.41 * safezoneH + safezoneY;
            w = 0.185 * safezoneW;
            h = 0.04 * safezoneH;
            action = "_nil=[]ExecVM ""bulwark\buildpurchase.sqf""";
        };
		
		
		// SUPPORT

        class startBox_supportLst: RscListbox
        {
            idc = 1501;
            x = 0.505 * safezoneW + safezoneX;
            y = 0.10 * safezoneH + safezoneY;
            w = 0.185 * safezoneW;
            h = 0.3 * safezoneH;
        };
        class startBox_supportButton: RscButton
        {
            idc = 1601;
            text = "Purchase Support";
            x = 0.505 * safezoneW + safezoneX;
            y = 0.41 * safezoneH + safezoneY;
            w = 0.185 * safezoneW;
            h = 0.04 * safezoneH;
            action = "_nil=[]ExecVM ""supports\purchase.sqf""";
        };
		
		// VEHICLE
		
        class startBox_vehicleList: RscListbox
        {
            idc = 1502;
            x = 0.31 * safezoneW + safezoneX;
            y = 0.46 * safezoneH + safezoneY;
            w = 0.185 * safezoneW;
            h = 0.3 * safezoneH;
        };
		
		class startBox_vehicleButton: RscButton
        {
            idc = 1502;
            text = "Purchase Vehicle";
            x = 0.309 * safezoneW + safezoneX;
            y = 0.8 * safezoneH + safezoneY;
            w = 0.185 * safezoneW;
            h = 0.04 * safezoneH;
            action = "_nil=[]ExecVM ""vehicles\purchase.sqf""";
        };
		
		// Items
		
        class startBox_itemList: RscListbox
        {
            idc = 1503;
            x = 0.505 * safezoneW + safezoneX;
            y = 0.46 * safezoneH + safezoneY;
            w = 0.185 * safezoneW;
            h = 0.3 * safezoneH;
        };
		
		class startBox_itemButton: RscButton
        {
            idc = 1503;
            text = "Purchase Item";
            x = 0.505 * safezoneW + safezoneX;
            y = 0.8 * safezoneH + safezoneY;
            w = 0.185 * safezoneW;
            h = 0.04 * safezoneH;
            action = "_nil=[]ExecVM ""bulwark\itempurchase.sqf""";
        };

        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////

  };
};
