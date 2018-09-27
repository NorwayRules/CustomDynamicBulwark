/**
*  ammoDrop
*
*  Actor for "FILL AMMO" action menu item
*
*  Domain: Client
**/

_shouldDelete = false;
_shouldDelete = _this select 3;

if (_shouldDelete == false) then {
  _ammoBox = _this select 0;
  _ammoPlayer = _this select 1;
  deleteVehicle _ammoBox;
}
else {
  _ammoPlayer = player;
}

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

if (_shouldDelete == true) then {
  [player, 2500] remoteExec ["killPoints_fnc_spend", 2];
}