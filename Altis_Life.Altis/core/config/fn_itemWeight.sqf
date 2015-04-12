/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {4};
	case "oilp": {3};
	case "heroinu": {4};
	case "heroinp": {3};
	case "cannabis": {4};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {8};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {5};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {3};
	case "salt": {4};
	case "salt_r": {3};
	case "glass": {1};
	case "diamond": {4};
	case "diamondc": {2};
	case "cocaine": {4};
	case "cocainep": {3};
	case "spikeStrip": {5};
	case "rock": {4};
	case "cement": {3};
	case "goldbar": {10};
	case "wine": {4};
	case "grapes": {3};
	case "methu": {4};
	case "methp": {3};
	case "battery": {1};
	case "blastingcharge": {30};
	case "boltcutter": {10};
	case "defusekit": {1};
	case "painkillers": {5};
	case "morphium": {6};
	case "zipties": {1};
	case "storagesmall": {10};
	case "storagebig": {20};
	case "mauer": {15};
	case "rye": {3};
	case "hops": {3};
	case "yeast": {3};
	case "cornmeal": {2};
	case "mash": {4};
	case "whiskey": {5};
	case "beerp": {4};
	case "moonshine": {5};
	case "bottledwhiskey": {5};
	case "bottledbeer": {4};
	case "bottledshine": {5};
	case "bottles": {1};
	case "puranium": {6};
    case "ipuranium": {3};
    case "uranium1": {2};
    case "uranium2": {1};
    case "uranium3": {4};
    case "uranium4": {4};
    case "uranium": {4};
	case "kidney": {20};
	case "scalpel": {2};
	case "peach": {2};
	case "roadbarrierfs": {8};
	case "portablelightd": {10};
	case "portablelight": {10};
	case "kegel": {1};
	case "kegels": {1};
	default {1};
};
