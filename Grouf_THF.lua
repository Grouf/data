--[[
		=================
		|   T H I E F   |
		=================
]]

function get_sets()

	--Equip variables
	SetMode_Index = 1
	SetMode_Names = {'DD','TH','DT'}		--Switch between DD and DT sets, set using user command 'SetMode'
	--#SetMode_Names    <- This outputs the number of elements
	Accuracy_Index = 1
	Accuracy = {'None', 'MidAcc', 'HighAcc'}	--Accuracy levels set with user command 'Accuracy'
	--Beatific_On = 0 							--set with user command 'Beatific'; used to equip when not in MDT gear
	Mecisto_On = 1								--set with user command 'Mecisto'; default on, equip CP cape in aftercast
	--MeleeLock = 'False' 						--variable used for info only, work done in self_command function

	--Job Abilities
	sets.JA = {}
	sets.JA.Flee = {feet="Pill. Poulaines +1"}
	sets.JA.Steal = {hands="Pill. Armlets +1",legs="Assassin's Culottes",feet="Pill. Poulaines +1"}
	--sets.JA.Mug = {head="Plun. Bonnet"}
	sets.JA.Despoil = {legs="Skulk. Culottes +1", feet="Skulk. Poulaines +1"}
	sets.JA.Conspirator = {body="Skulker's Vest +1"}
	sets.JA.Accomplice = {head="Skulker's Bonnet +1"}
	sets.JA.Collaborator = {head="Skulker's Bonnet +1"}
	sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +1"}
	sets.JA.Feint = {legs="Plun. Culottes +1"}
	--sets.JA["Assassin's Charge"] = {feet="Plun. Poulaines"}
	sets.JA["Sneak Attack"] = {hands="Skulk. Armlets +1"}
	sets.JA["Trick Attack"] = { hands="Pill. Armlets +1" } --AGI increase Damage

	sets.JA.Waltz = {head="Lithelimb Cap", neck="Twilight Torque", right_ear="Soil Pearl", left_ear="Soil Pearl",
		body="Rawhide Vest", hands="Plun. Armlets +1", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		back="Repulse Mantle", waist="Chaac Belt", legs="Pursuer's Pants", feet="Rawhide Boots"}
		--Cure, Healing Waltz = Erase
		--CHR of caster, VIT of Target

	sets.JA.Step = {head="Skulker's Bonnet +1", neck="Subtlety Spec.", left_ear="Telos Earring", right_ear="Zennaroi Earring", 
		body="Rawhide Vest", hands="Herculean Gloves", left_ring="Candent Ring", right_ring="Beeline Ring", 
		back="Grounded Mantle", waist="Olseni Belt", legs="Feast Hose", feet="Rawhide Boots"}  --need accuracy

	sets.JA['Violent Flourish'] = set_combine(sets.JA.Step, {
		left_ear="Psystorm Earring", right_ear="Lifestorm Earring", left_ring="Weather. Ring",
		right_ring="Stikini Ring", legs="Iuitl Tights +1"}) --Accuracy for hit, Magic Accuracy for Stun
		--Stuns

	sets.FastCast = {head="Herculean Helm", neck="Magoraga Beads", left_ear="Etiolation Earring", right_ear="Loquac. Earring",
		body="Taeon Tabard", hands="Thaumas Gloves", left_ring="Weather. Ring", right_ring="Prolix Ring",
		waist="Sailfi Belt", legs="Kaabnax Trousers", feet="Rawhide Boots"}
		--Fast Cast: 30%
		--Haste: 34%

	sets.Idle = {head="Taeon Chapeau",neck="Asperity Necklace",left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Rawhide Vest",hands="Herculean Gloves",left_ring="Hetairoi Ring", right_ring="Epona's Ring",
		back="Canny Cape",waist="Sarissapho. Belt",legs="Volte Hose",feet="Jute Boots +1"}

	sets.Idle.TH = {head="Taeon Chapeau",neck="Asperity Necklace",left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Rawhide Vest",hands="Plun. Armlets +1",left_ring="Hetairoi Ring", right_ring="Epona's Ring",
		back="Canny Cape",waist="Chaac Belt", legs="Volte Hose",feet="Jute Boots +1"}
		
	sets.Idle.DT = {head="Lithelimb Cap", neck="Twilight Torque", left_ear="Infused Earring", right_ear="Etiolation Earring", 
		body="Emet Harness +1", hands="Herculean Gloves", left_ring="Succor Ring", right_ring="Shadow Ring",
		back="Repulse Mantle", waist="Flume Belt",legs="Kaabnax Trousers", feet="Jute Boots +1"}
		
	sets.Ranged = {head="Umbani Cap", neck="Iskur Gorget", left_ear="Volley earring", right_ear="Enervating Earring",
		body="Mekosu. Harness", hands="Pursuer's Cuffs", left_ring="Dingir Ring", right_ring="Paqichikaji Ring",
		back="Libeccio Mantle", waist="Eschan Stone", legs="Pursuer's Pants", feet="Scopuli Nails +1"} 
		--AGI for Ranged Accuracy: 4AGI=3R.Acc
		--STR for Ranged Attack

	sets.Ranged.MidAcc = sets.Ranged

	sets.Ranged.HighAcc = sets.Ranged.MidAcc


