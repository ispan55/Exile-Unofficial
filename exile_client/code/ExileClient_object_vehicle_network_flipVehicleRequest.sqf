/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_vehicleID","_vehicle","_offset","_pos"];
_vehicleID = _this select 0;
_vehicle = objectFromNetId _vehicleID;
if(local _vehicle)then
{
	_offset = _vehicle call ExileClient_util_model_getHeight;
	_pos = getPos _vehicle;
	_pos set [2,(_pos select 2) + (_offset / 3)];
	_vehicle setPos _pos;
}
else
{
	"FLIP: Local object is not local DEFUCK!" call ExileClient_util_log;
};
true