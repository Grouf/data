--[[
		====================
		|   S A M U R A I  | 
		====================
]]

function get_sets()
	
	ElementalWeaponSkills = S{'Tachi: Goten', 'Tachi: Kagero', 'Tachi: Jinpu', 'Tachi: Koki'}
	
	sets.JA = {}
	sets.JA["Meikyo Shisui"] = {feet="Sakonji Sune-Ate"}
	sets.JA.Meditate = {head="Wakido Kabuto", hands="Sakonji Kote", back="Takaha Mantle"}
	sets.JA.Hasso = {hands="Wakido Kote", legs="Unkai Haidate +2"}
	sets.JA["Warding Circle"] = {head="Wakido Kabuto"}
	sets.JA.Sekkanoki = {hands="Unkai Kote +2"}
	sets.JA["Blade Bash"] = {hands="Sakonji Kote"}
	sets.JA.Step = {head="Yaoyotl Helm", neck="Unkai Nodowa", left_ear="Steelflash Earring",
		right_ear="Heartseeker Earring", body="Miki. Breastplate", hands="Buremte Gloves", left_ring="Beeline Ring",
		right_ring="Rajas Ring", back="Takaha Mantle", waist="Olseni Belt",
		legs="Miki. Cuisses", feet="Wakido Sune-Ate"} --Primary Acc: 834
	sets.JA["Violent Flourish"] = set_combine(sets.JA.Step, {left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		right_ring="Perception Ring", left_ring="Sangoma Ring"})
		
	
	SetMode_Index = 1
	SetMode_Names = {'DD','Accuracy', 'DT'}
	
sets.DD = {}
	
	sets.DD.WS = {head="Yaoyotl Helm", neck="Tlamiztli Collar", left_ear="Moonshade Earring", 
		right_ear="Bladeborn Earring", body="Miki. Breastplate", hands="Mikinaak Gauntlets", left_ring="Cho'j Band", 
		right_ring="Rajas Ring", back="Buquwik Cape", waist="Prosilio Belt +1", 
		legs="Miki. Cuisses", feet="Mikinaak Greaves"}
	
	sets.DD.WS["Tachi: Fudo"] = set_combine(sets.DD.WS,{neck="Light Gorget"}) --STR60
	
	--sets.DD.WS["Tachi: Kasha"] = set_combine(sets.DD.WS,{neck="Light Gorget"}) --STR75
	--sets.DD.WS["Tachi: Gekko"] = set_combine(sets.DD.WS,{neck="Snow Gorget"}) --STR75
	--sets.DD.WS["Tachi: Yukikaze"] = set_combine(sets.DD.WS,{neck="Snow Gorget"}) --STR75
	--sets.DD.WS["Tachi: Rana"] = set_combine(sets.DD.WS,{neck="Shadow Gorget"}) --STR35
	
	sets.DD.WS["Tachi: Shoha"] = set_combine(sets.DD.WS,{neck="Shadow Gorget"})
	
	sets.DD.Ranged = {head="Sakonji Kabuto", neck="Ocachi Gorget", left_ear="Steelflash Earring",
		right_ear="Clearview Earring", body="Kyujutsugi", hands="Buremte Gloves", left_ring="Paqichikaji Ring",
		right_ring="Fistmele Ring", back="Buquwik Cape", waist="Buccaneer's Belt",
		legs="Wakido Haidate", feet="Wakido Sune-Ate"} 	-- R.Acc=861  R.Att=960 iLvl=115 (tulfaire arrow)
														-- R.Acc=856  R.Att=950 iLvl=115 (demon arrow)
														-- R.Acc=787  R.Att=923 iLvl=115 (beetle arrow) ???
	sets.DD.WS["Apex Arrow"] = set_combine(sets.DD.Ranged, {left_ear="Moonshade Earring"})
	
	sets.DD.TP = {sub="Pole Grip", head="Yaoyotl Helm", neck="Asperity Necklace", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Xaddi Mail", hands="Xaddi Gauntlets", left_ring="Cho'j Band", 
		right_ring="Rajas Ring", back="Takaha mantle", waist="Cetl Belt", 
		legs="Wakido Haidate", feet="Otronif Boots +1" }  	--With pole Grip Double Attack = 21%
															--Store TP = 51
															--Haste = 29%
															--iLevel = 118
															--Acc = 878
															--Att = 995
															--Eva = 700
															--Def = 783
	
	
