--[[
		====================
		|   S A M U R A I  | 
		====================
]]

function get_sets()
		
	sets.precast = {}
	
	sets.precast.Meditate = {head="Wakido Kabuto", hands="Sakonji Kote"}
	sets.precast.Hasso = {hands="Wakido Kote", legs="Unkai Haidate +2"}
	sets.precast["Warding Circle"] = {head="Wakido Kabuto"}
	sets.precast.Sekkanoki = {hands="Unkai Kote +2"}
	sets.precast["Blade Bash"] = {hands="Sakonji Kote"}
	
	sets.precast.Ranged = {head="Yaoyotl Helm",neck="Ocachi Gorget",left_ear="Clearview earring",
		right_ear="Bladeborn Earring",body="Otronif Harness",hands="Unkai Kote +2",left_ring="Paqichikaji Ring",
		right_ring="Jalzahn's Ring",back="Buquwik Cape",waist="Buccaneer's Belt",
		legs="Wakido Haidate",feet="Wakido Sune-Ate"}
		
	sets.precast["Apex Arrow"] = sets.precast.Ranged
	
	sets.precast.WS = {head="Mikinaak Helm", neck="Tlamiztli Collar", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Phorcys Korazin", hands="Mikinaak Gauntlets", left_ring="Spiral Ring", 
		right_ring="Rajas Ring", back="Buquwik Cape", waist="Prosilio Belt", 
		legs="Miki. Cuisses", feet="Mikinaak Greaves" }
	
	sets.precast["Tachi: Fudo"] = set_combine(sets.precast.WS,{neck="Light Gorget"}) --STR60
	sets.precast["Tachi: Kasha"] = set_combine(sets.precast.WS,{neck="Light Gorget"}) --STR75
	
	--sets.precast["Tachi: Gekko"] = set_combine(sets.precast.WS,{neck="Snow Gorget"}) --STR75
	--sets.precast["Tachi: Yukikaze"] = set_combine(sets.precast.WS,{neck="Snow Gorget"}) --STR75
	--sets.precast["Tachi: Rana"] = set_combine(sets.precast.WS,{neck="Shadow Gorget"}) --STR35
	
	sets.precast["Tachi: Shoha"] = set_combine(sets.precast.WS,{neck="Shadow Gorget", waist="Thunder Belt"})  --STR73+
	
	sets.precast.Step = {head="Yaoyotl Helm",neck="Unkai Nodowa",left_ear="Steelflash Earring",
		right_ear="Heartseeker Earring",body="Miki. Breastplate",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Spiral Ring",back="Takaha Mantle",waist="Phasmida Belt",
		legs="Miki. Cuisses",feet="Wakido Sune-Ate"} 
		
	sets.TP = {}
	sets.TP.DD = {head="Yaoyotl Helm", neck="Asperity Necklace", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Unkai Domaru +2", hands="Otronif Gloves", left_ring="Spiral Ring", 
		right_ring="Rajas Ring", back="Takaha mantle", waist="Cetl Belt", 
		legs="Unkai Haidate +2", feet="Otronif Boots" }  	
	
	sets.TP.Acc = {head="Yaoyotl Helm", neck="Asperity Necklace", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Unkai Domaru +2", hands="Otronif Gloves", left_ring="Spiral Ring", 
		right_ring="Rajas Ring", back="Takaha mantle", waist="Cetl Belt", 
		legs="Unkai Haidate +2", feet="Otronif Boots" } 
	
	sets.TP.DT= {head="Yaoyotl Helm", neck="Twilight Torque", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Otronif Harness", hands="Otronif Gloves", left_ring="Dark Ring", 
		right_ring="Dark Ring", back="Ik Cape", waist="Flume Belt", 
		legs="Otronif Brais", feet="Otronif Boots" }

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	
	sets.aftercast.Idle = {head="Yaoyotl Helm", neck="Twilight Torque", left_ear="Steelflash Earring", 
		right_ear="Bladeborn Earring", body="Otronif Harness", hands="Otronif Gloves", left_ring="Dark Ring", 
		right_ring="Dark Ring", back="Ik Cape", waist="Flume Belt", 
		legs="Otronif Brais", feet="Danzo Sune-Ate" }
	
	send_command('input /macro book 12;wait .1;input /macro set 10')
	
end

function precast(spell)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
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
end

function self_command(command)
	if command == 'DD' then
		sets.aftercast.TP = sets.TP.DD
		send_command('@input /echo DD set')
	elseif command == 'ACC' then
		sets.aftercast.TP = sets.TP.ACC
		send_command('@input /echo ACC set')
	elseif command == 'DT' then
		sets.aftercast.TP = sets.TP.DT
		send_command('@input /echo DT set')
	end
	if player.status =='Engaged' then
		equip(sets.aftercast.TP)
	else
		equip(sets.aftercast.Idle)
	end
end