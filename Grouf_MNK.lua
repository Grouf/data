--[[
		=================
		|    M O N K    | 
		=================
]]

function get_sets()				
	sets.precast = {}
	sets.precast.Chakra = {ammo="Brigantia Pebble",head="Uk'uxkaj Cap",neck="Tjukurrpa Medal",
		left_ear="Soil Pearl",right_ear="Soil Pearl",body="Anchorite's Cyclas",hands="Hes. Gloves",
		left_ring="Terrasoul Ring",right_ring="Terrasoul Ring",back="Anchoret's Mantle",waist="Caudata Belt",
		legs="Kaabnax Trousers",feet="Thur. Boots +1"} --100+131
	sets.precast.Counterstance = {feet="Hes. Gaiters"}
	sets.precast.Dodge = {feet="Anchorite's Gaiters"}
	sets.precast.Focus = {head="Anchorite's Crown"}
	sets.precast.Boost = {hands="Anchorite's Gloves"}
	sets.precast.Impetus = {body="Tantra Cyclas +2"}
	sets.precast.Mantra = {feet="Hes. Gaiters"}
	sets.precast['Formless Strikes'] = {body="Hes. Cyclas"}
	sets.precast['Hundred Fists'] = {body="Hes. Hose"}
	
	
	sets.precast.Step = {ammo="Honed Tathlum",head="Whirlpool Mask",neck="Iqabi Necklace",
		left_ear="Steelflash Earring",right_ear="Zennaroi Earring",body="Mekosu. Harness",hands="Hes. Gloves",
		left_ring="Beeline Ring",right_ring="Rajas Ring",back="Anchoret's Mantle",
		waist="Olseni Belt", legs="Manibozho Brais",feet="Qaaxo Leggings"}

	sets.precast['Violent Flourish'] = set_combine(sets.precast.Step, {neck="Stoicheion Medal", 
		left_ear="Psystorm Earring", right_ear="Lifestorm Earring", left_ring="Weather. Ring",  
		right_ring="Sangoma Ring"})
		
	sets.precast.WS = {ammo="Thew Bomblet",head="Whirlpool Mask",neck="Tlamiztli Collar",
		left_ear="Moonshade Earring",right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Hes. Gloves",
		left_ring="Cho'j Band",right_ring="Rajas Ring",back="Vespid Mantle",waist="Prosilio Belt +1",
		legs="Manibozho Brais",feet="Otronif Boots +1"}
		
	sets.precast['Victory Smite'] = set_combine(sets.precast.WS,{neck="Light Gorget"})
	
	sets.precast['Shijin Spiral'] = set_combine(sets.precast.WS,{neck="Flame Gorget"})
	
	sets.TP = {}
	sets.TP.DD = {ammo="Hagneia Stone",head="Whirlpool Mask",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",
		left_ring="Epona's Ring",right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Trousers",feet="Otronif Boots +1"}
		
	sets.TP.Accuracy = {ammo="Honed Tathlum",head="Whirlpool Mask",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Mekosu. Harness",hands="Hes. Gloves",
		left_ring="Beeline Ring",right_ring="Rajas Ring",back="Letalis Mantle",waist="Windbuffet Belt",
		legs="Manibozho Brais",feet="Otronif Boots +1"}

	sets.TP.Solo = {ammo="Hagneia Stone",head="Uk'uxkaj Cap",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",
		left_ring="Epona's Ring",right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Trousers",feet="Otronif Boots +1"}
	
	sets.DT = {ammo="Brigantia Pebble",head="Uk'uxkaj Cap",neck="Twilight Torque",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",
		left_ring="Dark Ring",right_ring="Shadow Ring",back="Repulse Mantle",waist="Black Belt",
		legs="Kaabnax Trousers",feet="Otronif Boots +1"}
		
	sets.SalvageDT = {ammo="Brigantia Pebble",head="Uk'uxkaj Cap",neck="Twilight Torque",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",
		left_ring="Terrasoul Ring",right_ring="Terrasoul Ring",back="Repulse Mantle",waist="Black Belt",
		legs="Kaabnax Trousers",feet="Otronif Boots +1"}
	
	sets.Shark = {ammo="Honed Tathlum",head="Uk'uxkaj Cap",neck="Twilight Torque",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",
		left_ring="Zanhi Ring",right_ring="Shadow Ring",back="Tuilha Cape",waist="Black Belt",
		legs="Kaabnax Trousers",feet="Otronif Boots +1"}

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = sets.TP.DD
	set_macro_book()
	
	sets.dontforget = {main="Ohrmazd", sub="Oatixur", neck="Ygnas's Resolve +1",
		left_ear="Linkpearl", right_ear="Reraise Earring"} 
end

function precast(spell)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.type=="WeaponSkill" then
		equip(sets.precast.WS)
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end
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
	--[[if string.find(buff_name, 'Reive') then
		windower.add_to_chat(9, 'reive name = ' ..buff_name)
	end]]
end

function self_command(command)
	if command == 'DD' then
		sets.aftercast.TP = sets.TP.DD
		sets.aftercast.Idle = sets.TP.DD
		equip(sets.aftercast.TP)
		windower.add_to_chat(9, 'DD set')
	elseif command == 'Accuracy' then
		sets.aftercast.TP = sets.TP.Accuracy
		sets.aftercast.Idle = sets.TP.Accuracy
		equip(sets.aftercast.TP)
		windower.add_to_chat(9, 'ACCURACY set')
	elseif command == 'SOLO' then
		sets.aftercast.TP = sets.TP.Solo
		sets.aftercast.Idle = sets.TP.Solo
		equip(sets.aftercast.TP)
		windower.add_to_chat(9, 'SOLO set')
	elseif command == 'DT' then
		sets.aftercast.TP = sets.DT
		sets.aftercast.Idle = sets.DT
		equip(sets.aftercast.TP)
		windower.add_to_chat(9, 'DT set')
	elseif command == 'SalvageDT' then
		sets.aftercast.TP = sets.SalvageDT
		sets.aftercast.Idle = sets.SalvageDT
		equip(sets.aftercast.TP)
		windower.add_to_chat(9, 'SalvageDT set')
	elseif command == 'Shark' then
		sets.aftercast.TP = sets.Shark
		sets.aftercast.Idle = sets.Shark
		equip(sets.aftercast.TP)
		windower.add_to_chat(9, 'SHARK set')
	end
end

function sub_job_change(new, old)
	set_macro_book()
end

function set_macro_book()
	-- Default macro book & page
	if player.sub_job == 'WAR' then
		send_command('input /macro book 2;wait .1;input /macro set 10')
	elseif player.sub_job == 'DNC' then
		send_command('input /macro book 2;wait .1;input /macro set 9')
	elseif player.sub_job == 'RUN' then
		send_command('input /macro book 2;wait .1;input /macro set 8')
	else
		send_command('input /macro book 2;wait .1;input /macro set 10')
	end
end
