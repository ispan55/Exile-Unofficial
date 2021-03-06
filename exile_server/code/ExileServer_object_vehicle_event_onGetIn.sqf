/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_vehicleObject","_unitObject"];
_vehicleObject = _this select 0;
if (isPlayer _unitObject) then
{
	if (_vehicleObject getVariable ["ExileIsPersistent", false]) then
	{
		[_unitObject, "advancedHintRequest", ["SpawnZoneVehicles"]] call ExileServer_system_network_send_to;
	};
};

if !(simulationEnabled _vehicleObject) then
{
	diag_log "ExileServer - Enabling simulation for disabled vehicle on player entry.";
	_vehicleObject enableSimulationGlobal true;
};

true