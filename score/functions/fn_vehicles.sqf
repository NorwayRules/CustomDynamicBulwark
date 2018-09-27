/**
*  fn_vehicles
*
*  
*
*  Domain: Client/Event
**/

_player   = _this select 0;
_target   = _this select 1;
_type     = _this select 2;
_aircraft = _this select 3;

switch (_type) do {
	case ("tank"): {
    [_player] call supports_fnc_tank;
    };
};
