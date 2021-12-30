function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Bullet Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Poison' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'POISONNOTE_Assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
end
--debugPrint('Script started!')