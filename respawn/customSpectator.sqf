if (playerRespawnTime <= 12 || isNull player) exitWith {};

sleep 3;

_overlayLayer = 100;
_overlayLayer cutText ["", "BLACK OUT", 0.25];

sleep 2;

["close"] call BIS_fnc_showRespawnMenu;
["Initialize", [player, [blufor], false, false, true, true, true, false, false, true]] call BIS_fnc_EGSpectator;

_layer = "BIS_fnc_respawnCounter" call bis_fnc_rscLayer;
_layer cutRsc ["RscRespawnCounter","PLAIN"];

sleep 0.5;

_overlayLayer cutText ["","BLACK IN", 0.25];

waitUntil{playerRespawnTime < 1.5};

_overlayLayer cutText ["","BLACK OUT", 0.25];

sleep 0.25;

["Terminate"] call BIS_fnc_EGSpectator;

sleep 0.5;

["open"] call BIS_fnc_showRespawnMenu;

sleep 0.25;

_layer cutText ["","PLAIN", 0.5];

sleep 1;

[] spawn {
	_time = time;
	waitUntil { !isNull(findDisplay -1) || time > _time + 10 };
	(findDisplay -1) closeDisplay 2;
};

_overlayLayer cutText ["","BLACK IN"];




sleep 20;
endMission "END1";