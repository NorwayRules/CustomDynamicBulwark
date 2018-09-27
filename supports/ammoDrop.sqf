/**
*  ammoDrop
*
*  Actor for "FILL AMMO" action menu item
*
*  Domain: Client
**/

params[_shouldDelete]

if (_shouldDelete) then {
  _ammoBox = _this select 0;
  deleteVehicle _ammoBox;
}
_ammoPlayer = _this select 1;

_pWeap = primaryWeapon _ammoPlayer;
if (_pWeap != "") then {
  _ammoArray = getArray (configFile >> "CfgWeapons" >> _pWeap >> "magazines");
  _ammoToAdd = selectRandom _ammoArray;
  _ammoPlayer addMagazines [_ammoToAdd, 3];
};

_sWeap = secondaryWeapon _ammoPlayer;
if (_sWeap != "") then {
  _ammoArray = getArray (configFile >> "CfgWeapons" >> _sWeap >> "magazines");
  _ammoToAdd = selectRandom _ammoArray;
  _ammoPlayer addMagazines [_ammoToAdd, 3];
};

_hWeap = handgunWeapon _ammoPlayer;
if (_hWeap != "") then {
  _ammoArray = getArray (configFile >> "CfgWeapons" >> _hWeap >> "magazines");
  _ammoToAdd = selectRandom _ammoArray;
  _ammoPlayer addMagazines [_ammoToAdd, 3];
};

if (_shouldDelete) then {
  [player, 2500] remoteExec ["killPoints_fnc_spend", 2];
}