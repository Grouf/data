--[[
		====================
		|   S A M U R A I  | 
		====================
]]

function get_sets()
	
	sets.WS = {}
	--[[sets.WS.Base = {head="Mikinaak Helm", neck="Tlamiztli Collar", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Phorcys Korazin", hands="Mikinaak Gauntlets", left_ring="Cho'j Band", 
		right_ring="Rajas Ring", back="Buquwik Cape", waist="Prosilio Belt", 
		legs="Miki. Cuisses", feet="Mikinaak Greaves" }
		]]
	
	-- Weapon Skill sets:  Damage --
	sets.WS.DD = {head="Yaoyotl Helm", neck="Tlamiztli Collar", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Miki. Breastplate", hands="Mikinaak Gauntlets", left_ring="Cho'j Band", 
		right_ring="Rajas Ring", back="Buquwik Cape", waist="Prosilio Belt", 
		legs="Miki. Cuisses", feet="Mikinaak Greaves" }
		
	sets.WS.DD["Tachi: Fudo"] = set_combine(sets.WS.DD,{neck="Light Gorget"}) --STR60
	
	--sets.WS.DD["Tachi: Kasha"] = set_combine(sets.WS.DD,{neck="Light Gorget"}) --STR75
	--sets.WS.DD["Tachi: Gekko"] = set_combine(sets.WS.DD,{neck="Snow Gorget"}) --STR75
	--sets.WS.DD["Tachi: Yukikaze"] = set_combine(sets.WS.DD,{neck="Snow Gorget"}) --STR75
	--sets.WS.DD["Tachi: Rana"] = set_combine(sets.WS.DD,{neck="Shadow Gorget"}) --STR35
	
	sets.WS.DD["Tachi: Shoha"] = set_combine(sets.WS.DD,{neck="Shadow Gorget"})
	
	-- Weapon Skill sets:  Accuracy --
	sets.WS.Acc = {head="Yaoyotl Helm", neck="Tlamiztli Collar", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Miki. Breastplate", hands="Mikinaak Gauntlets", left_ring="Cho'j Band", 
		right_ring="Rajas Ring", back="Takaha Mantle", waist="Caudata Belt", 
		legs="Miki. Cuisses", feet="Mikinaak Greaves" }
		
	sets.WS.Acc["Tachi: Fudo"] = set_combine(sets.WS.Acc,{neck="Light Gorget"}) --STR60
	
	--sets.WS.Acc["Tachi: Kasha"] = set_combine(sets.WS.Acc,{neck="Light Gorget"}) --STR75
	--sets.WS.Acc["Tachi: Gekko"] = set_combine(sets.WS.Acc,{neck="Snow Gorget"}) --STR75
	--sets.WS.Acc["Tachi: Yukikaze"] = set_combine(sets.WS.Acc,{neck="Snow Gorget"}) --STR75
	--sets.WS.Acc["Tachi: Rana"] = set_combine(sets.WS.Acc,{neck="Shadow Gorget"}) --STR35
	
	sets.WS.Acc["Tachi: Shoha"] = set_combine(sets.WS.Acc,{neck="Shadow Gorget"})
	
	sets.JA = {}
	sets.JA["Meikyo Shisui"] = {feet="Sakonji Sune-Ate"}
	sets.JA.Meditate = {head="Wakido Kabuto", hands="Sakonji Kote"}
	sets.JA.Hasso = {hands="Wakido Kote", legs="Unkai Haidate +2"}
	sets.JA["Warding Circle"] = {head="Wakido Kabuto"}
	sets.JA.Sekkanoki = {hands="Unkai Kote +2"}
	sets.JA["Blade Bash"] = {hands="Sakonji Kote"}
	
	sets.precast = {}
	
	sets.precast.Ranged = {head="Sakonji Kabuto",neck="Ocachi Gorget",left_ear="Clearview earring",
		right_ear="Phawaylla Earring",body="Kyujutsugi",hands="Buremte Gloves",left_ring="Paqichikaji Ring",
		right_ring="Fistmele Ring",back="Buquwik Cape",waist="Buccaneer's Belt",
		legs="Wakido Haidate",feet="Wakido Sune-Ate"} 	-- R.Acc=787  R.Att=923 iLvl=115 (beetle arrow) ???
														-- R.Acc=792  R.Att=933 iLvl=115 (tulfaire arrow) ???
		
	sets.precast["Apex Arrow"] = sets.precast.Ranged
		--[[neck="Light Gorget", 
			waist="Thunder Belt"]]
	
	sets.precast.WS = sets.WS.DD 
	
	sets.precast["Tachi: Fudo"] = sets.WS.DD["Tachi: Fudo"]
	
	--sets.precast["Tachi: Kasha"] = sets.WS.DD["Tachi: Kasha"]
	--sets.precast["Tachi: Gekko"] = sets.WS.DD["Tachi: Gekko"]
	--sets.precast["Tachi: Yukikaze"] = sets.WS.DD["Tachi: Yukikaze"]
	--sets.precast["Tachi: Rana"] = sets.WS.DD["Tachi: Rana"]
	
	sets.precast["Tachi: Shoha"] = sets.WS.DD["Tachi: Shoha"]
	
	sets.precast.Step = {head="Yaoyotl Helm", neck="Unkai Nodowa", left_ear="Steelflash Earring",
		right_ear="Heartseeker Earring", body="Miki. Breastplate", hands="Buremte Gloves", left_ring="Beeline Ring",
		right_ring="Rajas Ring", back="Takaha Mantle", waist="Phasmida Belt",
		legs="Miki. Cuisses", feet="Wakido Sune-Ate"} --Primary Acc: 834
	
		
	sets.TP = {}
	sets.TP.DD = {sub="Pole Grip", head="Otomi Helm", neck="Asperity Necklace", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Sakonji Domaru", hands="Otronif Gloves", left_ring="Cho'j Band", 
		right_ring="Rajas Ring", back="Takaha mantle", waist="Cetl Belt", 
		legs="Wakido Haidate", feet="Otronif Boots +1" }  	--With pole Grip Double Attack = 20%
															--Store TP = 53
															--Haste = 30%
															--Avg Item Level = 116
															--Acc = 802???
															--Att = 976???
															--Eva = 622???
															--Def = 691???
	
	sets.TP.ACC = {sub="Tzacab Grip", head="Yaoyotl Helm", neck="Asperity Necklace", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Miki. Breastplate", hands="Otronif Gloves", left_ring="Cho'j Band", 
		right_ring="Rajas Ring", back="Takaha mantle", waist="Cetl Belt", 
		legs="Miki. Cuisses", feet="Wakido Sune-Ate" } --needs more work, added quick for Dimi
		
	--[[sets.TP.EVA = set_combine(sets.TP.DD,{neck="Torero Torque",left_ear="Ethereal Earring",
		right_ear="Musical Earring",body="Otronif Harness",
		right_ring="Defending Ring",waist="Koga sarashi",
		legs="Otronif Brais"})  --Needs Verify]]
	
	sets.TP.DT= {sub="Pole Grip", head="Yaoyotl Helm", neck="Twilight Torque", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Otronif Harness", hands="Otronif Gloves", left_ring="Dark Ring", 
		right_ring="Dark Ring", back="Repulse Mantle", waist="Flume Belt", 
		legs="Otronif Brais", feet="Otronif Boots +1" }

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Danzo Sune-Ate"})
	
	set_macro_book()
	
