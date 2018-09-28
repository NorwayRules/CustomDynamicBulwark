_player = _this select 0;

_kartPos = [_player, 1, 15, 5, 0, 30, 0] call BIS_fnc_findSafePos;
_crazyKart = createVehicle ["B_MRAP_01_gmg_F", _kartPos, [], 0, "CAN_COLLIDE"];

_player moveInDriver _crazyKart;