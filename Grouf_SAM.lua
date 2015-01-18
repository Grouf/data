--[[
		====================
		|   S A M U R A I  | 
		====================
]]

--[[AF/Relic 119 upgrade
Sakonji Kote
]]
--[[Gear needed:
Lithelimb cap			--AAHM
Mes'yohi Haubergeon		--Kamulnuts
Osmium Cuisses			--AAEV
Scuffler's cosciales	--Savage
Metalsinger belt		--Savage
]]

ElementalWeaponSkills = S{'Tachi: Goten', 'Tachi: Kagero', 'Tachi: Jinpu', 'Tachi: Koki',
		'Thunder Thrust', 'Raiden Thrust'}
OneHitWeaponSkills = S{'Tachi: Hobaku', 'Tachi: Goten', 'Tachi: Kagero', 'Tachi: Koki', 'Tachi: Yukikaze',
		'Tachi: Gekko', 'Tachi: Kasha', 'Tachi: Ageha', 'Tachi: Fudo',
		'Thunder Thrust', 'Leg Sweep', 'Vorpal Thrust', 'Raiden Thrust', 'Sonic Thrust'}
MultiHitWeaponSkills = S{'Tachi: Enpi', 'Tachi: Jinpu', 'Tachi: Rana', 'Tachi: Shoha',
		'Double Thrust', 'Penta Thrust', 'Impulse Drive'}

SetMode_Index = 1
SetMode_Names = {'DD','DT','MDT','Shark'}		--Switch between DD and DT sets, set using user command 'DDDT'
Accuracy_Index = 1
Accuracy = {'None', 'MidAcc', 'HighAcc'}	--Accuracy levels set with user command 'Accuracy'
Weapon_Index = 1
Weapon = {'Tsurumaru', 'Nativus Halberd'}	--Switch between weapons, set using user command 'Weapon'
Wakido = 0	--Equip when 1, set with user command 'Wakido'
Hime = 0	--Equip when 1, set when Miser's Roll gained

function get_sets()
	
	sets.JA = {}
	sets.JA["Meikyo Shisui"] = {feet="Sak. Sune-Ate +1"}
	sets.JA.Meditate = {head="Wakido Kabuto +1", hands="Sakonji Kote", back="Takaha Mantle"}
	sets.JA.Hasso = {hands="Wakido Kote +1"}
	sets.JA.Seigan = {head="Unkai Kabuto +2"}
	sets.JA["Third Eye"] = {legs="Sakonji Haidate"}
	sets.JA["Warding Circle"] = {head="Wakido Kabuto +1"}
	sets.JA.Sekkanoki = {hands="Unkai Kote +2"}
	sets.JA.Sengikori = {feet="Unkai Sune-Ate +2"} --grants bonus to Skillchain
	sets.JA["Blade Bash"] = {hands="Sakonji Kote"}
	--sets.JA.Shikikoyo = {legs="Sakonji Haidate"} --Give TP to party member
	sets.JA.Step = {head="Gavialis Helm", neck="Iqabi Necklace", left_ear="Steelflash Earring",
		right_ear="Zennaroi Earring", body="Miki. Breastplate", hands="Buremte Gloves", left_ring="Beeline Ring",
		right_ring="Rajas Ring", back="Takaha Mantle", waist="Olseni Belt",
		legs="Miki. Cuisses", feet="Waki. Sune-Ate +1"} --Primary Acc: 949
	sets.JA["Violent Flourish"] = set_combine(sets.JA.Step, {left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		left_ring="Weather. Ring", right_ring="Sangoma Ring"})
		
	
