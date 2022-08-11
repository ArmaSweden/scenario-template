if (player getVariable ["Role", "Disabled"] != "Disabled") then {
    [player, [missionNamespace, "PlayerLoadout"]] call BIS_fnc_loadInventory;
};