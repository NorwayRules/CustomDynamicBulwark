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
_itemClass = (BULWARK_ITEM select _index) select 2;

// Script was passed an invalid number
if(_itemClass == "") exitWith {};

if(player getVariable "killPoints" >= _shopPrice) then {
[player, _shopPrice] remoteExec ["killPoints_fnc_spend", 2];
player addWeapon _itemClass
} else {
    [format ["<t size='0.6' color='#ff3300'>Not enough points for %1!</t>", _shopName], -0, -0.02, 0.2] call BIS_fnc_dynamicText;
    objPurchase = false;
};


