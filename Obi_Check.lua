function obi_check(spell_element)
-- Usage:
-- At the top of your .lua files you will need to add:  include('Obi_Check')
-- This function will directly equip the obi into the waist slot so you will need to call
-- 		this function after you have equipped the regular set.
-- To call this function add: obi_check(spell.element)


	--Variables
	obi_on = 0 													--Number to determine if Obi should be worn. >=1 is wear
	Descendant_Element = 'None'									--What element is the current spell weak to
	DoubleIntensityWeather = S{5, 7, 9, 11, 13, 15, 17, 19}		--Weather ID for double weather
	--storm_spell_element = 'None'								--Element of the current Storm spell

	--Determine descendant element
	if spell_element == 'Fire' then
		Descendant_Element = 'Water'
	elseif spell_element == 'Ice' then
		Descendant_Element = 'Fire'
	elseif spell_element == 'Wind' then
		Descendant_Element = 'Ice'
	elseif spell_element == 'Earth' then
		Descendant_Element = 'Wind'
	elseif spell_element == 'Lightning' then
		Descendant_Element = 'Earth'
	elseif spell_element == 'Water' then
		Descendant_Element = 'Lightning'
	elseif spell_element == 'Light' then
		Descendant_Element = 'Dark'
	elseif spell_element == 'Dark' then
		Descendant_Element = 'Light'
	end
	--add_to_chat(9, 'Descendant Element is: ' ..Descendant_Element)
		

	--Day element
	if world.day_element == spell_element then
		obi_on = obi_on + 1
		--add_to_chat(9, 'Day is same element')
	elseif world.day_element == Descendant_Element then
		obi_on = obi_on - 1
		--add_to_chat(9, 'Day is descendant element')
	end
	--add_to_chat(9, 'After day check: obi_on=' ..tostring(obi_on))

	--Determine weather element and intensity
	if world.weather_element == spell_element then
		--add_to_chat(9, 'Weather is same element')
		if DoubleIntensityWeather:contains(world.weather_id) then
			obi_on = obi_on + 2
			--add_to_chat(9, 'Double intensity')
		else
			obi_on = obi_on + 1
			--add_to_chat(9, 'Single intensity')
		end
	elseif world.weather_element == Descendant_Element then
		--add_to_chat(9, 'Weather is descendant element')
		if DoubleIntensityWeather:contains(world.weather_id) then
			obi_on = obi_on - 2
			--add_to_chat(9, 'Double intensity')
		else
			obi_on = obi_on - 1
			--add_to_chat(9, 'Single intensity')
		end
	end
	
	--add_to_chat(9, 'After weather check: obi_on=' ..tostring(obi_on))


	--Find element for storm spell
	--[[ reads as weather, don't need?  not sure when actual weather
	if buffactive['Firestorm'] then
		storm_spell_element = 'Fire'
	elseif buffactive['Hailstorm'] then
		storm_spell_element = 'Ice'
	elseif buffactive['Windstorm'] then
		storm_spell_element = 'Wind'
	elseif buffactive['Sandstorm'] then
		storm_spell_element = 'Earth'
	elseif buffactive['Thunderstorm'] then
		storm_spell_element = 'Lightning'
	elseif buffactive['Rainstorm'] then
		storm_spell_element = 'Ice'
	elseif buffactive['Aurorastorm'] then
		storm_spell_element = 'Light'
	elseif buffactive['Voidstorm'] then
		storm_spell_element = 'Dark'
	end
	add_to_chat(9, 'Storm spell element: ' ..storm_spell_element)

	if storm_spell_element == spell_element then
		obi_on = obi_on + 1
		add_to_chat(9, 'Storm spell same element')
	elseif storm_spell_element == Descendant_Element then
		obi_on = obi_on - 1
		add_to_chat(9, 'Storm spell descendant element')
	end
	
	add_to_chat(9, 'After storm spell check: obi_on=' ..tostring(obi_on))]]

	--Determine if obi should be equipped
	if obi_on >= 1 then
		equip({waist="Hachirin-no-Obi"})
		add_to_chat(9, 'obi_on >=1, equip obi')
	end

end
