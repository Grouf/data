--[[
		=================
		|   N I N J A   |
		=================
]]

include('Obi_Check')

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

	ElementalWeaponSkills = S{'Blade:Teki', 'Blade: To', 'Blade: Ei', 'Blade: Yu'}

	sets.JA = {}
	sets.JA.Innin = {head="Hattori Zukin"}
	sets.JA.Yonin = {legs="Hattori Hakama"}
	sets.JA.Futae = {hands="Hattori Tekko"}
	--sets.JA.Sange = {body="Mochi. Chainmail"}
	sets.JA['Mijin Gakure'] = {legs="Mochizuki Hakama"}

	sets.JA.Step = {head="Gavialis Helm", neck="Iqabi Necklace", left_ear="Steelflash Earring",
		right_ear="Zennaroi Earring", body="Mekosu. Harness", hands="Buremte Gloves", left_ring="Rajas Ring",
		right_ring="Beeline Ring", back="Yokaze Mantle", waist="Olseni Belt",
		legs="Feast Hose", feet="Mochizuki Kyahan"} --Primary Acc: 964

	sets.JA['Violent Flourish'] = set_combine(sets.JA.Step, {
		left_ear="Psystorm Earring", right_ear="Lifestorm Earring", left_ring="Weather. Ring",
		right_ring="Sangoma Ring", feet="Hachiya Kyahan"}) --Magic Accuracy: +53

	sets.precast = {}

	sets.precast.Ranged = {head="Uk'uxkaj Cap",neck="Ocachi Gorget", left_ear="Clearview earring",
		right_ear="Enervating Earring", body="Mekosu. Harness", hands="Hachiya Tekko", left_ring="Fistmele Ring",
		right_ring="Paqichikaji Ring", back="Yokaze Mantle", waist="Flax Sash",
		legs="Nahtirah Trousers", feet="Scopuli Nails +1"}


	sets.precast.FastCast = {head="Athos's Chapeau", neck="Magoraga Beads",
		right_ear="Loquac. Earring", body="Taeon Tabard",hands="Thaumas Gloves",
		left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Yokaze Mantle", waist="Sailfi Belt", legs="Kaabnax Trousers", feet="Mochizuki Kyahan"}
																				--31% Haste
																				--19% Fast Cast
																				--18% Utsusemi -casting
	sets.midcast = {}
	sets.midcast.Utsusemi = {body="Taeon Tabard", hands="Mochizuki Tekko", feet="Hattori Kyahan +1"}

	sets.midcast["Migawari: Ichi"] = {body="Hattori Ningi +1"}

	sets.midcast.Enfeeble = {head="Hachiya Hatsuburi", left_ear="Lifestorm Earring",
		right_ear="Psystorm Earring",body="Mekosu. Harness", hands="Mochizuki Tekko",
		left_ring="Weather. Ring", right_ring="Sangoma Ring",back="Yokaze Mantle",
		feet="Scamp's Sollerets"}  --32% Haste, 230 Magic Accuracy

	sets.midcast.Nuke = {head="Mochi. Hatsuburi", left_ear="Friomisi Earring",
		right_ear="Crematio Earring",body="Mekosu. Harness", hands="Mochizuki Tekko", left_ring="Weather. Ring",
		right_ring="Acumen Ring", right_ring="Acumen Ring",back="Toro Cape",
		feet="Mochizuki Kyahan"}


	sets.WS = {}
	sets.WS.Base = {head="Gavialis Helm",neck="Fotia Gorget",left_ear="Dudgeon Earring",
		right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Qaaxo Mitaines",left_ring="Cho'j Band",
		right_ring="Rajas Ring",back="Yokaze Mantle",waist="Prosilio Belt +1",
		legs="Manibozho Brais",feet="Otronif Boots +1"}

	sets.WS["Blade: Hi"] = set_combine(sets.WS.Base,{hands="Hattori Tekko"}) --AGI

	sets.WS["Blade: Shun"] = sets.WS.Base --DEX

	sets.WS["Blade: Kamu"] = sets.WS.Base --STR50 INT50

	sets.WS["Blade: Jin"] = sets.WS.Base --STR30 DEX30

	sets.WS["Blade: Yu"] = set_combine(sets.WS.Base,{left_ear="Friomisi Earring",
		right_ear="Crematio Earring",back="Toro Cape"}) --DEX50 INT50


	sets.TP = {}
	sets.TP.DD = {head="Ptica Headgear",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",left_ring="Epona's Ring",
		right_ring="Rajas Ring",back="Yokaze Mantle",waist="Windbuffet Belt",
		legs="Taeon Tights",feet="Otronif Boots +1"}

	--[[sets.TP.EVA = set_combine(sets.TP.DD,{neck="Torero Torque",left_ear="Ethereal Earring",
		right_ear="Phawaylla Earring",body="Otronif Harness",
		back="Ik Cape",waist="Phasmida Belt",
		legs="Otronif Brais"})  --Needs Verify ]]

	sets.TP.DT = {head="Uk'uxkaj Cap",neck="Twilight Torque",left_ear="Dudgeon Earring",
		right_ear="Heartseeker earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",left_ring="Succor Ring",
		right_ring="Succor Ring",back="Yokaze Mantle",waist="Flume Belt",
		legs="Kaabnax Trousers",feet="Otronif Boots +1"}

	sets.dontforget = {body="Mochi. Chainmail"}

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Danzo Sune-Ate"})
	send_command('input /macro book 13;wait .1;input /macro set 1')

end

function precast(spell)
	--add_to_chat(14, 'Precast: spell=' ..spell.english.. ' spell type=' ..spell.type.. ' Skill=' ..spell.skill)
	--add_to_chat(14, 'Precast: spell=' ..spell.english.. ' spell type=' ..spell.type)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' and spell.english ~= 'Ranged' then
		--windower.add_to_chat(14, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)
		if spell.english:startswith('Utsusemi') then
			equip({body="Mochi. Chainmail"})
		end

	elseif spell.type == "WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS.Base)
		end
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end
		if (player.tp > 1749 and player.tp < 2000) or (player.tp > 2749 and player.tp < 3000) then
			equip({left_ear="Moonshade Earring"})
		end
		if ElementalWeaponSkills:contains(spell.english) then
			add_to_chat(9, 'Elemental WS: ' ..spell.english.. ' is element: ' ..spell.element..
				', day element: ' ..world.day_element)
			if spell.element == world.day_element then
				equip({head="Gavialis Helm"})
			end
		end

	elseif spell.prefix == "/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif spell.type == 'Step' then
			equip(sets.JA.Step)
		end

	elseif spell.english == "Ranged" then
		equip(sets.precast.Ranged)
	end

end

function midcast(spell)
	if spell.prefix == '/jobability' or spell.type == 'WeaponSkill' then
	--midcast doesn't exist for JA or WS so cancel the processing of this function
		--add_to_chat(14, 'JobAbility or WeaponSkill; Midcast cancelled')
		return
	end

	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
		--add_to_chat(9, 'Spell name as set: ' ..spell.english)
	elseif spell.type == 'Ninjutsu' then
		--add_to_chat(9, 'Ninjutsu Detected: ' ..spell.english.. ' ' ..spell.type)
		if NinjutsuNuke:contains(spell.english) then
			equip(sets.midcast.Nuke)
			obi_check(spell.element)
			--add_to_chat(9, 'Nuke Detected')
		elseif NinjutsuEnfeeble:contains(spell.english) then
			equip(sets.midcast.Enfeeble)
			--add_to_chat(9, 'Enfeeble Detected')
		else
			equip(sets.midcast.Utsusemi)
			--add_to_chat(9, 'Other Detected, Utsusemi Set: ' ..spell.english)
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
			equip({body="Hattori Ningi +1"}) -- Need to verify this works
			disable('body')
			--send_command('@wait 0.5; gs disable body;')
			add_to_chat(9, 'Migawari status detected, Empy body on, Body disabled')
		else
			enable('body')
			add_to_chat(9, 'Migawari status lost, Body enabled')
		end
	end

end

function self_command(command)
	if command == 'DD' then
		sets.aftercast.TP = sets.TP.DD
		sets.aftercast.Idle = sets.TP.DD
		equip(sets.aftercast.TP)
		add_to_chat(9, 'DD set')
	elseif command == 'DT' then
		sets.aftercast.TP = sets.DT
		sets.aftercast.Idle = sets.DT
		equip(sets.aftercast.TP)
		add_to_chat(9, 'DT set')
	end
end