end

function precast(spell)
	--windower.add_to_chat(14, 'Precast: spell type= ' ..spell.type.. ' .english=' ..spell.english)
	--[[if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		windower.add_to_chat(14, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)
	]]
	if spell.type == "WeaponSkill" then
		--windower.add_to_chat(14, 'WeaponSkill found: ' ..spell.english)
		if sets.precast[spell.english] then
			equip(sets.precast[spell.english])
			--windower.add_to_chat(14, 'Named WS set: ' ..spell.english)
		else
			equip(sets.precast.WS)
			--windower.add_to_chat(14, 'General WS set: ' ..spell.english)
		end
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end
	
	elseif spell.prefix == "/jobability" then
		--windower.add_to_chat(14, '/jobability found: ' ..spell.english)
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif spell.type == 'Step' or spell.english == 'Violent Flourish' then
			equip(sets.precast.Step)
		end
	
	elseif sets.precast[spell.english] then
		--windower.add_to_chat(14, 'Specific precast: ' ..spell.english)
		equip(sets.precast[spell.english])
	
	
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
	if T{'Idle','Resting'}:contains(new) then
		equip(sets.aftercast.Idle)
	elseif new == 'Engaged' then
		equip(sets.aftercast.TP)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function buff_change(buff_name,gain) --gain = True if gained, False if lost
	--[[if gain then -- something was gained
	
	elseif not gain then -- something lost
	
	end]]
	--windower.add_to_chat(14, 'buff_name = ' ..buff_name.. ' & ID = ' ..tostring(buff_name.id))
