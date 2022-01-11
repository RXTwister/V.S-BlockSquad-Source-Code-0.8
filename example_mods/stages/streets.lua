function onCreate()
	-- background shit
	makeLuaSprite('Wall', 'streetWall', -600, -470);
	setScrollFactor('Wall', 1, 1);

	makeLuaSprite('Bin', 'streetBin', 1200, 450);
	setScrollFactor('Bin', 1, 1);
	
	makeLuaSprite('Road', 'streetRoad', -650, 620);
	setScrollFactor('Road', 1, 1);
	scaleObject('Road', 1.1, 1.1);


	

	makeAnimatedLuaSprite('direction', 'streetSign', 550, 100);
	addAnimationByPrefix('direction', 'bounce', 'Sign', 24, true);
	objectPlayAnimation('direction', 'bounce', false);
	scaleObject('direction', 1.2, 1.2);

	addLuaSprite('Wall', false);
	addLuaSprite('Road', false);
	addLuaSprite('direction', false);
	addLuaSprite('Bin', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onBeatHit()
	objectPlayAnimation('direction','bounce',false);
end