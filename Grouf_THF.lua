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
	sets.JA.Flee = {feet="Pill. Poulaines +3"}
	sets.JA.Steal = {head="Plun. Bonnet +3", legs="Assassin's Culottes",feet="Pill. Poulaines +3"}
	sets.JA.Mug = {head="Plun. Bonnet +3"}
	sets.JA.Despoil = {legs="Skulk. Culottes +1", feet="Skulk. Poulaines +1"}
	sets.JA.Hide = {body="Pillager's Vest +3"}
	sets.JA.Conspirator = {body="Skulker's Vest +1"}
	sets.JA.Accomplice = {head="Skulker's Bonnet +1"}
	sets.JA.Collaborator = {head="Skulker's Bonnet +1"}
	sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +3"}
	sets.JA.Feint = {legs="Plun. Culottes +3"}
	--sets.JA["Assassin's Charge"] = {feet="Plun. Poulaines"}
	sets.JA["Sneak Attack"] = {hands="Skulk. Armlets +1"}
	sets.JA["Trick Attack"] = {body="Plunderer's Vest +3", hands="Pill. Armlets +3"} --AGI increase Damage

	sets.JA.Waltz = {head="Pill. Bonnet +3", neck="Loricate Torque +1", right_ear="Soil Pearl", left_ear="Soil Pearl",
		body="Pillager's Vest +3", hands="Plun. Armlets +3", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		back="Repulse Mantle", waist="Chaac Belt", legs="Plun. Culottes +3", feet="Rawhide Boots"}
		--Cure, Healing Waltz = Erase
		--CHR of caster, VIT of Target :: Added together
		--CHR: 93+157
		--VIT: 101+165
		--total	516		::		Should cure ~317

	sets.JA.Step = {head="Pill. Bonnet +3", neck="Subtlety Spec.", left_ear="Telos Earring", right_ear="Zennaroi Earring", 
		body="Pillager's Vest +3", hands="Pill. Armlets +3", left_ring="Ilabrat Ring", right_ring="Cacoethic Ring +1", 
		back="Ground. Mantle +1", waist="Olseni Belt", legs="Pill. Culottes +3", feet="Pill. Poulaines +3"}  --need accuracy
			--Acc:  1337

	sets.JA['Violent Flourish'] = set_combine(sets.JA.Step, {neck="Sanctity Necklace",
		left_ear="Psystorm Earring", right_ear="Lifestorm Earring", 
		left_ring="Weather. Ring", right_ring="Stikini Ring", 
		waist="Eschan Stone", legs="Nyame Flanchard"}) --Accuracy for hit, Magic Accuracy for Stun
		--Stuns

	sets.FastCast = {head="Herculean Helm", neck="Magoraga Beads", left_ear="Etiolation Earring", right_ear="Loquac. Earring",
		body="Taeon Tabard", hands="Herculean Gloves", left_ring="Weather. Ring", right_ring="Prolix Ring",
		waist="Sailfi Belt +1", legs="Volte Hose", feet="Rawhide Boots"}
		--Fast Cast: 36%
		--Haste: 35%

	sets.Idle = {head="Volte Cap",neck="Loricate Torque +1",left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Plunderer's Vest +3",hands="Herculean Gloves",left_ring="Hetairoi Ring", right_ring="Epona's Ring",
		back="Canny Cape",waist="Sailfi Belt +1",legs="Volte Hose", feet="Pill. Poulaines +3"}

	sets.Idle.TH = {head="Volte Cap",neck="Loricate Torque +1",left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Plunderer's Vest +3",hands="Plun. Armlets +3",left_ring="Hetairoi Ring", right_ring="Epona's Ring",
		back="Canny Cape",waist="Sailfi Belt +1", legs="Volte Hose", feet="Pill. Poulaines +3"}
	
	--[[   --OLD set, need to move/delete items from Grouf
	sets.Idle.DT = {head="Lithelimb Cap", 
		waist="Flume Belt",legs="Volte Hose"
	]]

	sets.Idle.DT = {head="Nyame Helm", neck="Loricate Torque +1", left_ear="Infused Earring", right_ear="Etiolation Earring", 
		body="Nyame Mail", hands="Nyame Gauntlets", left_ring="Succor Ring", right_ring="Shadow Ring",
		back="Repulse Mantle", waist="Flume Belt",legs="Nyame Flanchard", feet="Pill. Poulaines +3"}
		
	sets.Ranged = {head="Nyame Helm", neck="Iskur Gorget", left_ear="Volley earring", right_ear="Enervating Earring",
		body="Nyame Mail", hands="Nyame Gauntlets", left_ring="Dingir Ring", right_ring="Cacoethic Ring +1",
		back="Libeccio Mantle", waist="Eschan Stone", legs="Nyame Flanchard", feet="Nyame Sollerets"}
		--R.Acc = 1044
		--AGI for Ranged Accuracy: 4AGI=3R.Acc
		--STR for Ranged Attack

	sets.Ranged.MidAcc = sets.Ranged

	sets.Ranged.HighAcc = sets.Ranged.MidAcc


		--[[head="Nyame Helm", 
		body="Nyame Mail", hands="Nyame Gauntlets"
		 legs="Nyame Flanchard", feet="Nyame Sollerets"}
	]]