sets.DD = {}
	sets.DD.Tsurumaru = {main="Tsurumaru", sub="Tzacab Grip", range="Cibitshavore", ammo="Tulfaire Arrow",
		head="Otomi Helm", neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
		body="Xaddi Mail", hands="Xaddi Gauntlets", left_ring="K'ayres Ring", right_ring="Rajas Ring", 
		back="Takaha mantle", waist="Cetl Belt", legs="Xaddi Cuisses", feet="Sak. Sune-Ate +1"}
	
	sets.DD.Tsurumaru.MidAcc = set_combine(sets.DD.Tsurumaru, {head="Yaoyotl Helm"})
	
	sets.DD.Tsurumaru.HighAcc = set_combine(sets.DD.Tsurumaru.MidAcc, {head="Gavialis Helm", feet="Waki. Sune-Ate +1"})
		--TODO Finish adding accuracy gear
	
	sets.DD['Nativus Halberd'] = set_combine(sets.DD.Tsurumaru, {main="Nativus Halberd"})
	
	sets.DD['Nativus Halberd'].MidAcc  = set_combine(sets.DD.Tsurumaru.MidAcc, {main="Nativus Halberd"})
	
	sets.DD['Nativus Halberd'].HighAcc = set_combine(sets.DD.Tsurumaru.HighAcc, {main="Nativus Halberd"})
	
sets.Ranged = {head="Sakonji Kabuto +1", neck="Ocachi Gorget", left_ear="Clearview Earring",
		right_ear="Bladeborn Earring", body="Kyujutsugi", hands="Buremte Gloves", left_ring="Paqichikaji Ring",
		right_ring="Fistmele Ring", back="Buquwik Cape", waist="Flax Sash",
		legs="Wakido Haidate +1", feet="Waki. Sune-Ate +1"}
	
	sets.Ranged.MidAcc = set_combine(sets.Ranged, {back="Kayapa Cape"})
	
	sets.Ranged.HighAcc = set_combine(sets.Ranged.MidAcc, {neck="Iqabi Necklace"})
	
	
sets.DT = {}
	sets.DT.Tsurumaru = {main="Tsurumaru", sub="Tzacab Grip", range="Cibitshavore", ammo="Tulfaire Arrow",
		head="Gavialis Helm", neck="Twilight Torque", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
		body="Otro. Harness +1", hands="Umuthi Gloves", left_ring="Dark Ring", right_ring="Shadow Ring", 
		back="Repulse Mantle", waist="Flume Belt", legs="Otronif Brais +1", feet="Otronif Boots +1"}
				--Need Sakonji Kote +1
	
	sets.DT['Nativus Halberd'] = set_combine(sets.DT.Tsurumaru, {main="Nativus Halberd"})
	
sets.MDT = {}
	sets.MDT.Tsurumaru = {main="Tsurumaru", sub="Tzacab Grip", range="Cibitshavore", ammo="Tulfaire Arrow",
		head="Gavialis Helm", neck="Twilight Torque", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
		body="Kyujutsugi", hands="Umuthi Gloves", left_ring="Dark Ring", right_ring="Shadow Ring", 
		back="Repulse Mantle", waist="Flax Sash", legs="Otronif Brais +1", feet="Otronif Boots +1"}
	
	sets.MDT['Nativus Halberd'] = set_combine(sets.DT.Tsurumaru, {main="Nativus Halberd"})

sets.Shark = {}
	sets.Shark.Tsurumaru = {main="Tsurumaru", sub="Tzacab Grip", range="Cibitshavore", ammo="Tulfaire Arrow",
		head="Gallian helm +1", neck="Twilight Torque", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
		body="Kyujutsugi", hands="Umuthi Gloves", left_ring="Zanhi Ring", right_ring="Shadow Ring", 
		back="Tuilha Cape", waist="Flax Sash", legs="Otronif Brais +1", feet="Otronif Boots +1"}
	
	sets.Shark['Nativus Halberd'] = set_combine(sets.DT.Tsurumaru, {main="Nativus Halberd"})
	
	