sets.Accuracy = {}
	
	sets.Accuracy.WS = {head="Gavialis Helm", neck="Tlamiztli Collar", left_ear="Moonshade Earring", 
		right_ear="Steelflash Earring", body="Miki. Breastplate", hands="Mikinaak Gauntlets", left_ring="Cho'j Band", 
		right_ring="Rajas Ring", back="Takaha Mantle", waist="Caudata Belt", 
		legs="Miki. Cuisses", feet="Mikinaak Greaves"}
	
	sets.Accuracy.WS["Tachi: Fudo"] = set_combine(sets.Accuracy.WS,{neck="Light Gorget"}) --STR60
	
	--sets.Accuracy.WS["Tachi: Kasha"] = set_combine(sets.Accuracy.WS,{neck="Light Gorget"}) --STR75
	--sets.Accuracy.WS["Tachi: Gekko"] = set_combine(sets.Accuracy.WS,{neck="Snow Gorget"}) --STR75
	--sets.Accuracy.WS["Tachi: Yukikaze"] = set_combine(sets.Accuracy.WS,{neck="Snow Gorget"}) --STR75
	--sets.Accuracy.WS["Tachi: Rana"] = set_combine(sets.Accuracy.WS,{neck="Shadow Gorget"}) --STR35
	
	sets.Accuracy.WS["Tachi: Shoha"] = set_combine(sets.Accuracy.WS,{neck="Shadow Gorget"})
	
	sets.Accuracy.Ranged = {head="Sakonji Kabuto", neck="Iqabi Necklace", left_ear="Steelflash Earring",
		right_ear="Clearview Earring", body="Kyujutsugi", hands="Buremte Gloves", left_ring="Paqichikaji Ring",
		right_ring="Beeline Ring", back="Kayapa Cape", waist="Buccaneer's Belt",
		legs="Wakido Haidate", feet="Wakido Sune-Ate"} 	-- R.Acc=787  R.Att=923 iLvl=115 (beetle arrow) ???
														-- R.Acc=792  R.Att=933 iLvl=115 (tulfaire arrow) ???
		
	sets.Accuracy.WS["Apex Arrow"] = set_combine(sets.Accuracy.Ranged, {left_ear="Moonshade Earring"})
	
	sets.Accuracy.TP = {sub="Tzacab Grip", head="Gavialis Helm", neck="Asperity Necklace", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Miki. Breastplate", hands="Xaddi Gauntlets", left_ring="Cho'j Band", 
		right_ring="Rajas Ring", back="Takaha mantle", waist="Olseni Belt", 
		legs="Miki. Cuisses", feet="Whirlpool Greaves" } --need Wakido feet when they are 119
			--Accuracy = 941,  iLvl=117
sets.DT = {}
	
	sets.DT.WS = {head="Gavialis Helm", neck="Tlamiztli Collar", left_ear="Moonshade Earring", 
		right_ear="Bladeborn Earring", body="Miki. Breastplate", hands="Mikinaak Gauntlets", left_ring="Cho'j Band", 
		right_ring="Rajas Ring", back="Buquwik Cape", waist="Prosilio Belt +1", 
		legs="Miki. Cuisses", feet="Mikinaak Greaves"}
	
	sets.DT.WS["Tachi: Fudo"] = set_combine(sets.DT.WS,{neck="Light Gorget"}) --STR60
	
	--sets.DT.WS["Tachi: Kasha"] = set_combine(sets.DT.WS,{neck="Light Gorget"}) --STR75
	--sets.DT.WS["Tachi: Gekko"] = set_combine(sets.DT.WS,{neck="Snow Gorget"}) --STR75
	--sets.DT.WS["Tachi: Yukikaze"] = set_combine(sets.DT.WS,{neck="Snow Gorget"}) --STR75
	--sets.DT.WS["Tachi: Rana"] = set_combine(sets.DT.WS,{neck="Shadow Gorget"}) --STR35
	
	sets.DT.WS["Tachi: Shoha"] = set_combine(sets.DT.WS,{neck="Shadow Gorget"})
	
	sets.DT.Ranged = sets.Accuracy.Ranged
	sets.DT.WS["Apex Arrow"] = sets.Accuracy.WS["Apex Arrow"]
	
	sets.DT.TP= {sub="Pole Grip", head="Gavialis Helm", neck="Twilight Torque", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Xaddi Mail", hands="Xaddi Gauntlets", left_ring="Dark Ring", 
		right_ring="Dark Ring", back="Repulse Mantle", waist="Flume Belt", 
		legs="Otronif Brais", feet="Otronif Boots +1"}
	

	sets.Utsusemi = {}
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.DD.TP
	sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Danzo Sune-Ate"})
	
	sets.DontForget = {main="Tsurumaru", sub="Nativus Halberd", range="Cibitshavore",  
		left_ear="Reraise Earring", right_ear = "Linkpearl", 
		back="Mecisto. Mantle" }
	
	sets.DontForget2 = {main="Tulfaire Arrow", sub="Tulfaire Quiver", range="Demon Arrow", ammo="Demon Quiver"}
	
	set_macro_book()
	
	
