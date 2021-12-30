function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Dodge' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'MUSTHITNOTE_Assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); --custom notesplash color, why not
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);
            setPropertyFromGroup('unspawnNotes', i, 'missHealth', 1);
		end
	end
	--debugPrint('Script started!')
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Dodge' then
		playSound('hankshoot', 1);
		characterPlayAnim('boyfriend', 'hurt', true);
		characterPlayAnim('dad', 'singLEFT-alt', true);
		characterPlayAnim('girlfriend', 'scared', true);
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Dodge' then
		playSound('hankshoot', 1);
		characterPlayAnim('dad', 'singLEFT-alt', true);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		cameraShake('camGame', 0.05, 0.2);
    end
end


-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