sets.WS = {}
	sets.WS.OneHit = {head="Gavialis Helm", neck="Tlamiztli Collar", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Phorcys Korazin", hands="Mikinaak Gauntlets", left_ring="Cho'j Band", 
		right_ring="Rajas Ring", back="Vespid Mantle", waist="Prosilio Belt +1", 
		legs="Miki. Cuisses", feet="Sak. Sune-Ate +1"}
		
	sets.WS.OneHit.MidAcc = set_combine(sets.WS.OneHit,{waist="Caudata Belt",
		feet="Waki. Sune-Ate +1"})
	
	sets.WS.OneHit.HighAcc = set_combine(sets.WS.OneHit.MidAcc,{neck="Iqabi Necklace",
		body="Miki. Breastplate", hands="Xaddi Gauntlets",
		back="Takaha Mantle", waist="Olseni Belt"})  --needs Mes. Hauby
	
	sets.WS.MultiHit = {head="Otomi Helm", neck="Asperity Necklace", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Xaddi Mail", hands="Xaddi Gauntlets", left_ring="Cho'j Band", 
		right_ring="Rajas Ring", back="Bleating Mantle", waist="Windbuffet Belt", 
		legs="Xaddi Cuisses", feet="Sak. Sune-Ate +1"}
	
	sets.WS.MultiHit.MidAcc = set_combine(sets.WS.MultiHit,{back="Letalis Mantle", waist="Olseni Belt"})
	
	sets.WS.MultiHit.HighAcc = set_combine(sets.WS.MultiHit.MidAcc,{head="Gavialis Helm", body="Miki. Breastplate",
		neck="Iqabi Necklace", feet="Waki. Sune-Ate +1"})
	--Need to refine multi-hit midacc and highacc to match one-hit gear adjustments
	
	--Specific gear for WS
	sets["Tachi: Enpi"] = {neck="Light Gorget"}
	sets["Tachi: Goten"] = {neck="Light Gorget"}
	sets["Tachi: Kagero"] = {neck="Flame Gorget"}
	sets["Tachi: Kasha"] = {neck="Flame Gorget"}
	sets["Tachi: Rana"] = {neck="Shadow Gorget"}
	sets["Tachi: Ageha"] = {neck="Shadow Gorget"}
	sets["Tachi: Fudo"] = {neck="Light Gorget"}
	sets["Tachi: Shoha"] = {neck="Shadow Gorget"}
	sets["Apex Arrow"] = {neck="Light Gorget"}
	
	sets.FastCast = {neck="Magoraga Beads", 
		right_ear="Loquac. Earring", right_ring="Prolix Ring", left_ring="Weather. Ring",
		waist="Sailfi Belt"}
	
	sets.DontForget = {body="Wakido Domaru +1", left_ear="Reraise Earring", right_ear = "Linkpearl", 
		back="Mecisto. Mantle"}
	
	sets.DontForget2 = {main="Tulfaire Arrow", sub="Tulfaire Quiver", range="Demon Arrow", ammo="Demon Quiver",
		body="Hime Domaru +1"}
	
	set_macro_book()

end
	
