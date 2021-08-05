--[[
		====================
		|   S A M U R A I  |
		====================
]]


ElementalWeaponSkills = S{'Tachi: Goten', 'Tachi: Kagero', 'Tachi: Jinpu', 'Tachi: Koki',
		'Thunder Thrust', 'Raiden Thrust'}
OneHitWeaponSkills = S{'Tachi: Hobaku', 'Tachi: Goten', 'Tachi: Kagero', 'Tachi: Koki', 'Tachi: Yukikaze',
		'Tachi: Gekko', 'Tachi: Kasha', 'Tachi: Ageha', 'Tachi: Fudo',
		'Thunder Thrust', 'Leg Sweep', 'Vorpal Thrust', 'Raiden Thrust', 'Sonic Thrust'}
MultiHitWeaponSkills = S{'Tachi: Enpi', 'Tachi: Jinpu', 'Tachi: Rana', 'Tachi: Shoha',
		'Double Thrust', 'Penta Thrust', 'Impulse Drive'}

function get_sets()

	--Equip variables
	SetMode_Index = 1
	SetMode_Names = {'DD','DT','MDT'}		--Switch between DD and DT sets, set using user command 'SetMode'
	--#SetMode_Names    <- This outputs the number of elements
	Accuracy_Index = 1
	Accuracy = {'None', 'MidAcc', 'HighAcc'}	--Accuracy levels set with user command 'Accuracy'
	Wakido_On = 0								--set with user command 'Wakido'; used to equip when not in P/MDT gear
	Mecisto_On = 0								--set with user command 'Mecisto'; default on, equip CP cape in aftercast
	--MeleeLock = 'False' 						--variable used for info only, work done in self_command function

	--Job Abilities
	sets.JA = {}
	sets.JA["Meikyo Shisui"] = {feet="Sak. Sune-Ate +3"}
	sets.JA.Meditate = {head="Wakido Kabuto +3", hands="Sakonji Kote +3", back="Smertrios's Mantle"}
	sets.JA.Hasso = {hands="Wakido Kote +3", legs="Kasuga Haidate +1", feet="Wakido Sune. +3"}
	sets.JA.Seigan = {head="Kasuga Kabuto +1"}
	sets.JA["Third Eye"] = {legs="Sakonji Haidate +3"}
	sets.JA["Warding Circle"] = {head="Wakido Kabuto +3"}
	sets.JA.Sekkanoki = {hands="Kasuga Kote +1"}
	sets.JA.Sengikori = {feet="Kas. Sune-Ate +1"} --grants bonus to Skillchain
	sets.JA["Blade Bash"] = {hands="Sakonji Kote +3"}
	--sets.JA.Shikikoyo = {legs="Sakonji Haidate +3"} --Give TP to party member

	--[[sets.JA.Waltz = {head="Lithelimb Cap", neck="Loricate Torque +1", right_ear="Soil Pearl", left_ear="Soil Pearl",
		body="Rawhide Vest", hands="Plun. Armlets +1", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		back="Repulse Mantle", waist="Chaac Belt", legs="Pursuer's Pants", feet="Rawhide Boots"}
		--Cure, Healing Waltz = Erase
		--CHR of caster, VIT of Target
	]]  --need to update

	sets.JA.Step = {head="Hizamaru Somen +2", neck="Subtlety Spec.", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Hiza. Haramaki +2", hands="Hizamaru Kote +2", left_ring="Beeline Ring", right_ring="Hizamaru Ring",
		back="Smertrios's Mantle", waist="Olseni Belt", legs="Hiza. Hizayoroi +2", feet="Hiza. Sune-Ate +2"} --Primary Acc: 1091

	sets.JA["Violent Flourish"] = set_combine(sets.JA.Step, {left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		left_ring="Weather. Ring", right_ring="Stikini Ring"}) --Accuracy for hit, Magic Accuracy for Stun
		--Stuns

	sets.FastCast = {left_ear="Loquac. Earring", right_ear="Etiolation Earring", left_ring="Weather. Ring", 
		right_ring="Prolix Ring", waist="Sailfi Belt +1", legs="Arjuna Breeches"}
		--Fast Cast: 18%???
		--Haste: 33%

	sets.Ranged = {head="Sakonji Kabuto +3", neck="Ocachi Gorget", left_ear="Enervating Earring", right_ear="Telos Earring",
		body="Kyujutsugi", hands="Kasuga Kote +1", left_ring="Fistmele Ring", right_ring="Cacoethic Ring +1",
		back="Buquwik Cape", waist="Eschan Stone", legs="Wakido Haidate +3", feet="Wakido Sune. +3"}

	sets.Wakido = {body="Wakido Domaru +3"}

	sets.Idle = {ammo="Ginsen",
		head="Wakido Kabuto +3", neck="Sam. Nodowa +2", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Hiza. Haramaki +2", hands="Hizamaru Kote +2", left_ring="Ilabrat Ring", right_ring="Hizamaru Ring",
		back="Smertrios's Mantle", waist="Cetl Belt", legs="Ryuo Hakama +1", feet="Danzo Sune-Ate"}

