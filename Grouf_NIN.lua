--[[
		=================
		|   N I N J A   | 
		=================
]]

function get_sets()
	NinjutsuNuke = S{
		'Katon: Ichi','Suiton: Ichi','Doton: Ichi','Hyoton: Ichi','Huton: Ichi','Raiton: Ichi',
		'Katon: Ni','Suiton: Ni','Doton: Ni','Hyoton: Ni','Huton: Ni','Raiton: Ni',
		'Katon: San','Suiton: San','Doton: San','Hyoton: San','Huton: San','Raiton: San'
		}
		
	NinjutsuEnfeeble = S{
		'Hojo: Ichi','Kurayami: Ichi','Dokumori: Ichi','Jubaku: Ichi','Yurin: Ichi',
		'Hojo: Ni','Kurayami: Ni','Dokumori: Ni','Jubaku: Ni','Yurin: Ni'
		}
		
	
	sets.JA = {}
	sets.JA.Innin = {head="Iga Zukin +2"}
	sets.JA.Yonin = {legs="Iga Hakama +2"}
	sets.JA.Futae = {hands="Iga Tekko +2"}
	sets.JA.Sange = {body="Mochi. Chainmail"}
	sets.JA['Mijin Gakure'] = {legs="Mochizuki Hakama"}
	
	sets.JA.Step = {head="Whirlpool Mask",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Heartseeker Earring",body="Manibozho Jerkin",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Beeline Ring",back="Yokaze Mantle",waist="Phasmida Belt",
		legs="Hachiya Hakama",feet="Otronif Boots +1"} --Primary Acc: 913
	
	sets.JA['Violent Flourish'] = set_combine(sets.JA.Step, {neck="Stoicheion Medal", 
		left_ear="Psystorm Earring", right_ear="Lifestorm Earring", left_ring="Perception Ring", 
		right_ring="Sangoma Ring"})
	
	sets.precast = {}
	
	sets.precast.Ranged = {head="Uk'uxkaj Cap",neck="Ocachi Gorget", left_ear="Clearview earring",
		right_ear="Bladeborn Earring", body="Mochi. Chainmail", hands="Hachiya Tekko", left_ring="Fistmele Ring",
		right_ring="Paqichikaji Ring", back="Yokaze Mantle", waist="Buccaneer's Belt",
		legs="Thur. Tights +1", feet="Scopuli Nails +1"}
	
	
	sets.precast.FastCast = {head="Athos's Chapeau",
		right_ear="Loquac. Earring", body="Mochi. Chainmail",hands="Mochizuki Tekko", left_ring="Prolix Ring",
		back="Yokaze Mantle", waist="Phasmida Belt", legs="Kaabnax Trousers"} --30% Haste
	
	sets.midcast = {}
	sets.midcast.Utsusemi = {neck="Magoraga Beads", feet="Iga Kyahan +2"}
	
	sets.midcast["Migawari: Ichi"] = {body="Iga Ningi +2"}
	
	sets.midcast.Enfeeble = {head="Hachiya Hatsuburi",neck="Stoicheion Medal",left_ear="Lifestorm Earring",
		right_ear="Psystorm Earring",body="Qaaxo Harness",
		left_ring="Perception Ring", right_ring="Sangoma Ring",back="Yokaze Mantle",
		feet="Hachiya Kyahan"}  --32% Haste, 230 Magic Accuracy
	
	sets.midcast.Nuke = {head="Mochi. Hatsuburi", neck="Stoicheion Medal",left_ear="Friomisi Earring",
		right_ear="Crematio Earring",body="Qaaxo Harness",left_ring="Prolix Ring",
		left_ring="Perception Ring", right_ring="Acumen Ring",back="Toro Cape",
		legs="Quiahuiz Trousers",feet="Hachiya Kyahan"} --feet should be 109relic
	
	
	sets.WS = {}
	sets.WS.Base = {head="Whirlpool Mask",neck="Tlamiztli Collar",left_ear="Moonshade Earring",
		right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Qaaxo Mitaines",left_ring="Cho'j Band",
		right_ring="Rajas Ring",back="Vespid Mantle",waist="Prosilio Belt +1",
		legs="Manibozho Brais",feet="Otronif Boots +1"}
	
	sets.WS["Blade Hi"] = set_combine(sets.WS.Base,{neck="Shadow Gorget",hands="Iga Tekko +2"}) --AGI
	
	sets.WS["Blade Shun"] = sets.WS.Base --DEX
	
	sets.WS["Blade Kamu"] = sets.WS.Base --STR50 INT50
	
	sets.WS["Blade Jin"] = sets.WS.Base --STR30 DEX30
	
	sets.WS["Blade Yu"] = set_combine(sets.WS.Base,{left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",back="Toro Cape"}) --DEX50 INT50
	
	
	sets.TP = {}
	sets.TP.DD = {head="Whirlpool Mask",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",left_ring="Epona's Ring",
		right_ring="Rajas Ring",back="Yokaze Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Trousers",feet="Otronif Boots +1"}
		
	--[[sets.TP.EVA = set_combine(sets.TP.DD,{neck="Torero Torque",left_ear="Ethereal Earring",
		right_ear="Phawaylla Earring",body="Otronif Harness",
		back="Ik Cape",waist="Phasmida Belt",
		legs="Otronif Brais"})  --Needs Verify ]]
	
	sets.TP.DT = {head="Uk'uxkaj Cap",neck="Twilight Torque",left_ear="Dudgeon Earring",
		right_ear="Heartseeker earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",left_ring="Dark Ring",
		right_ring="Dark Ring",back="Ik Cape",waist="Flume Belt",
		legs="Kaabnax Trousers",feet="Otronif Boots +1"}

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Danzo Sune-Ate"})
	send_command('input /macro book 13;wait .1;input /macro set 1')
	
end

function precast(spell)
	--windower.add_to_chat(14, 'Precast: spell=' ..spell.english.. ' spell type=' ..spell.type.. ' Skill=' ..spell.skill)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		--windower.add_to_chat(14, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)
	
	elseif spell.type == "WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS.Base)
		end
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end
	
	elseif spell.prefix == "/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif spell.type == 'Step' then
			equip(sets.JA.Step)
		end
	end
	
end

function midcast(spell)
	if spell.prefix == '/jobability' or spell.type == 'WeaponSkill' then
	--midcast doesn't exist for JA or WS so cancel the processing of this function
		--windower.add_to_chat(14, 'JobAbility or WeaponSkill; Midcast cancelled')
		return
	end
	
	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
		--windower.add_to_chat(9, 'Spell name as set: ' ..spell.english)
	elseif spell.type == "Ninjutsu" then
		--windower.add_to_chat(9, 'Ninjitsu Detected: ' ..spell.english.. ' ' ..spell.type)
		if NinjutsuNuke:contains(spell.english) then
			equip(sets.midcast.Nuke)
			--windower.add_to_chat(9, 'Nuke Detected')
		elseif NinjutsuEnfeeble:contains(spell.english) then
			equip(sets.midcast.Enfeeble)
			--windower.add_to_chat(9, 'Enfeeble Detected')
		else
			equip(sets.midcast.Utsusemi)
			--windower.add_to_chat(9, 'Other Detected, Utsusemi Set: ' ..spell.english)
		end
	end
	
end

function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.aftercast.TP)
	else
		equip(sets.aftercast.Idle)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function status_change(new,old)
	if new == 'Engaged' then
		equip(sets.aftercast.TP)
	else
		equip(sets.aftercast.Idle)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function buff_change(buff_name,gain) --gain = True if gained, False if lost
	if buff_name=='Migawari' then
		if gain then
			equip({body="Iga Ningi +2"}) -- Need to verify this works
			disable('body')
			--send_command('@wait 0.5; gs disable body;')
			windower.add_to_chat(9, 'Migawari status detected, Empy body on, Body disabled')
		else
			enable('body')
			windower.add_to_chat(9, 'Migawari status lost, Body enabled')
		end
	end
	
end

function self_command(command)
	if command == 'DD' then
		sets.aftercast.TP = sets.TP.DD
		sets.aftercast.Idle = sets.TP.DD
		equip(sets.aftercast.TP)
		windower.add_to_chat(9, 'DD set')
	elseif command == 'DT' then
		sets.aftercast.TP = sets.DT
		sets.aftercast.Idle = sets.DT
		equip(sets.aftercast.TP)
		windower.add_to_chat(9, 'DT set')
	end
end