function precast(spell)
	--add_to_chat(9, 'Precast: spell type= ' ..spell.type.. ' .english= ' ..spell.english)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' and spell.english ~= 'Ranged' then
		--add_to_chat(9, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.FastCast)
	--equip(sets[SetMode_Names[SetMode_Index]].WS[spell.english])
	elseif spell.type == "WeaponSkill" then
		
		if OneHitWeaponSkills:contains(spell.english)then 
			EquipSet = sets.WS.OneHit
		elseif MultiHitWeaponSkills:contains(spell.english) then
			EquipSet = sets.WS.MultiHit
		elseif spell.english == 'Apex Arrow' then
			EquipSet = sets.Ranged
		else
			add_to_chat(12, 'WS ' ..spell.english.. ' not found, equipping OneHit set')
			EquipSet = sets.WS.OneHit
		end
		
		if EquipSet[Accuracy[Accuracy_Index]] then
			add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end
		
		if sets[spell.english] then
			EquipSet = set_combine(EquipSet,sets[spell.english])
		end
		
		if buffactive['Reive Mark'] then
			EquipSet = set_combine(EquipSet,{neck="Ygnas's Resolve +1"})
		end
		
		if (player.tp > 1749 and player.tp < 2000) or (player.tp > 2749 and player.tp < 3000) then
			EquipSet = set_combine(EquipSet,{right_ear="Moonshade Earring"})
			add_to_chat(9, player.tp.. ' TP, equipping Moonshade Earring')
		end
		
		if ElementalWeaponSkills:contains(spell.english) then
			if spell.element == world.day_element then
				add_to_chat(9, 'Elemental WS: ' ..spell.english.. 'is element: ' ..spell.element..
				', day element: ' ..world.day_element)
				add_to_chat(9, '*~*Equipping Gevialis Helm*~*')
				EquipSet = set_combine(EquipSet,{head="Gavialis Helm"})
			end
		end
		
		equip(EquipSet)
		--add_to_chat(9, 'Set Equipped for ' ..spell.english.. ', Accuracy: ' ..Accuracy[Accuracy_Index])
		--print_set(EquipSet)
	
	elseif spell.prefix == "/jobability" then
		--add_to_chat(9, '/jobability found: ' ..spell.english)
		if spell.english == "Third Eye" and not buffactive['Seigan'] then
			cancel_spell()
			add_to_chat(12, 'Seigan not active, cancel Third Eye')
			return
		end
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif spell.type == 'Step' then
			equip(sets.JA.Step)
		end
	
	elseif spell.english == "Ranged" then
		EquipSet = sets.Ranged
		if EquipSet[Accuracy[Accuracy_Index]] then
			add_to_chat(9, 'Ranged Accuracy found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end
		
		equip(EquipSet)
	
	end
	
end

function aftercast(spell)
	status_change()
end

function status_change(new,old)
	EquipSet = sets[SetMode_Names[SetMode_Index]]  --DD or DT sets
	
	EquipSet = EquipSet[Weapon[Weapon_Index]]  --GK or Polearm
	
	if EquipSet[Accuracy[Accuracy_Index]] then
		add_to_chat(9, 'status_change Accuracy found: ' ..Accuracy[Accuracy_Index])
		EquipSet = EquipSet[Accuracy[Accuracy_Index]]
	end
	
	if Wakido == 1 then
		EquipSet = set_combine(EquipSet, {body="Wakido Domaru +1"})
	end
	
	if Hime == 1 then
		EquipSet = set_combine(EquipSet, {body="Hime Domaru +1"})
	end
	
	if player.status == 'Engaged' then
		equip(EquipSet)
	else
		EquipSet = set_combine(EquipSet, {feet="Danzo Sune-Ate"})
		equip(EquipSet)
	end
	
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function buff_change(buff_name,gain) --gain = True if gained, False if lost
	if buff_name == 'Reive Mark' and gain then
		equip({neck="Ygnas's Resolve +1"})
	
	elseif buff_name == 'Sekkanoki' then
		if gain then
			equip(sets.JA.Sekkanoki)
			disable('hands')
		else
			enable('hands')
		end
	
	elseif buff_name == 'Sengikori' then -- Skillchain bonus
		if gain then
			equip(sets.JA.Sengikori)
			disable('feet')
		else
			enable('feet')
		end
	
	elseif buff_name == "Miser's Roll" then
		if gain then
			Hime = 1
		else
			Hime = 0
		end
	
	elseif buff_name == "Meikyo Shisui" then --SP Ability
		if gain then
			equip(sets.JA["Meikyo Shisui"])
			disable('feet')
		else
			enable('feet')
		end
	
	end
	
end

function self_command(command)
	if command == 'DDDT' then
		SetMode_Index = SetMode_Index + 1
		if SetMode_Index == 5 then
			SetMode_Index = 1
		end
		add_to_chat(9, 'SetMode now set to: ' ..SetMode_Names[SetMode_Index] )
	
	elseif command == 'Wakido' then
		if Wakido == 0 then
			Wakido = 1
			add_to_chat(9, 'Wakido ON')
		else
			Wakido = 0
			add_to_chat(9, 'Wakido OFF')
		end
	
	elseif command == 'Accuracy' then
		Accuracy_Index = Accuracy_Index + 1
		if Accuracy_Index == 4 then
			Accuracy_Index = 1
		end
		add_to_chat(9, 'Accuracy now set to: ' ..Accuracy[Accuracy_Index] )
	
	elseif command == 'Weapon' then
		if Weapon_Index == 1 then
			Weapon_Index = 2
		else
			Weapon_Index = 1
		end
		add_to_chat(9, 'Weapon now set to: ' ..Weapon[Weapon_Index] )
	
	elseif command == 'Info' then
		add_to_chat(9, 'SAM Info:')
		add_to_chat(9, 'SetMode = ' ..SetMode_Names[SetMode_Index])
		add_to_chat(9, 'Weapon = ' ..Weapon[Weapon_Index])
		add_to_chat(9, 'Accuracy = ' ..Accuracy[Accuracy_Index])
		add_to_chat(9, 'Wakido = ' ..tostring(Wakido))
		
	end
	
	if command ~= 'Info' then
		status_change(player.status)
	end

end

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