--M E L E E
	sets.DD = {head="Plun. Bonnet +3",neck="Asperity Necklace", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Plunderer's Vest +3",hands="Plun. Armlets +3",left_ring="Hetairoi Ring", right_ring="Epona's Ring",
		back="Canny Cape",waist="Sailfi Belt +1", legs="Pill. Culottes +3",feet="Plun. Poulaines +3"}
			--Haste: 36
			-- Double Attack: 10
			-- Triple Attack: 22
			--Use Relic Legs/hands for more acc/att?
			--Rawhide Vest
			--solo use Relic+3 Body?

	sets.DD.MidAcc = set_combine(sets.DD, {neck="Subtlety Spec.", right_ear="Zennaroi Earring", left_ring="Beeline Ring",
		back="Toutatis's Cape", waist="Olseni Belt", legs="Plun. Culottes +3"})

	sets.DD.HighAcc = sets.DD.MidAcc

		--TH caps at +8 for gear/Job Trait
		--NEED to double-check numbers
	sets.TH = set_combine(sets.DD, {head="Volte Cap", hands="Plun. Armlets +3"}) 
	sets.TH.MidAcc = sets.DD.MidAcc
	sets.TH.HighAcc = sets.TH.MidAcc


	sets.DT = {head="Nyame Helm", neck="Loricate Torque +1", left_ear="Infused Earring", right_ear="Etiolation Earring", 
		body="Nyame Mail", hands="Nyame Gauntlets", left_ring="Succor Ring", right_ring="Shadow Ring",
		back="Repulse Mantle", waist="Flume Belt",legs="Nyame Flanchard", feet="Nyame Sollerets"}

	sets.DT.MidAcc = set_combine(sets.DT, { waist="Olseni Belt"})


	sets.DT.HighAcc = set_combine(sets.DT.MidAcc, {back="Ground. Mantle +1"})




	sets.WS = {head="Pill. Bonnet +3",neck="Fotia Gorget", left_ear="Telos Earring", right_ear="Ishvara Earring",
		body="Plunderer's Vest +3",hands="Plun. Armlets +3", left_ring="Ilabrat Ring", right_ring="Shukuyu Ring",
		back="Toutatis's Cape",waist="Fotia Belt", legs="Plun. Culottes +3",feet="Plun. Poulaines +3"}


	sets.WS.MidAcc = sets.WS


	sets.WS.HighAcc = set_combine(sets.WS.MidAcc, {right_ear="Zennaroi Earring", waist="Olseni Belt"})
	
	--fix WS
	sets.WS['Aeolian Edge'] = {
		head="Nyame Helm", neck="Fotia Gorget", left_ear="Friomisi Earring", right_ear="Crematio Earring",
		body="Nyame Mail", hands="Nyame Gauntlets", left_ring="Weather. Ring", right_ring="Acumen Ring",
		back="Toro Cape", waist="Eschan Stone", legs="Nyame Flanchard", feet="Nyame Sollerets"}	
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
		left_ring="Gash. Bolt Quiver"}

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

		--[[if (player.tp > 1749 and player.tp < 2000) or (player.tp > 2749 and player.tp < 3000) then
			--equip({left_ear="Moonshade Earring"})
			EquipSet = set_combine(EquipSet, {left_ear="Moonshade Earring"})
		end]]
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

		EquipSet = sets[SetMode_Names[SetMode_Index]]  --DD or TH or DT sets

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
	--sets.JA.Feint = {legs="Plun. Culottes +3"}
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

	elseif buff_name=='Trick Attack' then
		if gain then
			equip(sets.JA["Trick Attack"])
			disable('body')
			disable('hands')
			add_to_chat(9, 'Trick Attack ON, body&hands disabled')
		else
			enable('body')
			enable('hands')
			add_to_chat(9, 'Trick Attack off, body&hands enabled')
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