end

function self_command(command)
	if command == 'DD' then
		sets.aftercast.TP = sets.TP.DD
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Danzo Sune-Ate"})
		sets.precast.WS = sets.WS.DD 
		sets.precast["Tachi: Fudo"] = sets.WS.DD["Tachi: Fudo"]
		--sets.precast["Tachi: Kasha"] = sets.WS.DD["Tachi: Kasha"]
		--sets.precast["Tachi: Gekko"] = sets.WS.DD["Tachi: Gekko"]
		--sets.precast["Tachi: Yukikaze"] = sets.WS.DD["Tachi: Yukikaze"]
		--sets.precast["Tachi: Rana"] = sets.WS.DD["Tachi: Rana"]
		sets.precast["Tachi: Shoha"] = sets.WS.DD["Tachi: Shoha"]
		windower.add_to_chat(9, 'DD set')
		
	elseif command == 'ACC' then
		sets.aftercast.TP = sets.TP.ACC
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Danzo Sune-Ate"})
		sets.precast.WS = sets.WS.Acc 
		sets.precast["Tachi: Fudo"] = sets.WS.Acc["Tachi: Fudo"]
		--sets.precast["Tachi: Kasha"] = sets.WS.Acc["Tachi: Kasha"]
		--sets.precast["Tachi: Gekko"] = sets.WS.Acc["Tachi: Gekko"]
		--sets.precast["Tachi: Yukikaze"] = sets.WS.Acc["Tachi: Yukikaze"]
		--sets.precast["Tachi: Rana"] = sets.WS.Acc["Tachi: Rana"]
		sets.precast["Tachi: Shoha"] = sets.WS.Acc["Tachi: Shoha"]
		windower.add_to_chat(9, 'ACC set')
		
	elseif command == 'DT' then
		sets.aftercast.TP = sets.TP.DT
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Danzo Sune-Ate"})
		sets.precast.WS = sets.WS.Acc 
		sets.precast["Tachi: Fudo"] = sets.WS.Acc["Tachi: Fudo"]
		--sets.precast["Tachi: Kasha"] = sets.WS.Acc["Tachi: Kasha"]
		--sets.precast["Tachi: Gekko"] = sets.WS.Acc["Tachi: Gekko"]
		--sets.precast["Tachi: Yukikaze"] = sets.WS.Acc["Tachi: Yukikaze"]
		--sets.precast["Tachi: Rana"] = sets.WS.Acc["Tachi: Rana"]
		sets.precast["Tachi: Shoha"] = sets.WS.Acc["Tachi: Shoha"]
		windower.add_to_chat(9, 'DT set')
		
	end
	
	if player.status =='Engaged' then
		equip(sets.aftercast.TP)
	else
		equip(sets.aftercast.Idle)
	end
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