--[[ **OLD SETS NEED TO DELETED UN-NEEDED GEAR**	
	sets.Idle.DT = {ammo="Ginsen",
		head="Loess Barbuta +1", neck="Loricate Torque +1", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Wakido Domaru +3", hands="Sakonji Kote +3", left_ring="Succor Ring", right_ring="Shadow Ring",
		back="Agema Cape", waist="Flume Belt", legs="Arjuna Breeches", feet="Nyame Sollerets"}
		
	sets.Idle.MDT = {ammo="Ginsen",
		head="Loess Barbuta +1", neck="Loricate Torque +1", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Wakido Domaru +3", hands="Sakonji Kote +3", left_ring="Succor Ring", right_ring="Shadow Ring",
		back="Agema Cape", waist="Flax Sash", legs="Arjuna Breeches", feet="Nyame Sollerets"}]]		

	sets.Idle.DT = {ammo="Ginsen",
		head="Nyame Helm", neck="Loricate Torque +1", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Wakido Domaru +3", hands="Nyame Gauntlets", left_ring="Succor Ring", right_ring="Shadow Ring",
		back="Agema Cape", waist="Flume Belt", legs="Nyame Flanchard", feet="Nyame Sollerets"}
		
	sets.Idle.MDT = {ammo="Ginsen",
		head="Nyame Helm", neck="Loricate Torque +1", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Wakido Domaru +3", hands="Nyame Gauntlets", left_ring="Succor Ring", right_ring="Shadow Ring",
		back="Agema Cape", waist="Flax Sash", legs="Nyame Flanchard", feet="Nyame Sollerets"}
	
--[[	
	sets.Ranged = {head="Umbani Cap", neck="Iskur Gorget", left_ear="Volley earring",
		right_ear="Enervating Earring", body="Mekosu. Harness", hands="Buremte Gloves", left_ring="Fistmele Ring",
		right_ring="Cacoethic Ring", back="Libeccio Mantle", waist="Eschan Stone",
		legs="Pursuer's Pants", feet="Scopuli Nails +1"} 
		--AGI for Ranged Accuracy: 4AGI=3R.Acc
		--STR for Ranged Attack

	sets.Ranged.MidAcc = sets.Ranged

	sets.Ranged.HighAcc = sets.Ranged.MidAcc
]]


--M E L E E
	sets.DD = {ammo="Ginsen",
		head="Sakonji Kabuto +3", neck="Sam. Nodowa +2", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Kasuga Domaru +1", hands="Hizamaru Kote +2", left_ring="Ilabrat Ring", right_ring="Hizamaru Ring",
		back="Smertrios's Mantle", waist="Cetl Belt", legs="Ryuo Hakama +1", feet="Sak. Sune-Ate +3"}
		--was feet="Ryuo Sune-Ate +1"


	sets.DD.MidAcc = set_combine(sets.DD, {head="Hizamaru Somen +2", body="Wakido Domaru +3", feet="Hiza. Sune-Ate +2"})

	sets.DD.HighAcc = set_combine(sets.DD.MidAcc, {waist="Olseni Belt"})

	--[[head="Nyame Helm", 
		body="Wakido Domaru +3", hands="Nyame Gauntlets"
		 legs="Nyame Flanchard", feet="Nyame Sollerets"}
	]]

	sets.DT = {ammo="Ginsen",
		head="Nyame Helm", neck="Loricate Torque +1", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Wakido Domaru +3", hands="Nyame Gauntlets", left_ring="Succor Ring", right_ring="Shadow Ring",
		back="Agema Cape", waist="Flume Belt", legs="Nyame Flanchard", feet="Nyame Sollerets"}

	sets.DT.MidAcc = sets.DT


	sets.DT.HighAcc = sets.DT.MidAcc
	
	
	sets.MDT = {ammo="Ginsen",
		head="Nyame Helm", neck="Loricate Torque +1", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Wakido Domaru +3", hands="Nyame Gauntlets", left_ring="Succor Ring", right_ring="Shadow Ring",
		back="Agema Cape", waist="Flax Sash", legs="Nyame Flanchard", feet="Nyame Sollerets"}

	sets.MDT.MidAcc = sets.DT


	sets.MDT.HighAcc = sets.DT.MidAcc




	sets.WS = {ammo="Knobkierrie",
		head="Sakonji Kabuto +3", neck="Sam. Nodowa +2", left_ear="Thrud Earring", right_ear="Ishvara Earring",
		body="Sakonji Domaru +3", hands="Hizamaru Kote +2", left_ring="Ilabrat Ring", right_ring="Shukuyu Ring",
		back="Smertrios's Mantle", waist="Fotia Belt", legs="Wakido Haidate +3", feet="Sak. Sune-Ate +3"}
			-- legs Ryuo Hakama +1   use for SC?
			--delete?  Prosilio Belt +1

	sets.WS.MidAcc = set_combine(sets.WS, {head="Hizamaru Somen +2", feet="Hiza. Sune-Ate +2"})


	sets.WS.HighAcc = set_combine(sets.WS.MidAcc, {head="Ynglinga Sallet", right_ring="Cacoethic Ring +1"})
	
	--sets.WS["Tachi: Ageha"] = set_combine(sets.WS)

	sets.WS['Apex Arrow'] = set_combine(sets.Ranged, { neck="Fotia Gorget",  waist="Fotia Belt", 
		left_ear="Thrud Earring", right_ear="Ishvara Earring"})
	sets.WS['Empyreal Arrow'] = sets.WS['Apex Arrow']


	set_macro_book()

	sets.DontForget = {main="Masamune", sub="Utu Grip", body="Shining One"}

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
	
	elseif spell.english == "Ranged" then
		--equip(sets.Shapshot)
		--equip(sets.TP.Ranged)
		equip(sets.Ranged)


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
	end

