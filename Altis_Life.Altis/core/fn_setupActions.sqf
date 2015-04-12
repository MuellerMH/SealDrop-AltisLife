/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case west:
	{
		//Straßensperre aufheben
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Sperre aufheben</t>",life_fnc_packupmauer,"",0,false,false,"",' _mauer = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_mauer" && !isNil {(_mauer getVariable "item")}']];
		//Kleine Straßensperre aufheben
		life_actions = life_actions + [player addAction["<t color='#FF0000'>kleine Straßensperre aufheben</t>",life_fnc_packuproadbarrierfs,"",0,false,false,"",' _roadbarrierfs = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0; !isNil "_roadbarrierfs" && !isNil {(_roadbarrierfs getVariable "item")}']];
        //Nagelbänder aufheben
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Nagelband aufheben</t>",life_fnc_packupSpikes,"",0,false,false,"",' _spikes = nearestObjects[getPos player,["Land_Razorwire_F"],8] select 0; !isNil "_spikes" && !isNil {(_spikes getVariable "item")}']];
		//Aussteigen aus Fahrzeugen
		life_actions = life_actions + [player addAction["Aussteigen",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		//Hinsetzen
		life_actions = life_actions + [player addAction["Hinsetzen",life_fnc_sitDown,cursorTarget,10,false,false,"",' !isNull cursorTarget && (player distance cursorTarget) < 3 && (cursorTarget isKindOf "Land_CampingChair_V1_F" || cursorTarget isKindOf "Land_ChairWood_F" || cursorTarget isKindOf "Land_ChairPlastic_F")']];
		//Aufstehen
		life_actions = life_actions + [player addAction["Aufstehen", life_fnc_sitDown,cursorTarget,10,false,false,"",'life_sitting']];
		//Scheinwerfer aufheben
		life_actions = life_actions + [player addAction["<t color='#FF0000'>tragbarer Doppel-Scheinwerfer aufheben</t>",life_fnc_packupportablelightd,"",0,false,false,"",' _portablelightd = nearestObjects[getPos player,["Land_PortableLight_double_F"],8] select 0; !isNil "_portablelightd" && !isNil {(_portablelightd getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>tragbarer Scheinwerfer aufheben</t>",life_fnc_packupportablelight,"",0,false,false,"",' _portablelight = nearestObjects[getPos player,["Land_PortableLight_single_F"],8] select 0; !isNil "_portablelight" && !isNil {(_portablelight getVariable "item")}']];
		//Kegel aufheben
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Kegel aufheben</t>",life_fnc_packupkegel,"",0,false,false,"",' _kegel = nearestObjects[getPos player,["RoadCone_F"],8] select 0; !isNil "_kegel" && !isNil {(_kegel getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Kegel mit Blinker aufheben</t>",life_fnc_packupkegels,"",0,false,false,"",' _kegels = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_kegels" && !isNil {(_kegels getVariable "item")}']];
	};
	
	case civilian:
	{
		//Take The Organs
		life_actions = life_actions + [player addAction["Klaue Organe",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
		//Hinsetzen
		life_actions = life_actions + [player addAction["Hinsetzen",life_fnc_sitDown,cursorTarget,10,false,false,"",' !isNull cursorTarget && (player distance cursorTarget) < 3 && (cursorTarget isKindOf "Land_CampingChair_V1_F" || cursorTarget isKindOf "Land_ChairWood_F" || cursorTarget isKindOf "Land_ChairPlastic_F")']];
		//Aufstehen
		life_actions = life_actions + [player addAction["Aufstehen", life_fnc_sitDown,cursorTarget,10,false,false,"",'life_sitting']];
	};
	
	case independent:
	{
	    //Straßensperre aufheben
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Sperre aufheben</t>",life_fnc_packupmauer,"",0,false,false,"",' _mauer = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_mauer" && !isNil {(_mauer getVariable "item")}']];
	    //Kleine Straßensperre aufheben
		life_actions = life_actions + [player addAction["<t color='#FF0000'>kleine Straßensperre aufheben</t>",life_fnc_packuproadbarrierfs,"",0,false,false,"",' _roadbarrierfs = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0; !isNil "_roadbarrierfs" && !isNil {(_roadbarrierfs getVariable "item")}']];
		//Scheinwerfer aufheben
		life_actions = life_actions + [player addAction["<t color='#FF0000'>tragbarer Doppel-Scheinwerfer aufheben</t>",life_fnc_packupportablelightd,"",0,false,false,"",' _portablelightd = nearestObjects[getPos player,["Land_PortableLight_double_F"],8] select 0; !isNil "_portablelightd" && !isNil {(_portablelightd getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>tragbarer Scheinwerfer aufheben</t>",life_fnc_packupportablelight,"",0,false,false,"",' _portablelight = nearestObjects[getPos player,["Land_PortableLight_single_F"],8] select 0; !isNil "_portablelight" && !isNil {(_portablelight getVariable "item")}']];
		//Kegel aufheben
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Kegel aufheben</t>",life_fnc_packupkegel,"",0,false,false,"",' _kegel = nearestObjects[getPos player,["RoadCone_F"],8] select 0; !isNil "_kegel" && !isNil {(_kegel getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Kegel mit Blinker aufheben</t>",life_fnc_packupkegels,"",0,false,false,"",' _kegels = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_kegels" && !isNil {(_kegels getVariable "item")}']];
		//Nagelbänder aufheben
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Nagelband aufheben</t>",life_fnc_packupSpikes,"",0,false,false,"",' _spikes = nearestObjects[getPos player,["Land_Razorwire_F"],8] select 0; !isNil "_spikes" && !isNil {(_spikes getVariable "item")}']];
    };
};