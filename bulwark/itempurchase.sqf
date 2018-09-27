/**
*  bulwark/purchase
*
*  Actor for the "Purchase item" dialog button
*
*  Domain: Client
**/

_index = lbCurSel 1503;
shopVehic = objNull;

_shopPrice = (BULWARK_ITEM select _index) select 0;
_shopName  = (BULWARK_ITEM select _index) select 1;
_ammoClass = (BULWARK_ITEM select _index) select 2;

// Script was passed an invalid number
if(_ammoClass == "") exitWith {};

if(player getVariable "killPoints" >= _shopPrice) then {
_preCount = {_x == _ammoClass} count magazines player;
player addMagazines [_ammoClass, 1];
_postCount = {_x == _ammoClass} count magazines player;
if (_preCount != _postCount) then {
  [player, _shopPrice] remoteExec ["killPoints_fnc_spend", 2];
};
} else {
    [format ["<t size='0.6' color='#ff3300'>Not enough points for %1!</t>", _shopName], -0, -0.02, 0.2] call BIS_fnc_dynamicText;
    objPurchase = false;
};


