_role = player getVariable ["Role", "Disabled"];

if (_role == "Disabled") exitWith {};

if (isClass(configfile >> "CfgPatches" >> "ace_common")) then {

	// ACE is loaded

	if (headgear player != "sfp_m90w_helmet_peltor") then {
		player addItem "ACE_EarPlugs";
	};

	player addItem "ACE_MapTools";
	player addItem "ACE_microDAGR";
	player addItem "ACE_Flashlight_XL50";
	player addItem "ACE_IR_Strobe_Item";
	for "_i" from 1 to 2 do {player addItem "ACE_CableTie";};
	player addMagazine "ACE_Chemlight_HiYellow";
	player addMagazine "ACE_Chemlight_HiBlue";

	for "_i" from 1 to 3 do {player addItem "ACE_quikclot";};
	for "_i" from 1 to 3 do {player addItem "ACE_elasticBandage";};
	for "_i" from 1 to 3 do {player addItem "ACE_packingBandage";};
	for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
	for "_i" from 1 to 2 do {player addItem "ACE_splint";};
	for "_i" from 1 to 2 do {player addItem "ACE_epinephrine";};
	for "_i" from 1 to 2 do {player addItem "ACE_morphine";};

	if (isClass(configfile >> "CfgPatches" >> "aceP_main")) then {

		// ACE Pharmacy is loaded

		for "_i" from 1 to 1 do {player addItem "kat_Painkiller";};

	};

	switch (_role) do {
		
		case "Combat Life Saver": {

			for "_i" from 1 to 20 do {player addItemToBackpack "ACE_quikclot";};
			for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
			for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
			for "_i" from 1 to 6 do {player addItemToBackpack "ACE_tourniquet";};
			for "_i" from 1 to 6 do {player addItemToBackpack "ACE_splint";};
			for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 1 do {player addItemToBackpack "ACE_personalAidKit";};
			for "_i" from 1 to 1 do {player addItemToBackpack "ACE_surgicalKit";};
			for "_i" from 1 to 3 do {player addItemToBackpack "ACE_salineIV_500";};
			for "_i" from 1 to 5 do {player addItemToBackpack "ACE_salineIV_250";};
			for "_i" from 1 to 4 do {player addItemToBackpack "ACE_salineIV";};
			for "_i" from 1 to 3 do {player addItemToBackpack "ACE_bodyBag";};

			if (isClass(configfile >> "CfgPatches" >> "aceP_main")) then {

				// ACE Pharmacy is loaded

				for "_i" from 1 to 25 do {player addItemToBackpack "kat_IV_16";};
				for "_i" from 1 to 10 do {player addItemToBackpack "kat_IO_FAST";};
				for "_i" from 1 to 4 do {player addItemToBackpack "kat_naloxone";};
				for "_i" from 1 to 8 do {player addItemToBackpack "kat_TXA";};
				for "_i" from 1 to 2 do {player addItemToBackpack "kat_Carbonate";};
				for "_i" from 1 to 5 do {player addItemToBackpack "kat_Painkiller";};

			};

		};

		case "Helicopter Crewman (Medic)": {

			for "_i" from 1 to 20 do {player addItemToBackpack "ACE_quikclot";};
			for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
			for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
			for "_i" from 1 to 6 do {player addItemToBackpack "ACE_tourniquet";};
			for "_i" from 1 to 6 do {player addItemToBackpack "ACE_splint";};
			for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 1 do {player addItemToBackpack "ACE_personalAidKit";};
			for "_i" from 1 to 1 do {player addItemToBackpack "ACE_surgicalKit";};
			for "_i" from 1 to 3 do {player addItemToBackpack "ACE_salineIV_500";};
			for "_i" from 1 to 5 do {player addItemToBackpack "ACE_salineIV_250";};
			for "_i" from 1 to 4 do {player addItemToBackpack "ACE_salineIV";};
			for "_i" from 1 to 3 do {player addItemToBackpack "ACE_bodyBag";};

			if (isClass(configfile >> "CfgPatches" >> "aceP_main")) then {

				// ACE Pharmacy is loaded

				for "_i" from 1 to 25 do {player addItemToBackpack "kat_IV_16";};
				for "_i" from 1 to 10 do {player addItemToBackpack "kat_IO_FAST";};
				for "_i" from 1 to 4 do {player addItemToBackpack "kat_naloxone";};
				for "_i" from 1 to 8 do {player addItemToBackpack "kat_TXA";};
				for "_i" from 1 to 2 do {player addItemToBackpack "kat_Carbonate";};
				for "_i" from 1 to 6 do {player addItemToBackpack "kat_Painkiller";};

			};

		};

		case "Engineer": {

			player addItemToBackpack "ACE_VMM3";
			player addItemToBackpack "ACE_SpraypaintRed";
			player addItemToBackpack "ACE_SpraypaintBlue";
			player addItemToBackpack "ACE_DefusalKit";
			player addItemToBackpack "ACE_wirecutter";
			player addItemToBackpack "ACE_EntrenchingTool";

		};

		case "JTAC": {

			player addWeapon "ACE_Vector";

		};

		case "Marksman": {
			if (isClass(configfile >> "CfgPatches" >> "ASE_AimpointCS")) then {
				player addItemToBackpack "ASE_optic_AimpointCS";
			} else {
				player addItemToBackpack "sfp_optic_aimpoint";
			};

		};

		case "Sniper": {

			player addWeapon "ACE_Vector";
			player addItem "ACE_ATragMX";
			player addItem "ACE_Kestrel4500";
			
		};

		case "Spotter": {

			player addWeapon "ACE_Vector";
			player addItem "ACE_ATragMX";
			player addItem "ACE_Kestrel4500";
			player addItemToBackpack "ACE_SpottingScope";

		};
		
	};

} else {

	// ACE is not loaded

	switch (_role) do {

		case "Combat Life Saver": {

			player addItemToBackpack "Medikit";
			for "_i" from 1 to 12 do {player addItemToBackpack "FirstAidKit";};

		};

		case "Helicopter Crewman (Medic)": {

			player addItemToBackpack "Medikit";
			for "_i" from 1 to 12 do {player addItemToBackpack "FirstAidKit";};

		};

		case "Engineer": {

			player addItemToBackpack "MineDetector";

		};

		case "JTAC": {

			player addWeapon "CUP_Vector21Nite";

		};

		case "Sniper": {

			player addWeapon "CUP_Vector21Nite";

		};

		case "Spotter": {

			player addWeapon "CUP_Vector21Nite";

		};

	};

	player linkItem "ItemGPS";
	player addMagazine "Chemlight_yellow";
	player addMagazine "Chemlight_blue";
	for "_i" from 1 to 3 do {player addItem "FirstAidKit";};

};

if (isClass(configfile >> "CfgPatches" >> "acex_main")) then {

	// ACEX is loaded

	player additem "acex_intelitems_notepad";

};

if (isClass(configfile >> "CfgPatches" >> "ASE_AimpointCS")) then {

	// Arma Sweden Extras is loaded

	if ("sfp_optic_aimpoint" in primaryWeaponItems player) then {

		player removePrimaryWeaponItem "sfp_optic_aimpoint";
		player addPrimaryWeaponItem "ASE_optic_AimpointCS";

	};
};

[player, [missionNamespace, "PlayerLoadout"]] call BIS_fnc_saveInventory;