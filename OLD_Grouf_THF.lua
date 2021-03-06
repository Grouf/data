--[[
		=================
		|   T H I E F   |
		=================
]]

function get_sets()

	sets.JA = {}
	sets.JA.Flee = {feet="Pillager's Poulaines"}
	sets.JA.Steal = {hands="Pillager's Armlets",legs="Assassin's Culottes",feet="Pillager's Poulaines"}
	sets.JA.Mug = {head="Plun. Bonnet"}
	sets.JA.Despoil = {legs="Skulk. Culottes +1", feet="Skulk. Poulaines +1"}
	sets.JA.Conspirator = {body="Skulker's Vest +1"}
	sets.JA.Accomplice = {head="Skulker's Bonnet +1"}
	sets.JA.Collaborator = {head="Skulker's Bonnet +1"}
	sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +1"}
	sets.JA.Feint = {legs="Plun. Culottes"}
	sets.JA["Assassin's Charge"] = {feet="Plun. Poulaines"}
	sets.JA["Sneak Attack"] = {hands="Skulk. Armlets +1"}
	sets.JA["Trick Attack"] = { } --AGI increase Damage

	sets.JA.Step = {head="Whirlpool Mask", neck="Iqabi Necklace", left_ear="Steelflash Earring",
		right_ear="Zennaroi Earring", body="Mekosu. Harness", hands="Plun. Armlets +1", left_ring="Rajas Ring",
		right_ring="Beeline Ring", back="Letalis Mantle", waist="Olseni Belt",
		legs="Feast Hose", feet="Rawhide Boots"}  --need accuracy

	sets.JA['Violent Flourish'] = set_combine(sets.JA.Step, {
		left_ear="Psystorm Earring", right_ear="Lifestorm Earring", left_ring="Weather. Ring",
		right_ring="Stikini Ring", legs="Iuitl Tights +1"}) --Accuracy for hit, Magic Accuracy for Stun

	sets.FastCast = {head="Haruspex Hat", neck="Magoraga Beads",
		left_ear="Etiolation Earring", right_ear="Loquac. Earring",
		body="Taeon Tabard", hands="Thaumas Gloves", left_ring="Weather. Ring", right_ring="Prolix Ring",
		waist="Sailfi Belt", legs="Kaabnax Trousers", feet="Rawhide Boots"}
		--Fast Cast: 18%
		--Haste: 33%

	sets.Ranged = {head="Umbani Cap", neck="Iskur Gorget", left_ear="Volley earring",
		right_ear="Enervating Earring", body="Mekosu. Harness", hands="Buremte Gloves", left_ring="Fistmele Ring",
		right_ring="Paqichikaji Ring", back="Libeccio Mantle", waist="Eschan Stone",
		legs="Pursuer's Pants", feet="Scopuli Nails +1"} 
		--AGI for Ranged Accuracy: 4AGI=3R.Acc
		--STR for Ranged Attack

	sets.Ranged.MidAcc = sets.Ranged

	sets.Ranged.HighAcc = sets.Ranged.MidAcc

	sets.WS = {head="Whirlpool Mask",neck="Fotia Gorget",left_ear="Dudgeon Earring",
		right_ear="Bladeborn Earring",body="Taeon Tabard",hands="Herculean Gloves",left_ring="Excelsis Ring",
		right_ring="Cho'j Band",back="Vespid Mantle",waist="Prosilio Belt +1",
		legs="Ta'lab Trousers",feet="Rawhide Boots"} --Done

	sets.WS['Aeolian Edge'] = {head="Whirlpool Mask", neck="Fotia Gorget", left_ear="Friomisi Earring",
		right_ear="Crematio Earring", body="Mekosu. Harness", hands="Umuthi Gloves", left_ring="Weather. Ring",
		right_ring="Acumen Ring", back="Toro Cape", waist="Eschan Stone",
		legs="Iuitl Tights +1", feet="Rawhide Boots"}	--DEX40%, INT40%
														--DEX:233, INT:191
														--MAB:47
														--M.Acc:47
														--M.Dam:6
	
	sets.WS.Cyclone = sets.WS['Aeolian Edge']  --Cyclone is same as Aeolian

	sets.WS["Last Stand"] = set_combine(sets.Ranged, {neck="Fotia Gorget", waist="Fotia Belt"})

		--"Rudra's Storm" = DEX 80%			TP:Damage
		--Evisceration = DEX50%				TP:
		--Dancing Edge = DEX 40%, CHR 40%	TP:Accuracy
		--Mandalic Stab = DEX 60%			TP:
		--Shark Bite = DEX 40% , AGI 40%	TP:
		--Last Stand = AGI 73-85%			TP:

