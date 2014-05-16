--[[
		====================
		|   S A M U R A I  | 
		====================
]]

function get_sets()
	
	sets.WS = {}
	--[[sets.WS.Base = {head="Mikinaak Helm", neck="Tlamiztli Collar", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Phorcys Korazin", hands="Mikinaak Gauntlets", left_ring="Spiral Ring", 
		right_ring="Rajas Ring", back="Buquwik Cape", waist="Prosilio Belt", 
		legs="Miki. Cuisses", feet="Mikinaak Greaves" }
		]]
	
	-- Weapon Skill sets:  Damage --
	sets.WS.DD = {head="Yaoyotl Helm", neck="Tlamiztli Collar", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Phorcys Korazin", hands="Mikinaak Gauntlets", left_ring="Spiral Ring", 
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
		right_ear="Bladeborn Earring", body="Miki. Breastplate", hands="Mikinaak Gauntlets", left_ring="Spiral Ring", 
		right_ring="Rajas Ring", back="Takaha Mantle", waist="Prosilio Belt", 
		legs="Miki. Cuisses", feet="Mikinaak Greaves" }
		
	sets.WS.Acc["Tachi: Fudo"] = set_combine(sets.WS.Acc,{neck="Light Gorget"}) --STR60
	
	--sets.WS.Acc["Tachi: Kasha"] = set_combine(sets.WS.Acc,{neck="Light Gorget"}) --STR75
	--sets.WS.Acc["Tachi: Gekko"] = set_combine(sets.WS.Acc,{neck="Snow Gorget"}) --STR75
	--sets.WS.Acc["Tachi: Yukikaze"] = set_combine(sets.WS.Acc,{neck="Snow Gorget"}) --STR75
	--sets.WS.Acc["Tachi: Rana"] = set_combine(sets.WS.Acc,{neck="Shadow Gorget"}) --STR35
	
	sets.WS.Acc["Tachi: Shoha"] = set_combine(sets.WS.Acc,{neck="Shadow Gorget"})
	
	
	
	sets.precast = {}
	
	sets.precast.Meditate = {head="Wakido Kabuto", hands="Sakonji Kote"}
	sets.precast.Hasso = {hands="Wakido Kote", legs="Unkai Haidate +2"}
	sets.precast["Warding Circle"] = {head="Wakido Kabuto"}
	sets.precast.Sekkanoki = {hands="Unkai Kote +2"}
	sets.precast["Blade Bash"] = {hands="Sakonji Kote"}
	
	sets.precast.Ranged = {head="Yaoyotl Helm",neck="Ocachi Gorget",left_ear="Clearview earring",
		right_ear="Bladeborn Earring",body="Otronif Harness",hands="Unkai Kote +2",left_ring="Paqichikaji Ring",
		right_ring="Jalzahn's Ring",back="Buquwik Cape",waist="Buccaneer's Belt",
		legs="Wakido Haidate",feet="Wakido Sune-Ate"} -- R.Acc=647  R.Att=744
		
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
	
	sets.precast.Step = {head="Yaoyotl Helm",neck="Unkai Nodowa",left_ear="Steelflash Earring",
		right_ear="Heartseeker Earring",body="Miki. Breastplate",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Spiral Ring",back="Takaha Mantle",waist="Phasmida Belt",
		legs="Miki. Cuisses",feet="Wakido Sune-Ate"} --Primary Acc: 834
	
		
	sets.TP = {}
	sets.TP.DD = {head="Yaoyotl Helm", neck="Asperity Necklace", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Unkai Domaru +2", hands="Otronif Gloves", left_ring="Spiral Ring", 
		right_ring="Rajas Ring", back="Takaha mantle", waist="Cetl Belt", 
		legs="Unkai Haidate +2", feet="Otronif Boots" }  	--??? With pole Grip Double Attack = 20% ???
															--??? Store TP = 51 ???
															--Avg Item Level = 111 ?
															--Acc = 766
															--Att = 855
															--Eva = 564
															--Def = 593
	
	sets.TP.Acc = {head="Yaoyotl Helm", neck="Asperity Necklace", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Unkai Domaru +2", hands="Otronif Gloves", left_ring="Spiral Ring", 
		right_ring="Rajas Ring", back="Takaha mantle", waist="Cetl Belt", 
		legs="Unkai Haidate +2", feet="Otronif Boots" } --needs more work, added quick for Dimi
		
	--[[sets.TP.EVA = set_combine(sets.TP.DD,{neck="Torero Torque",left_ear="Ethereal Earring",
		right_ear="Musical Earring",body="Otronif Harness",
		right_ring="Defending Ring",waist="Koga sarashi",
		legs="Otronif Brais"})  --Needs Verify]]
	
	sets.TP.DT= {head="Yaoyotl Helm", neck="Twilight Torque", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Otronif Harness", hands="Otronif Gloves", left_ring="Dark Ring", 
		right_ring="Dark Ring", back="Ik Cape", waist="Flume Belt", 
		legs="Otronif Brais", feet="Otronif Boots" }

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Danzo Sune-Ate"})
	send_command('input /macro book 12;wait .1;input /macro set 10')
	
end

function precast(spell)
	--windower.add_to_chat(204, 'Casting: ' ..spell.english.. ' ' ..spell.type)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
		--windower.add_to_chat(204, 'Spell name as set: ' ..spell.english)
	elseif spell.type=="Weapon Skill" then
		equip(sets.precast.WS)
	elseif string.find(spell.english,'Step') or 
		string.find(spell.english,'Violent Flourish') then
		equip(sets.precast.Step)
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
end

function status_change(new,old)
	if T{'Idle','Resting'}:contains(new) then
		equip(sets.aftercast.Idle)
	elseif new == 'Engaged' then
		equip(sets.aftercast.TP)
	end
end

function buff_change(buff_name,gain) --gain = True if gained, False if lost
	--[[if gain then -- something was gained
	
	elseif not gain then -- something lost
	
	end]]
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
		send_command('@input /echo DD set')
		
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
		send_command('@input /echo ACC set')
		
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
		send_command('@input /echo DT set')
		
	end
	
	if player.status =='Engaged' then
		equip(sets.aftercast.TP)
	else
		equip(sets.aftercast.Idle)
	end
end
