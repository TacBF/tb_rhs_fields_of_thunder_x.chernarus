_respawn = _this select 0;

if !(_respawn) then {
	waitUntil {!(isNull player)};
	waitUntil {player == player};
};

_ADMINUIDS = ["76561198009089772"]; // Gunther.S
if !(isMultiplayer) then { _ADMINUIDS pushBack "_SP_PLAYER_"; };

if (getPlayerUID player in _ADMINUIDS) then {
	player addAction ["<t color='#FF0000'>Camera</t>", "gcam\gcam.sqf", [], -10, false, true, "", "true"];
	player addEventHandler ["Respawn", "[true] execVM ADMINCAM.sqf"];
};