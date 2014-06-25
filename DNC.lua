--[[
		===================
		|   D A N C E R   | 
		===================
		
	To switch between TP set use these commands in your macros:
	Put one command on one macro:	/console gs c DD		for the Damage Dealing set
									/console gs c ACC		for the Accuracy set
									/console gs c DT		for the Damage Taken set
									
	You will need to update the set_macro_book() function to your correct book and macro number
		set_macro_book() is at the bottom of the file
]]

function get_sets()
		
	sets.JA = {}
	sets.JA.Trance = {head="Horos Tiara +1"}
	--sets.JA['Grand Pas'] = {slot=""}		--no gear augments this right now
	sets.JA['Saber Dance'] = {legs="Horos Tights +1"}
	sets.JA['Fan Dance'] = {hands="Horos Bangles +1"}
	sets.JA['No Foot Rise'] = {body="Horos Casaque +1"}
	sets.JA['Closed Position'] = {feet="Horos Shoes +1"}
	sets.JA['Climactic Fourish'] = {head="Charis Tiara +2"}
	sets.JA['Striking Flourish'] = {body="Charis Casaque +2"}
	sets.JA['Reverse Flourish'] = {hands="Charis Bangles +2"}
	sets.JA['Violent Flourish'] = {
		head="Maxixi Tiara +1", neck="Noetic Torque", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Horos Casaque +1", hands="Maxixi Bangles +1", left_ring="Sangoma Ring", right_ring="Perception Ring",
		back="Atheling Mantle", waist="Windbuffet Belt", legs="Iuitl Tights +1", feet="Haruspex Pigaches"}
	sets.JA.Step = {
		head="Whirlpool Mask", neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Heartseeker Earring",
		body="Manibozho Jerkin", hands="Maxixi Bangles +1", left_ring="Rajas Ring", right_ring="Epona's Ring",
		back="Letalis Mantle", waist="Phasmida Belt", legs="Manibozho Brais", feet="Horos Shoes +1"}
	sets.JA['Feather Step'] = set_combine(sets.Step, {feet="Charis Shoes +2"})
	sets.JA.Waltz = {ammo="Honed Tathlum", 
		head="Horos Tiara +1", neck="Twilight Torque", left_ear="Roundel earring", right_ear="Steelflash earring",
		body="Maxixi casaque +1", hands="Maxixi bangles +1", left_ring="Asklepian ring", right_ring="Dark ring",
		back="Toetapper Mantle", waist="Hurch'lan sash", legs="Desultor tassets", feet="Maxixi Shoes"}
	sets.JA.Samba = {head="Maxixi Tiara +1"}
	
	sets.JA.Jig = {legs="Horos Tights +1"}

	
	WSMode_Index = 1
	WSMode_Names = {'Potency','Accuracy'}
	sets.WS = {}
	--Potency is more damage gear
	sets.WS.Potency = {ammo="Demonry Core",
		head="Maxixi Tiara +1", neck="Tlamiztli Collar", left_ear="Thunder Pearl", right_ear="Bladeborn Earring",
		body="Maxixi Casaque +1", hands="Maxixi Bangles +1", left_ring="Thundersoul Ring", right_ring="Thundersoul Ring",
		back="Kayapa Cape", waist="Prosilio Belt", legs="Manibozho Brais", feet="Horos Shoes +1",}
	
	sets.WS.Potency["Rudra's Storm"] = set_combine(sets.WS.Potency, {neck="Asperity Necklace", waist="Caudata belt"})
	
	sets.WS.Potency.Evisceration = set_combine(sets.WS.Potency, {})
	
	
	
	--Accuracy is more accuracy gear
	sets.WS.Accuracy = {ammo="Honed Tathlum",
		head="Maxixi Tiara +1", neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Heartseeker Earring",
		body="Maxixi Casaque +1", hands="Maxixi Bangles +1", left_ring="Thundersoul Ring", right_ring="Thundersoul Ring",
		back="Toetapper Mantle", waist="Caudata Belt", legs="Manibozho Brais", feet="Horos Shoes +1",} 
	
	sets.WS.Accuracy["Rudra's Storm"] = set_combine(sets.WS.Accuracy, {})
	
	sets.WS.Accuracy.Evisceration = set_combine(sets.WS.Accuracy, {})
	
	--FastCast added for NIN sub job
	sets.FastCast = {head="Athos's Chapeau",neck="Magoraga Beads",left_ear="Phawaylla Earring",right_ear="Loquac. Earring",
		hands="Thaumas Gloves",left_ring="Prolix Ring",
		waist="Phasmida Belt",
		legs="Kaabnax Trousers",feet="Iuitl Gaiters +1"}
	
	--sets.TP are sets used when you are attacking the enemy.
		--Switching between these sets is controlled through commands sent to GS - see top for info
	sets.TP = {}
	sets.TP.DD = {ammo="Hagneia Stone",
		head="Iuitl Headgear +1", neck="Asperity necklace", left_ear="Bladeborn Earring", right_ear="Steelflash Earring",
		body="Qaaxo Harness", hands="Maxixi bangles +1", left_ring="Epona's Ring", right_ring="Rajas Ring",
		back="Atheling Mantle", waist="Patentia sash", legs="Iuitl tights +1", feet="Horos Shoes +1"}
	
	sets.TP.ACC = {ammo="Honed Tathlum",
		head="Iuitl Headgear +1", neck="Asperity necklace", left_ear="Bladeborn Earring", right_ear="Steelflash Earring",
		body="Qaaxo Harness", hands="Maxixi Bangles +1", left_ring="Epona's Ring", right_ring="Rajas Ring",
		back="Letalis Mantle", waist="Patentia Sash", legs="Iuitl Tights +1", feet="Horos Shoes +1"}
	
	sets.TP.DT = {ammo="Brigantia Pebble",
		head="Iuitl Headgear +1", neck="Twilight Torque", left_ear="Bladeborn Earring", right_ear="Steelflash Earring",
		body="Qaaxo Harness", hands="Maxixi Bangles +1", left_ring="Defending Ring", right_ring="Dark Ring",
		back="Repulse Mantle", waist="Patentia Sash", legs="Kaabnax Trousers", feet="Horos Shoes +1"}
	
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Tandava Crackows"})
	
	set_macro_book()
	
