--[[
		=================
		|    M O N K    | 
		=================
]]

function get_sets()				
	sets.precast = {}
	sets.precast.Chakra = {main="Oatixur",ammo="Brigantia Pebble",head="Uk'uxkaj Cap",neck="Tjukurrpa Medal",
		left_ear="Soil Pearl",right_ear="Soil Pearl",body="Anchorite's Cyclas",hands="Hes. Gloves",
		left_ring="Terrasoul Ring",right_ring="Terrasoul Ring",back="Anchoret's Mantle",waist="Warwolf Belt",
		legs="Kaabnax Trousers",feet="Thur. Boots +1"} --100+131
	sets.precast.Counterstance = {feet="Hes. Gaiters"}
	sets.precast.Dodge = {feet="Anchorite's Gaiters"}
	sets.precast.Focus = {head="Anchorite's Crown"}
	sets.precast.Boost = {hands="Anchorite's Gloves"}
	sets.precast.Impetus = {body="Tantra Cyclas +2"}
	sets.precast.Mantra = {feet="Hes. Gaiters"}
	
	sets.precast.Step = {main="Oatixur",ammo="Honed Tathlum",head="Whirlpool Mask",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Heartseeker Earring",body="Manibozho Jerkin",hands="Hes. Gloves",
		left_ring="Beeline Ring",right_ring="Rajas Ring",back="Anchoret's Mantle",waist="Warwolf Belt",
		legs="Manibozho Brais",feet="Thur. Boots +1"}

	sets.precast.WS = {main="Oatixur",ammo="Thew Bomblet",head="Whirlpool Mask",neck="Tlamiztli Collar",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Hes. Gloves",
		left_ring="Cho'j Band",right_ring="Rajas Ring",back="Vassal's Mantle",waist="Prosilio Belt",
		legs="Manibozho Brais",feet="Otronif Boots +1"}
		
	sets.precast['Victory Smite'] = set_combine(sets.precast.WS,{neck="Light Gorget"})
	
	sets.precast['Shijin Spiral'] = set_combine(sets.precast.WS,{neck="Flame Gorget"})
	
	sets.TP = {}
	sets.TP.DD = {main="Oatixur",ammo="Hagneia Stone",head="Whirlpool Mask",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Thaumas Coat",hands="Otronif Gloves",
		left_ring="Epona's Ring",right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Trousers",feet="Otronif Boots +1"}
		
	sets.TP.Accuracy = {main="Oatixur",ammo="Honed Tathlum",head="Whirlpool Mask",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Hes. Gloves",
		left_ring="Beeline Ring",right_ring="Rajas Ring",back="Letalis Mantle",waist="Windbuffet Belt",
		legs="Manibozho Brais",feet="Otronif Boots +1"}

	sets.TP.Solo = {main="Oatixur",ammo="Hagneia Stone",head="Uk'uxkaj Cap",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Otronif Harness",hands="Otronif Gloves",
		left_ring="Epona's Ring",right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Trousers",feet="Otronif Boots +1"}
	
	sets.DT = {main="Oatixur",ammo="Brigantia Pebble",head="Uk'uxkaj Cap",neck="Twilight Torque",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Otronif Harness",hands="Otronif Gloves",
		left_ring="Dark Ring",right_ring="Shadow Ring",back="Archon Cape",waist="Black Belt",
		legs="Kaabnax Trousers",feet="Otronif Boots +1"}
		
	sets.SalvageDT = {main="Oatixur",ammo="Brigantia Pebble",head="Uk'uxkaj Cap",neck="Twilight Torque",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Otronif Harness",hands="Otronif Gloves",
		left_ring="Terrasoul Ring",right_ring="Terrasoul Ring",back="Repulse Mantle",waist="Black Belt",
		legs="Kaabnax Trousers",feet="Otronif Boots +1"}
	
	sets.Shark = {main="Oatixur",ammo="Honed Tathlum",head="Uk'uxkaj Cap",neck="Twilight Torque",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Otronif Harness",hands="Otronif Gloves",
		left_ring="Dark Ring",right_ring="Shadow Ring",back="Tuilha Cape",waist="Black Belt",
		legs="Kaabnax Trousers",feet="Otronif Boots +1"}

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 2;wait .1;input /macro set 10')
end

function precast(spell)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.type=="WeaponSkill" then
		equip(sets.precast.WS)
	elseif spell.english:endswith('Step') or spell.english == 'Violent Flourish' then
		--windower.add_to_chat(14, 'Step set on')
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
	if S{'Idle','Resting'}:contains(new) then
		equip(sets.aftercast.Idle)
	elseif new == 'Engaged' then
		equip(sets.aftercast.TP)
	end
end

function buff_change(buff_name,gain)
end

function self_command(command)
	if command == 'DD' then
		sets.aftercast.TP = sets.TP.DD
		sets.aftercast.Idle = sets.TP.DD
		equip(sets.aftercast.TP)
		send_command('@input /echo DD set')
	elseif command == 'Accuracy' then
		sets.aftercast.TP = sets.TP.Accuracy
		sets.aftercast.Idle = sets.TP.Accuracy
		equip(sets.aftercast.TP)
		send_command('@input /echo ACCURACY set')
	elseif command == 'SOLO' then
		sets.aftercast.TP = sets.TP.Solo
		sets.aftercast.Idle = sets.TP.Solo
		equip(sets.aftercast.TP)
		send_command('@input /echo SOLO set')
	elseif command == 'DT' then
		sets.aftercast.TP = sets.DT
		sets.aftercast.Idle = sets.DT
		equip(sets.aftercast.TP)
		send_command('@input /echo DT set')
	elseif command == 'SalvageDT' then
		sets.aftercast.TP = sets.SalvageDT
		sets.aftercast.Idle = sets.SalvageDT
		equip(sets.aftercast.TP)
		send_command('@input /echo SalvageDT set')
	elseif command == 'Shark' then
		sets.aftercast.TP = sets.Shark
		sets.aftercast.Idle = sets.Shark
		equip(sets.aftercast.TP)
		send_command('@input /echo SHARK set')
	end
end
