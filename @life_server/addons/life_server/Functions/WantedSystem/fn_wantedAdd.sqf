/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["Fahren auf der flaschen Fahrbahn",15000]};
	case "187": {_type = ["Fahren abseits der Fahrbahn",25000]};
	case "901": {_type = ["Falschparken",10000]};
	case "261": {_type = ["Führen eines illegalen Fahrzeuges",50000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Fahren ohne PKW Führerschein",10000]};
	case "215": {_type = ["Fahren ohne LKW Führerschein",25000]};
	case "213": {_type = ["Führen eines gestohlenen Fahrzeuges",50000]};
	case "211": {_type = ["Fahren ohne Licht",10000]};
	case "207": {_type = ["Umgehen von Checkpoints",100000]};
	case "207A": {_type = ["Geschwindigkeitsübertretungen 10-20 km/h",10000]};
	case "487": {_type = ["Geschwindigkeitsübertretungen ab 20 km/h",25000]};
	case "488": {_type = ["Geschwindigkeitsübertretung in Extremfällen",50000]};
	case "480": {_type = ["Fahrerflucht",50000]};
	case "481": {_type = ["Fliegen ohne Pilotenschein",50000]};
	case "482": {_type = ["Fliegen ohne Kollisionslichter",10000]};
	case "483": {_type = ["Fliegen unter der mindest Höhe",50000]};
	case "459": {_type = ["Landen mit Helis in Städten ohne Erlaubnis der Polizei",200000]};
	case "390": {_type = ["Fliegen mit illegalen Flugobjekten",50000]};
	
	case "1": {_type = ["Durch Befragung d. Drogenhändlers entlarvt",100000]};
    case "2": {_type = ["Drogenkonsum",50000]};
    case "3": {_type = ["Stehlen aus Rucksäcken & Autos außerhalb von SafeZones",50000]};
    case "4": {_type = ["Versuchter Diebstahl eines Fahrzeuges",25000]};
    case "5": {_type = ["Diebstahl eines Fahrzeuges",50000]};
    case "6": {_type = ["Versuchter Diebstahl eines Einsatzfahrzeuges",75000]};
    case "7": {_type = ["Diebstahl eines Einsatzfahrzeuges",10000]};
    case "8": {_type = ["Diebstahl von Polizeifahrzeugen",25000]};
    case "9": {_type = ["Zerstörung eines Einsatzfahrzeuges",10000]};
    case "10": {_type = ["Versuchter Mord", 100000]};
    case "11": {_type = ["Mord",500000]};
    case "12": {_type = ["Wilderei",10000]};
    case "13": {_type = ["Beihilfe bei einer Straftat",200000]};
    case "14": {_type = ["Unfälle mit Todesfolge ohne Meldung",10000]};
    case "15": {_type = ["Versuchter Raubüberfall",50000]};
    case "16": {_type = ["Bewaffneter Raubüberfall",100000]};
    case "17": {_type = ["Banküberfall (für alle Beteiligten)",500000]};
    case "18": {_type = ["Nieren Diebstahl",200000]};
    case "19": {_type = ["Widerstand gegen die Staatsgewalt",25000]};
    case "20": {_type = ["Beamtenbeleidigung",25000]};
    case "21": {_type = ["Behinderung der Justiz",25000]};
    case "22": {_type = ["Nichtbeachtung polizeilicher Anweisung",25000]};
    case "23": {_type = ["Gefängnisflucht",200000]};
    case "24": {_type = ["Verletzung von Sperrgebieten (Gefängnis, Bank, temporär polizeilich gesperrte Gebiete)",100000]};
    case "25": {_type = ["Versuchte Geiselnahme/Entführung",200000]};
    case "26": {_type = ["Geiselnahme/Entführung",400000]};
    case "27": {_type = ["Vermumungsverbot am Kavala-Markt",5000]};
    case "28": {_type = ["Lärmbelästigung",10000]};
    case "29": {_type = ["Aufstand",50000]};
    case "30": {_type = ["Illegale Straßensperren",100000]};
    case "31": {_type = ["Angriff/Belagerung von Hauptstädten",500000]};
    case "32": {_type = ["Erpressung",50000]};
    case "33": {_type = ["Tankstellenraub",25000]};
    case "34": {_type = ["Handel mit exotischen Gütern",100000]};
	case "35": {_type = ["Kraftwerk manipulation",100000]};
	
	case "120S": {_type = ["Waffenbesitz ohne Lizenz",25000]};
	case "120H": {_type = ["Besitz einer illegalen Waffe oder Ausrüstung",50000]};
	case "120WL": {_type = ["Schusswaffengebrauch innerhalb von Städten",50000]};
	case "120FS": {_type = ["Schusswaffengebrauch gegen Staatsdiener/staatliche Fahrzeuge",100000]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};