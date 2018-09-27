/**
*  fn_supplydrop
*
*  Calls VTOL to drop a group of paratroopers on the specified location
*
*  Domain: Server
**/
params ["_player", "_targetPos", "_unitCount", "_aircraft", "_classList"];

_angle = round random 180;
_height = 300;
_offsX = 0;
_offsY = 1000;
_pointX = _offsX*(cos _angle) - _offsY*(sin _angle);
_pointY = _offsX*(sin _angle) + _offsY*(cos _angle);

_dropStart  = _targetPos vectorAdd [_pointX, _pointY, _height];
_dropTarget = [(_targetPos select 0), (_targetPos select 1), 200];
_dropEnd    = _targetPos vectorAdd [-_pointX*2, -_pointY*2, _height];;

_targetSmoker = "SmokeShellGreen" createVehicle (_targetPos vectorAdd [0,0,0.3]);

_agSpawn = [_dropStart, 0, _aircraft, WEST] call bis_fnc_spawnvehicle;
_agVehicle = _agSpawn select 0;	//the aircraft
_agCrew = _agSpawn select 1;	//the units that make up the crew
_ag = _agSpawn select 2;	//the group
{_x allowFleeing 0} forEach units _ag;

_agVehicle flyInHeight 100;
_agVehicle setpos [getposATL _agVehicle select 0, getposATL _agVehicle select 1, _height];

_relDir = [_dropStart, _targetPos] call BIS_fnc_dirTo;
_agVehicle setdir _relDir;

paraTroopLatch = false;

_waypoint0 = _ag addwaypoint[_dropTarget, 0];
_waypoint0 setwaypointtype "Move";
_waypoint0 setWaypointCompletionRadius 5;
_waypoint0 setWaypointStatements ["true", "paraTroopLatch = true;"];

_waypoint1 = _ag addwaypoint[_dropEnd, 0];
_waypoint1 setwaypointtype "Move";

// Drop cargo
_playerCount = count playableUnits;
_parachute = "B_Parachute_02_F" CreateVehicle [0,0,0];
_parachute setPos [getPos _agVehicle select 0, getPos _agVehicle select 1, (getPos _agVehicle select 2)-5];
_supplyBox = createVehicle ["Cargonet_01_box_F", [0,0,0], [], 0, "CAN_COLLIDE"];
[_supplyBox, _cargo] remoteExec ["addAction", 0, true];
_supplyBox attachTo [_parachute, [0,0,0]];
_supplyBox allowDamage false;