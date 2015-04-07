waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Changelog"];
player createDiarySubject ["serverrules","Server Regeln"];
player createDiarySubject ["policerules","Polizei Gesetze"];
player createDiarySubject ["safezones","SafeZones"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Steuerung"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					Alle Änderungen stehen im Forum:  http://death-watch.de/

				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Death-Watch Changelog",
				"
					Das Changelog kannst du unter  http://death-watch.de/ einsehen.
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Bannable Offenses", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Cop Interaction", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Boats", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Aviation", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Vehicles", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Communication Rules", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"New Life Rule", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Don't Be A Dick!", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Crisis Negotiation",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"The Federal Reserve",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Aviation",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegal Areas", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrolling", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Fahrzeuge", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Geschwindigkeit", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Zuordnung", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Gefägnis und Tickets",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Legale Waffen", 
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Einsatz von Waffen",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Razzien",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Rangkette",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Sonstiges",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak Regeln",
				"
				1. Alle Polizisten müssen sich auf dem TeamSpeak befinden wärend sie als Polizist eingeloggt sind.<br/>
				2. Alles weitere unter  http://death-watch.de/ zu finden<br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebellen Regeln",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Regeln",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Fahrzeuge",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Waffen",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Rohstoffe",
				"
				Alle Regeln findest du in unserem Forum !  http://death-watch.de/!<br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"Death-Watch Steuerung",
				"
				Z: Spieler Menü<br/>
				U: Fahrzeuge auf/zuschließen<br/>
				U: Häuser Öffnen/Schließen<br/>
				F: Polizei Sirene<br/>
				T: Vehicle Trunk<br/>
				Ö: Polizei Warnung<br/>
				Ä: Cop Schranken öffnen<br/>
				O: Cops Nagelbänder legen<br/>
				^: Spitzhacke<br/>
				Left Shift + 1: Telefon<br/>
				Left Shift + 2: WantedList<br/>
				Left Shift + 3: Anzeige erstatten<br/>
				Left Shift + R: Festnehmen<br/>
				Left Shift + G: Ergeben<br/>
				Left Shift + V: Knockout<br/>
				Left Shift + O: Civ Restrain<br/>
				Left Shift + Space: Springen<br/>
				Left Shift + H: Waffe Holstern<br/>
				Left Windows: Housing option<br/>
				Left Windows: Farmen an Feldern<br/>
				Left Windows: Spieler Interaktionsmenü<br/>
				"
		]
	];