end

function precast(spell)
	--windower.add_to_chat(9, 'Precast: spell type= ' ..spell.type.. ' .english=' ..spell.english)
	--[[if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		add_to_chat(9, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)
	]]
	--equip(sets[SetMode_Names[SetMode_Index]].Enfeeble)
	--sets.DD.WS["Tachi: Fudo"]
	--equip(sets[SetMode_Names[SetMode_Index]].WS[spell.english])
	if spell.type == "WeaponSkill" then
		add_to_chat(9, 'WeaponSkill found: ' ..spell.english)
		if sets[SetMode_Names[SetMode_Index]].WS[spell.english] then
			equip(sets[SetMode_Names[SetMode_Index]].WS[spell.english])
			add_to_chat(9, 'Named WS set: ' ..SetMode_Names[SetMode_Index].. ' . ' ..spell.english)
		else
			equip(sets[SetMode_Names[SetMode_Index]].WS)
			add_to_chat(9, 'General WS set: ' ..SetMode_Names[SetMode_Index].. ' . ' ..spell.english)
		end
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end
		if ElementalWeaponSkills:contains(spell.english) then
			add_to_chat(9, 'Elemental WS: ' ..spell.english.. 'is element: ' ..spell.element..
				', day element: ' ..world.day_element)
			if spell.element == world.day_element then
				equip({head="Gavialis Helm"})
			end
		end
	
	elseif spell.prefix == "/jobability" then
		--add_to_chat(9, '/jobability found: ' ..spell.english)
		if spell.english == "Third Eye" and not buffactive['Seigan'] then
			cancel_spell()
			add_to_chat(12, 'Seigan not active, cancel Third Eye')
			return
		end
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif spell.type == 'Step' or spell.english == 'Violent Flourish' then
			equip(sets.JA.Step)
		end
	
	elseif spell.type == 'Ninjutsu' or spell.type == 'Trust' then
		windower.add_to_chat(9, 'Spell type ' ..spell.type)
		equip(sets.Utsusemi)
	
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

function buff_change(buff_name,gain) --gain = True if gained, False if lost
	--[[if gain then -- something was gained
	
	elseif not gain then -- something lost
	
	end]]
	--windower.add_to_chat(9, 'buff_name = ' ..buff_name.. ' & ID = ' ..tostring(buff_name.id))
end

function self_command(command)
	if command == 'DD' then
		SetMode_Index = 1
		add_to_chat(9, 'SetMode now set to: ' ..SetMode_Names[SetMode_Index] )
		sets.aftercast.TP = sets[SetMode_Names[SetMode_Index]].TP
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Danzo Sune-Ate"})
	
	elseif command == 'Accuracy' then
		SetMode_Index = 2
		add_to_chat(9, 'SetMode now set to: ' ..SetMode_Names[SetMode_Index] )
		sets.aftercast.TP = sets[SetMode_Names[SetMode_Index]].TP
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Danzo Sune-Ate"})
	
	elseif command == 'DT' then
		SetMode_Index = 3
		add_to_chat(9, 'SetMode now set to: ' ..SetMode_Names[SetMode_Index] )
		sets.aftercast.TP = sets[SetMode_Names[SetMode_Index]].TP
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Danzo Sune-Ate"})
	
	elseif command == 'Info' then
		add_to_chat(9, 'SAM Info:')
		add_to_chat(9, 'SetMode = ' ..SetMode_Names[SetMode_Index])
	
		
	end
	
	status_change(player.status)

end

function sub_job_change(new,old)
	set_macro_book()
end

function set_macro_book()
	-- Default macro book & page
	if player.sub_job == 'WAR' then
		send_command('input /macro book 12;wait .1;input /macro set 10')
	elseif player.sub_job == 'DNC' then
		send_command('input /macro book 12;wait .1;input /macro set 9')
	elseif player.sub_job == 'NIN' then
		send_command('input /macro book 12;wait .1;input /macro set 8')
	else
		send_command('input /macro book 12;wait .1;input /macro set 10')
	end
end
