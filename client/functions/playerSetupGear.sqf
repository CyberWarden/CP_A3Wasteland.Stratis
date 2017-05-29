// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: playerSetupGear.sqf
//	@file Author: [GoT] JoSchaap, AgentRev

private ["_player", "_uniform", "_vest", "_headgear", "_goggles"];
_player = _this;

// Clothing is now defined in "client\functions\getDefaultClothing.sqf"

_uniform = [_player, "uniform"] call getDefaultClothing;
_vest = [_player, "vest"] call getDefaultClothing;
_headgear = [_player, "headgear"] call getDefaultClothing;
_goggles = [_player, "goggles"] call getDefaultClothing;

if (_uniform != "") then { _player addUniform _uniform };
if (_vest != "") then { _player addVest _vest };
if (_headgear != "") then { _player addHeadgear _headgear };
if (_goggles != "") then { _player addGoggles _goggles };

sleep 0.1;

// Remove GPS
_player unlinkItem "ItemGPS";

// Remove radio
//_player unlinkItem "ItemRadio";

// Remove NVG
if (hmd _player != "") then { _player unlinkItem hmd _player };

// Add NVG
_player linkItem "NVGoggles";

_player addBackpack "B_Carryall_oli"; //BackPack
_player addVest "V_PlateCarrierGL_rgr";

switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "Binocular";
		_player addWeapon "ItemGPS";
		_player addMagazine "150Rnd_762x54_Box";
		_player addWeapon "LMG_Zafir_F";
		_player addMagazine "150Rnd_762x54_Box";
		_player addPrimaryWeaponItem "optic_aco_smg";
		_player addPrimaryWeaponItem "acc_flashlight";
		_player addMagazine "9Rnd_45ACP_Mag";
		_player addWeapon "hgun_ACPC2_F";
		_player addMagazine "9Rnd_45ACP_Mag";
		_player addItem "SmokeShell";
		_player removeItem "FirstAidKit";
		_player addItem "Medikit";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "Binocular";
		_player addWeapon "ItemGPS";
		_player addMagazine "30Rnd_65x39_caseless_mag";
		_player addMagazine "UGL_FlareWhite_F";
		_player addWeapon "arifle_MX_Hamr_pointer_F";
		_player addWeapon "launch_RPG32_F";
		_player addMagazine "30Rnd_65x39_caseless_mag";
		_player addMagazine "RPG32_F";
		_player addMagazine "9Rnd_45ACP_Mag";
		_player addWeapon "hgun_ACPC2_F";
		_player addMagazine "9Rnd_45ACP_Mag";
		_player addItem "FirstAidKit";
		_player addItem "SmokeShell";
		_player addItem "MineDetector";
		_player addItem "Toolkit";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "Binocular";
		_player addWeapon "ItemGPS";
		_player addMagazine "10Rnd_762x54_Mag";
		_player addWeapon "srifle_DMR_01_F";
		_player addMagazine ["10Rnd_762x54_Mag", 5];
		_player addPrimaryWeaponItem "optic_MRCO";
		_player addPrimaryWeaponItem "acc_pointer_IR";
		_player addMagazine "9Rnd_45ACP_Mag";
		_player addWeapon "hgun_ACPC2_F";
		_player addWeaponItem ["hgun_ACPC2_F", "muzzle_snds_acp"];
		_player addMagazine "9Rnd_45ACP_Mag";
		_player addItem "FirstAidKit";
		_player addItem "MiniGrenade";
		_player addWeapon "Rangefinder";
	};
	case (["_diver_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "Binocular";
		_player addWeapon "ItemGPS";
		_player addMagazine "20Rnd_556x45_UW_mag";
		_player addWeapon "arifle_SDAR_F";
		_player addMagazine "20Rnd_556x45_UW_mag";
		_player addMagazine "20Rnd_556x45_UW_mag";
		_player addMagazine "11Rnd_45ACP_Mag";
		_player addWeapon "hgun_Pistol_heavy_01_F";
		_player addMagazine "11Rnd_45ACP_Mag";
		_player addWeaponItem ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp"];
		_player addItem "FirstAidKit";
		_player addItem "HandGrenade";
	};
};

/*switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		_player removeItem "FirstAidKit";
		_player addItem "Medikit";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		_player addItem "MineDetector";
		_player addItem "Toolkit";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "Rangefinder";
	};
};
*/
if (_player == player) then
{
	thirstLevel = 100;
	hungerLevel = 100;
};
