
0 = [] spawn {
addMissionEventHandler
[	"Map",
	{   params ["_isOpened","_isForced"];
	if(_isOpened) then 
	{	
		(findDisplay 12) displayAddEventHandler ["MouseMoving", { 
 
 _marker = ctrlMapMouseOver (findDisplay 12 displayCtrl 51); 
   
   
  if ((_marker select 0) isEqualTo "marker" ) then 
  {  
   _NomDuMarker = (markerText (_marker select 1)); 
   _Description = (getText(missionConfigFile >> 'config_mapmarker' >> (_marker select 1) >> 'description')); 
   _Etat = (getText(missionConfigFile >> 'config_mapmarker' >> (_marker select 1) >> 'etat')); 
   
    if (_NomDuMarker isEqualTo "") then  
   { 
    _NomDuMarker = "Aucun nom trouvé !"; 
   }; 
    
   if (_Description isEqualTo "") then  
   { 
    _Description = "Aucune description trouvée !"; 
   }; 
    
   if (_Etat isEqualTo "") then  
   { 
    _Etat = "Aucun état trouvé !"; 
   }; 
   
   //ImpressionDuMessageQuandLeMarkerEstDansLaConfig 
   if (isClass (missionConfigFile >> 'config_mapmarker' >> (_marker select 1))) then  
   { 
    hintSilent parsetext format ["<t size='2.0'>%1</t> <br></br> <t size='2.0'>------------</t>-<br></br> <t size='1.5'>Description : %2</t><br></br> <t size='1.5'>Etat : %3</t>",_NomDuMarker, _Description, _Etat]; 

   }; 
    
   //ImpressionDuMessageQuandLeMarkerNestPasDansLaConfig 
    
    
   if !(isClass (missionConfigFile >> 'config_mapmarker' >> (_marker select 1))) then  
   { 
    hintSilent parsetext format ["<t size='2.0'>%1</t> <br></br> <t size='2.0'>------------</t>-<br></br> <t size='1.5'>Description : %2</t><br></br> <t size='1.5'>Etat : %3</t>", _NomDuMarker, _Description, _Etat]; 
 
   }; 
    
  }; 
 
}];
	};	
	}
];
};