end

function precast(spell)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		--Not a job ability or weapon skill, therefore magic so equip fast cast set
		equip(sets.precast.FastCast)
	
	elseif spell.type == "WeaponSkill" then
		if WSMode_Index == 1 then		--WS Potency
			if sets.WS.Potency[spell.english] then
				equip(sets.WS.Potency[spell.english])
			else
				equip(sets.WS.Potency)
			end
		elseif WSMode_Index == 2 then	--WS Accuracy
			if sets.WS.Accuracy[spell.english] then
				equip(sets.WS.Accuracy[spell.english])
			else
				equip(sets.WS.Accuracy)
			end
		end
	
	elseif spell.prefix == "/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif spell.type == 'Step' then
			equip(sets.Step)
		elseif spell.type == 'Waltz' and spell.english ~= 'Healing Waltz' then
			--Healing Waltz doesn't require gear swap
			equip(sets.JA.Waltz)
		elseif spell.type == 'Samba'  then
			equip(sets.JA.Samba)
		elseif spell.type == 'Jig' then
			equip(sets.JA.Jig)
		end
	end
end

function midcast(spell)
	--midcast is only really used for magic spells.  DNC abilities are all instant so there is no midcast.
end

function aftercast(spell)
	--This happens after you finish using a weapon skill, job ability, or casting a spell
	if player.status =='Engaged' then
		equip(sets.aftercast.TP)
	else
		equip(sets.aftercast.Idle)
	end
end

function status_change(new,old)
	if S{'Idle','Resting'}:contains(new) then
		equip(sets.aftercast.Idle)
	elseif new == 'Engaged' then
		equip(sets.aftercast.TP)
	end
end

function buff_change(buff_name,gain)
	if gain then
		if buff_name == 'Trance' then
			--When Trance activates equip Trance Gear and disable slot so GS won't switch gear in that slot
			equip(sets.JA[buff_name])
			send_command('@wait 0.5; gs disable head;')
		end
	elseif not gain then
		if buff_name == 'Trance' then
			--When Trance deactivates enable slot so GS will switch gear for that slot
			enable("head")
		end
	end
end

function self_command(command)
	--[[
	To switch between TP set use these commands in your macros:
	Put one command on one macro:	/console gs c DD		for the Damage Dealing set
									/console gs c ACC		for the Accuracy set
									/console gs c DT		for the Damage Taken set
	]]
	
	if command == 'DD' then --Damage Dealing
		sets.aftercast.TP = sets.TP.DD
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Tandava Crackows"})
		equip(sets.aftercast.TP)
		WSMode_Index = 1	--WS potency
		windower.add_to_chat(8, 'DD set')
	if command == 'ACC' then --Accuracy Set
		sets.aftercast.TP = sets.TP.ACC
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Tandava Crackows"})
		equip(sets.aftercast.TP)
		WSMode_Index = 2		--WS accuracy
		windower.add_to_chat(8, 'ACC set')
	elseif command == 'DT' then --Damage Taken
		sets.aftercast.TP = sets.TP.DT
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Tandava Crackows"})
		equip(sets.aftercast.TP)
		WSMode_Index = 1	--WS potency
		windower.add_to_chat(8, 'DT set')
	end
end

function set_macro_book()
	-- Default macro book & page
	--Update the book and macro set to your correct macros
	if player.sub_job == 'WAR' then
		send_command('input /macro book 11;wait .1;input /macro set 1')
	elseif player.sub_job == 'DNC' then
		send_command('input /macro book 11;wait .1;input /macro set 2')
	elseif player.sub_job == 'THF' then
		send_command('input /macro book 11;wait .1;input /macro set 3')
	elseif player.sub_job == 'NIN' then
		send_command('input /macro book 11;wait .1;input /macro set 4')
	else
		send_command('input /macro book 11;wait .1;input /macro set 1')
	end
end