end --end precast

function midcast(spell)
	
	--SAM has no mid cast
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

	if Wakido_On == 1 and SetMode_Names[SetMode_Index] == 'DD' then
		EquipSet = set_combine(EquipSet, sets.Wakido)
	end

	if Mecisto_On == 1 then
		EquipSet = set_combine(EquipSet, {back="Mecisto. Mantle"})
	end

	equip(EquipSet)

end --end aftercast

function status_change(new,old)
	--add_to_chat(9, 'Status change: new=' ..new.. ', old=' ..old)
	aftercast()

end -- end status_change

function buff_change(buff_name,gain)
	if buff_name == 'Reive Mark' and gain then
		equip({neck="Ygnas's Resolve +1"})
	--sets.JA["Meikyo Shisui"] = {feet="Sak. Sune-Ate +3"}
	elseif buff_name=='Meikyo Shisui' then
		if gain then
			equip(sets.JA["Meikyo Shisui"])
			disable('feet')
			add_to_chat(9, 'Meikyo Shisui ON, feet disabled')
		else
			enable('feet')
			add_to_chat(9, 'Meikyo Shisui off, feet enabled')
		end
	--sets.JA.Feint = {legs="Plun. Culottes"}
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
	elseif command == 'Wakido' then
		if Wakido_On == 0 then
			Wakido_On = 1	--always equip Wakido body
			add_to_chat(9, 'Wakido ON')
		else
			Wakido_On = 0 -- equip body defined in sets
			add_to_chat(9, 'Wakido OFF')
		end
	

	elseif command == 'Mecisto' then
		if Mecisto_On == 0 then
			Mecisto_On = 1	--always equip Mecisto Mantle
			add_to_chat(9, 'Mecisto ON')
		else
			Mecisto_On = 0 -- equip back defined in sets
			add_to_chat(9, 'Mecisto OFF')
		end

	elseif command == 'Info' then
		add_to_chat(9, 'SAM Info:')
		add_to_chat(9, 'SetMode = ' ..SetMode_Names[SetMode_Index])
		add_to_chat(9, 'Accuracy = ' ..Accuracy[Accuracy_Index])
		add_to_chat(9, 'Wakido_On = ' ..tostring(Wakido_On))
		add_to_chat(9, 'Mecisto_On = ' ..tostring(Mecisto_On))
		--add_to_chat(9, 'MeleeLock = ' ..MeleeLock)

	end

	if command ~= 'Info' then
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
	if player.sub_job == 'WAR' then
		send_command('input /macro book 12;wait .1;input /macro set 1')
	elseif player.sub_job == 'DNC' then
		send_command('input /macro book 12;wait .1;input /macro set 2')
	elseif player.sub_job == 'NIN' then
		send_command('input /macro book 12;wait .1;input /macro set 3')
	else
		send_command('input /macro book 12;wait .1;input /macro set 4')

	end
end