--[[ New TP sets
	sets.JA.waltz = {}  --need CHR (and VIT added from target)
	
	sets.DD = {}
	sets.DD.TH = {}
	sets.DD.MidAcc = {}
	sets.DD.MidAcc.TH = {}
	sets.DD.HighAcc = {}
	sets.DD.HighAcc.TH = {}
	
	sets.DT = {}
	sets.DT.TH = {}
	sets.DT.MidAcc = {}
	sets.DT.MidAcc.TH = {}
	sets.DT.HighAcc = {}
	sets.DT.HighAcc.TH = {}
	
	sets.Ranged = {}
	sets.Ranged.MidAcc = {}
	sets.Ranged.HighAcc = {}
	
	sets.SA = {}
	sets.TA = {}
	sets.SATA = {}  --use for Mug due to Job Points
	
	sets.WS = {} --need single/multi-hit?
	sets.WS.MidAcc = {}
	sets.WS.HighAcc = {}
	
	sets.WS.Magic = {}	--need acc?
	
	
	--Need set swaps like RDM
]]

	sets.TP = {}
	sets.TP.DD = {head="Taeon Chapeau",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Rawhide Vest",hands="Herculean Gloves",left_ring="Hetairoi Ring",
		right_ring="Epona's Ring",back="Canny Cape",waist="Sarissapho. Belt",
		legs="Ta'lab Trousers",feet="Rawhide Boots"}  --done

	sets.TP.TH = set_combine(sets.TP.DD, {hands="Plun. Armlets +1", waist="Chaac Belt", feet="Skulk. Poulaines +1"}) --Done

	sets.TP.Dynamis = sets.TP.TH --not needed

	sets.TP.Accuracy = set_combine(sets.TP.DD, {head="Whirlpool Mask", neck="Sanctity Necklace",
		right_ear="Zennaroi Earring", left_ring="Beeline Ring",
		back="Grounded Mantle",waist="Olseni Belt",
		legs="Feast Hose"}) --Done

	sets.TP.DT = {head="Lithelimb Cap", neck="Twilight Torque", left_ear="Etiolation Earring",
		right_ear="Allegro Earring", body="Emet Harness +1", hands="Herculean Gloves", left_ring="Succor Ring",
		right_ring="Shadow Ring", back="Repulse Mantle", waist="Flume Belt",
		legs="Kaabnax Trousers", feet="Skulk. Poulaines +1"} --Done  kaabnax needs replacing

	sets.TP.DT.TH = set_combine(sets.TP.DT, {hands="Plun. Armlets +1"}) --Done  Don't Need?

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = set_combine(sets.aftercast.TP,{body="Mekosu. Harness", feet="Jute Boots +1"})
	send_command('input /macro book 6;wait .1;input /macro set 10')

	sets.dontforget = {main="Izhiikoh", range="Tsoa. Crossbow", ammo="Gashing Bolt",
		neck="Ygnas's Resolve +1", right_ear="Reraise Earring", left_ring="Gash. Bolt Quiver"}
end

function precast(spell)
	if spell.type == 'Item' then
		--If using an item (eg Forbidden Key, Velkk Coffer) cancel actions. (Was changing into fast cast set)
		return
	end
	--add_to_chat(9, 'Precast: spell=' ..spell.english.. ' spell type=' ..spell.type.. ' Skill=' ..spell.skill)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' and spell.english ~= 'Ranged' then
		--add_to_chat(9, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.FastCast)

	elseif spell.type == "WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS)
			--add_to_chat(9, 'sets.WS equipped for ' ..spell.english)
		end
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end
		if (player.tp > 1749 and player.tp < 2000) or (player.tp > 2749 and player.tp < 3000) then
			equip({left_ear="Moonshade Earring"})
			--add_to_chat(9, player.tp.. ' TP, equipping Moonshade Earring')
		end

	elseif spell.prefix == "/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif spell.type == 'Step' then
			equip(sets.JA.Step)
		end

	elseif spell.english == "Ranged" then
		equip(sets.Ranged)
	end

end

function midcast(spell)
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

function buff_change(buff_name,gain)
	if buff_name == 'Reive Mark' and gain then
		equip({neck="Ygnas's Resolve +1"})
	elseif buff_name == 'Feint' then
		if gain then
			equip(sets.JA[buff_name])
			disable('legs')
			add_to_chat(9, 'Feint on: Legs disabled')
		else
			enable('legs')
			add_to_chat(9, 'Feint off: Legs enabled')
		end
	elseif buff_name == "Assassin's Charge" then
		if gain then
			equip(sets.JA[buff_name])
			disable('feet')
			add_to_chat(9, "Assassin's Charge on: Feet disabled")
		else
			enable('feet')
			add_to_chat(9, "Assassin's Charge off: Feet enabled")
		end
	elseif buff_name == 'Perfect Dodge' then
		if gain then
			equip(sets.JA[buff_name])
			disable('body')
			add_to_chat(9, 'Perfect Dodge on: Body disabled')
		else
			enable('body')
			add_to_chat(9, 'Perfect Dodge off: Body enabled')
		end
	end

end

function self_command(command)
	if command == 'DD' then
		sets.aftercast.TP = sets.TP.DD
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{body="Mekosu. Harness", feet="Jute Boots +1"})
		windower.add_to_chat(9, 'DD set')
	elseif command == 'TH' then
		sets.aftercast.TP = sets.TP.TH
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{body="Mekosu. Harness", feet="Jute Boots +1"})
		windower.add_to_chat(9, 'Treasure Hunter set')
	elseif command == 'Dynamis' then
		sets.aftercast.TP = sets.TP.Dynamis
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{body="Mekosu. Harness", feet="Jute Boots +1"})
		windower.add_to_chat(9, 'Dynamis Treasure Hunter set')
	elseif command == 'Accuracy' then
			sets.aftercast.TP = sets.TP.Accuracy
			sets.aftercast.Idle = set_combine(sets.aftercast.TP,{body="Mekosu. Harness", feet="Jute Boots +1"})
			windower.add_to_chat(9, 'Accuracy set')
	elseif command == 'DT' then
		sets.aftercast.TP = sets.TP.DT
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{body="Mekosu. Harness", feet="Jute Boots +1"})
		windower.add_to_chat(9, 'DT set')
	elseif command == 'DTTH' then
		sets.aftercast.TP = sets.TP.DT.TH
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{body="Mekosu. Harness", feet="Jute Boots +1"})
		windower.add_to_chat(9, 'DT.TH set')
	end

	status_change(player.status)

end
