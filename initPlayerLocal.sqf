// Initialiserar dynamisk grupphantering.
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

// Initierar utrustning när spelaren går med i spelet.
(_this select 0) execVM "respawn\respawnLoadouts.sqf";