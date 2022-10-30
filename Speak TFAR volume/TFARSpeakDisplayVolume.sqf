cutRsc ["VolumeDisplayTFAR", "PLAIN", -1, false];

["TFARSpeakingVolumeDisplay", "OnSpeakVolume", {

	_display = findDisplay 200426;
	_pic = _display displayCtrl 1201;
	
	if((_this select 1) == 5) then 
	{
		_pic ctrlSetStructuredText parseText "Whispering.paa";
	};

	if((_this select 1) == 20) then 
	{
		_pic ctrlSetStructuredText parseText "Normal.paa";
	};

	if((_this select 1) == 60) then 
	{
		_pic ctrlSetStructuredText parseText "Yelling.paa";
	};

	//_pic ctrlSetStructuredText parseText "First line<img image=data\isniper.paa /><br />Second line"


}, ObjNull] call TFAR_fnc_addEventHandler;