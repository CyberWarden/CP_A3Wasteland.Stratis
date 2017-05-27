//Configuration for Airdrop Assistance
//Author: Apoc

APOC_AA_coolDownTime = 60; //Expressed in sec

APOC_AA_VehOptions =
[ // ["Menu Text",		ItemClassname,				Price,	"Drop Type"]
["Quadbike (Civilian)", "C_Quadbike_01_F", 			 5000,	"vehicle"],
["Offroad HMG", 		"B_G_Offroad_01_armed_F",	 20000, "vehicle"],
["M-900 (Civilian)", 	"C_Heli_Light_01_civil_F",    7000, "vehicle"],
["Speedboat Minigun", 	"B_Boat_Armed_01_minigun_F",  9000, "vehicle"],
["AFV Gorgon", 	        "I_APC_Wheeled_03_cannon_F", 50000, "vehicle"],
["Cheetah", 	        "B_APC_Tracked_01_AA_F",     65000, "vehicle"],
["HEMTT AMMO", 	        "B_Truck_01_ammo_F",     	 60000,	"vehicle"],
["M2A4 Slammer UP", 	"B_MBT_01_TUSK_F",           90000,	"vehicle"],
["Strider HMG", 		"I_MRAP_03_hmg_F", 			 30000,	"vehicle"],
["Hunter HMG", 		    "B_T_MRAP_01_gmg_F", 		 30000,	"vehicle"],
["MH-9 Hummingbird", 	"B_Heli_Light_01_F",	     20000, "vehicle"]
];

APOC_AA_SupOptions =
[// ["stringItemName", 	"Crate Type for fn_refillBox 	,Price," drop type"]
["Launchers", 			"mission_USLaunchers", 			35000, "supply"],
["Assault Rifle", 		"mission_USSpecial", 			35000, "supply"],
//["Sniper Rifles", 	"airdrop_Snipers", 				50000, "supply"],
["DLC Rifles", 			"airdrop_DLC_Rifles", 			45000, "supply"],
["DLC LMGs", 			"airdrop_DLC_LMGs", 			45000, "supply"],
["Diver_Gear", 			"Diver_Gear", 			    	25000, "supply"],
["Sniper_Gear", 		"Sniper_Gear", 					25000, "supply"],
["Medic_Gear", 			"Medic_Gear", 					25000, "supply"],
["Engineer_Gear", 		"Engineer_Gear", 				25000, "supply"]

//"Menu Text",			"Crate Type", 			"Cost", "drop type"
//["Food",				"Land_Sacks_goods_F",	10000, 	"picnic"],
//["Water",				"Land_BarrelWater_F",	10000, 	"picnic"]
];