--M E L E E
	sets.DD = {head="Taeon Chapeau",neck="Asperity Necklace", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Rawhide Vest",hands="Herculean Gloves",left_ring="Hetairoi Ring", right_ring="Epona's Ring",
		back="Canny Cape",waist="Sarissapho. Belt", legs="Ta'lab Trousers",feet="Rawhide Boots"}


	sets.DD.MidAcc = set_combine(sets.DD, {head="Whirlpool Mask", neck="Subtlety Spec.",
		right_ear="Zennaroi Earring", left_ring="Beeline Ring",
		back="Grounded Mantle",waist="Olseni Belt",legs="Volte Hose"})

	sets.DD.HighAcc = sets.DD.MidAcc


	sets.TH = set_combine(sets.DD, {hands="Plun. Armlets +1", waist="Chaac Belt", feet="Skulk. Poulaines +1"}) --Done
	sets.TH.MidAcc = set_combine(sets.DD.MidAcc,{hands="Plun. Armlets +1", waist="Chaac Belt", feet="Skulk. Poulaines +1"})
	sets.TH.HighAcc = sets.TH.MidAcc


	sets.DT = {head="Lithelimb Cap", neck="Twilight Torque", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Emet Harness +1", hands="Herculean Gloves", left_ring="Succor Ring", right_ring="Shadow Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Kaabnax Trousers", feet="Skulk. Poulaines +1"} 
			--  kaabnax needs replacing

	sets.DT.MidAcc = set_combine(sets.DT, { waist="Olseni Belt"})


	sets.DT.HighAcc = set_combine(sets.DT.MidAcc, {back="Grounded Mantle"})




	sets.WS = {head="Whirlpool Mask",neck="Fotia Gorget", left_ear="Telos Earring", right_ear="Ishvara Earring",
		body="Taeon Tabard",hands="Herculean Gloves",left_ring="Ilabrat Ring", right_ring="Cho'j Band",
		back="Vespid Mantle",waist="Fotia Belt", legs="Ta'lab Trousers",feet="Rawhide Boots"} --Done


	sets.WS.MidAcc = set_combine(sets.WS, {head="Sukeroku Hachi.",
		hands="Umuthi Gloves", right_ring="Beeline Ring", back="Vespid Mantle"})


	sets.WS.HighAcc = set_combine(sets.WS.MidAcc, {head="Taeon Chapeau", left_ear="Zennaroi Earring",
		back="Grounded Mantle", waist="Olseni Belt", feet="Atrophy Boots +2"})
	
	
	sets.WS['Aeolian Edge'] = {
		head="Whirlpool Mask", neck="Fotia Gorget", left_ear="Friomisi Earring", right_ear="Crematio Earring",
		body="Mekosu. Harness", hands="Umuthi Gloves", left_ring="Weather. Ring", right_ring="Acumen Ring",
		back="Toro Cape", waist="Eschan Stone", legs="Pursuer's Pants", feet="Rawhide Boots"}	
														--DEX40%, INT40%
														--DEX:233, INT:191
														--MAB:47
														--M.Acc:47
														--M.Dam:6
	sets.WS['Aeolian Edge'].MidAcc = sets.WS['Aeolian Edge']
	sets.WS['Aeolian Edge'].HighAcc = sets.WS['Aeolian Edge']
	
	sets.WS.Cyclone = sets.WS['Aeolian Edge']  --Cyclone is same as Aeolian
	sets.WS.Cyclone.MidAcc = sets.WS.Cyclone
	sets.WS.Cyclone.HighAcc = sets.WS.Cyclone

	sets.WS["Last Stand"] = set_combine(sets.Ranged, {neck="Fotia Gorget", right_ear="Ishvara Earring", waist="Fotia Belt"})
	sets.WS["Last Stand"].MidAcc = sets.WS["Last Stand"]
	sets.WS["Last Stand"].HighAcc = sets.WS["Last Stand"]

		--"Rudra's Storm" = DEX 80%			TP:Damage
		--Evisceration = DEX50%				TP:
		--Dancing Edge = DEX 40%, CHR 40%	TP:Accuracy
		--Mandalic Stab = DEX 60%			TP:
		--Shark Bite = DEX 40% , AGI 40%	TP:
		--Last Stand = AGI 73-85%			TP:


	set_macro_book()

	sets.DontForget = {main="Mandau", range="Tsoa. Crossbow", ammo="Gashing Bolt",
		right_ear="Reraise Earring", left_ring="Gash. Bolt Quiver"}

end

function precast(spell)
	if spell.type == 'Item' then
		--If using an item (eg Forbidden Key, Velkk Coffer) cancel actions. (Was changing into fast cast set)
		return
	end
	--add_to_chat(9, 'Precast: spell=' ..spell.english.. ' spell type=' ..spell.type.. ' Skill=' ..spell.skill.. ' Prefix=' ..spell.prefix)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' and spell.english ~= 'Ranged'then
		--add_to_chat(9, 'not JobAbility, WeaponSkill, or Ranged Attack so Fast Cast')
		--if spell.english ~= 'Stun' then
			equip(sets.FastCast)
		--elseif spell.english == 'Stun' then
			--equip(sets.Stun)
			--add_to_chat(9, 'STUN set, precast')
		--end


	elseif spell.type == "WeaponSkill" then
		if sets.WS[spell.english] then
			EquipSet = sets.WS[spell.english] --??need to test to make sure it works
		else
			EquipSet = sets.WS
		end

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

		if (player.tp > 1749 and player.tp < 2000) or (player.tp > 2749 and player.tp < 3000) then
			--equip({left_ear="Moonshade Earring"})
			EquipSet = set_combine(EquipSet, {left_ear="Moonshade Earring"})
		end
		if buffactive['Reive Mark'] then
			EquipSet = set_combine(EquipSet, {neck="Ygnas's Resolve +1"})
		end

		equip(EquipSet)

	elseif spell.prefix == "/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif spell.type == 'Step' then
			equip(sets.JA.Step)
		elseif spell.type == 'Waltz' and spell.english ~= 'Healing Waltz' then
			equip(sets.JA.Waltz)
		end
	
	elseif spell.english == "Ranged" then
		equip(sets.Ranged)
	end

end --end precast

function midcast(spell)
	
	--THF has no mid cast
		return
		
end  --end midcast

function aftercast(spell)

	if player.status =='Engaged' then

		EquipSet = sets[SetMode_Names[SetMode_Index]]  --DD or DT or MDT sets

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

	else
		EquipSet = sets.Idle 

		if EquipSet[SetMode_Names[SetMode_Index]] then
			EquipSet = EquipSet[SetMode_Names[SetMode_Index]] --equip set.Idle.DT or sets.Idle.MDT
		end

		--[[if player.mpp >= 70 and SetMode_Names[SetMode_Index] == 'DD' then
			EquipSet = set_combine(EquipSet, {legs="Crimson Cuisses"})
		end]]

	end
	if buffactive['Reive Mark'] then
		EquipSet = set_combine(EquipSet, {neck="Ygnas's Resolve +1"})
	end

	--[[if Beatific_On == 1 and SetMode_Names[SetMode_Index] ~= 'MDT' then
		EquipSet = set_combine(EquipSet, {sub="Beatific Shield +1"})
	end]]

	if Mecisto_On == 1 then
		EquipSet = set_combine(EquipSet, {back="Mecisto. Mantle"})
	end

	equip(EquipSet)

end --end aftercast

function status_change(new,old)
	--add_to_chat(9, 'Status change: new=' ..new.. ', old=' ..old)
	aftercast()
		--*!*!* Same as aftercast, try to refine *!*!*--

	--
	--if player.status =='Engaged' then
	--
	--	EquipSet = sets[SetMode_Names[SetMode_Index]]  --DD or DT or MDT sets
	--
	--	if EquipSet[Accuracy[Accuracy_Index]] then
	--		--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
	--		EquipSet = EquipSet[Accuracy[Accuracy_Index]]
	--	end
	--
	--else
	--	EquipSet = sets.Idle -- full refresh set
	--
	--	if EquipSet[SetMode_Names[SetMode_Index]] then
	--		EquipSet = EquipSet[SetMode_Names[SetMode_Index]] --equip set.Idle.DT or sets.Idle.MDT
	--	end
	--
	--end
	--
	--if buffactive['Reive Mark'] then
	--	EquipSet = set_combine(EquipSet, {neck="Ygnas's Resolve +1"})
	--end
	--
	--if Beatific_On == 1 and SetMode_Names[SetMode_Index] ~= 'MDT' then
	--	EquipSet = set_combine(EquipSet, {sub="Beatific Shield +1"})
	--end
	--
	--if Mecisto_On == 1 then
	--	EquipSet = set_combine(EquipSet, {back="Mecisto. Mantle"})
	--end
	--
	--equip(EquipSet)
	--

end -- end status_change

function buff_change(buff_name,gain)
	if buff_name == 'Reive Mark' and gain then
		equip({neck="Ygnas's Resolve +1"})
	--sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +1"}
	elseif buff_name=='Perfect Dodge' then
		if gain then
			equip(sets.JA['Perfect Dodge'])
			disable('hands')
			add_to_chat(9, 'Perfect Dodge ON, hands disabled')
		else
			enable('hands')
			add_to_chat(9, 'Perfect Dodge off, hands enabled')
		end
	--sets.JA.Feint = {legs="Plun. Culottes +1"}
	elseif buff_name=='Feint' then
		if gain then
			equip(sets.JA.Feint)
			disable('legs')
			add_to_chat(9, 'Feint ON, legs disabled')
		else
			enable('legs')
			add_to_chat(9, 'Feint off, legs enabled')
		end
	--sets.JA["Sneak Attack"] = {hands="Skulk. Armlets +1"}
	elseif buff_name=='Sneak Attack' then
		if gain then
			equip(sets.JA["Sneak Attack"])
			disable('hands')
			add_to_chat(9, 'Sneak Attack ON, hands disabled')
		else
			enable('hands')
			add_to_chat(9, 'Sneak Attack off, hands enabled')
		end
		
	--[[elseif buff_name == 'Commitment' then
		add_to_chat(4, 'Commitment gone.')
		add_to_chat(9, 'Commitment gone.')]]
	end

end

function self_command(command)

	if command == 'SetMode' then
		SetMode_Index = SetMode_Index + 1
		if SetMode_Index == (#SetMode_Names + 1) then
			SetMode_Index = 1
		end
		add_to_chat(9, 'SetMode now set to: ' ..SetMode_Names[SetMode_Index] )

	elseif command == 'Accuracy' then
		Accuracy_Index = Accuracy_Index + 1
		if Accuracy_Index == (#Accuracy + 1) then
			Accuracy_Index = 1
		end
		add_to_chat(9, 'Accuracy now set to: ' ..Accuracy[Accuracy_Index] )

	--[[elseif command == 'Melee' then
		disable('main', 'sub', 'range')
		MeleeLock = 'True'
		add_to_chat(9, 'MeleeLock = ' ..MeleeLock)

	elseif command == 'Magic' then
		enable('main', 'sub', 'range')
		MeleeLock = 'False'
		add_to_chat(9, 'MeleeLock = ' ..MeleeLock)
	]]
	--[[elseif command == 'Beatific' then
		if Beatific_On == 0 then
			Beatific_On = 1	--always equip Beatific Shield
			add_to_chat(9, 'Beatific ON')
		else
			Beatific_On = 0 -- equip shield defined in sets
			add_to_chat(9, 'Beatific OFF')
		end
	]]

	elseif command == 'Mecisto' then
		if Mecisto_On == 0 then
			Mecisto_On = 1	--always equip Mecisto Mantle
			add_to_chat(9, 'Mecisto ON')
		else
			Mecisto_On = 0 -- equip back defined in sets
			add_to_chat(9, 'Mecisto OFF')
		end

	elseif command == 'Info' then
		add_to_chat(9, 'THF Info:')
		add_to_chat(9, 'SetMode = ' ..SetMode_Names[SetMode_Index])
		add_to_chat(9, 'Accuracy = ' ..Accuracy[Accuracy_Index])
		--add_to_chat(9, 'Beatific_On = ' ..tostring(Beatific_On))
		add_to_chat(9, 'Mecisto_On = ' ..tostring(Mecisto_On))
		--add_to_chat(9, 'MeleeLock = ' ..MeleeLock)

	end

	if command ~= 'Info' and command ~= 'Melee' then
		aftercast()
	end

	--add_to_chat(14, 'command is: ' ..command)
	--send_command('@input /echo SOLO SET')

end -- end self_command

function sub_job_change(new,old)
	set_macro_book()
end

function set_macro_book()
	-- Default macro book & page
	if player.sub_job == 'DNC' then
		send_command('input /macro book 6;wait .1;input /macro set 10')
	elseif player.sub_job == 'THF' then
		send_command('input /macro book 6;wait .1;input /macro set 10')
	elseif player.sub_job == 'WAR' then
		send_command('input /macro book 6;wait .1;input /macro set 10')
	elseif player.sub_job == 'NIN' then
		send_command('input /macro book 6;wait .1;input /macro set 10')
	else
		send_command('input /macro book 6;wait .1;input /macro set 10')

	end
end
