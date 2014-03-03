--[[
		=================
		|    M O N K    | 
		=================
]]

function get_sets()				
	sets.precast = {}
	sets.precast.Chakra = {main="Oatixur",ammo="Hagneia Stone",head="Uk'uxkaj Cap",neck="Tjukurrpa Medal",
		left_ear="Steelflash Earring",right_ear="Kemas Earring",body="Anchorite's Cyclas",hands="Hes. Gloves",
		left_ring="Terrasoul Ring",right_ring="Terrasoul Ring",back="Iximulew Cape",waist="Warwolf Belt",
		legs="Kaabnax Trousers",feet="Thur. Boots +1"}
	sets.precast.Counterstance = {feet="Melee Gaiters +2"}
	sets.precast.Dodge = {feet="Anchorite's Gaiters"}
	sets.precast.Focus = {head="Anchorite's Crown"}
	sets.precast.Boost = {hands="Anchorite's Gloves"}
	--sets.precast.Mantra = {feet="Melee Gaiters +2"}
	
	sets.precast.Step = {main="Oatixur",ammo="Honed Tathlum",head="Ejekamal Mask",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Heartseeker Earring",body="Manibozho Jerkin",hands="Hes. Gloves",
		left_ring="Epona's Ring",right_ring="Rajas Ring",back="Anchoret's Mantle",waist="Warwolf Belt",
		legs="Manibozho Brais",feet="Thur. Boots +1"}

	sets.precast.WS = {main="Oatixur",ammo="Thew Bomblet",head="Uk'uxkaj Cap",neck="Tlamiztli Collar",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Hes. Gloves",
		left_ring="Spiral Ring",right_ring="Rajas Ring",back="Vassal's Mantle",waist="Prosilio Belt",
		legs="Manibozho Brais",feet="Otronif Boots"}
		
	sets.precast['Victory Smite'] = set_combine(sets.precast.WS,{neck="Light Gorget"})
	
	sets.precast['Shijin Spiral'] = set_combine(sets.precast.WS,{neck="Flame Gorget"})
	
	sets.TP = {}
	sets.TP.DD = {main="Oatixur",ammo="Hagneia Stone",head="Uk'uxkaj Cap",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Thaumas Coat",hands="Otronif Gloves",
		left_ring="Epona's Ring",right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Leggings",feet="Otronif Boots"}
		
	sets.TP.Accuracy = {main="Oatixur",ammo="Honed Tathlum",head="Ejekamal Mask",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Thaumas Coat",hands="Hes. Gloves",
		left_ring="Epona's Ring",right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Manibozho Brais",feet="Otronif Boots"}

	sets.TP.Solo = {main="Oatixur",ammo="Hagneia Stone",head="Uk'uxkaj Cap",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Otronif Harness",hands="Otronif Gloves",
		left_ring="Epona's Ring",right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Leggings",feet="Otronif Boots"}
	
	sets.DT = {main="Oatixur",ammo="Hagneia Stone",head="Uk'uxkaj Cap",neck="Twilight Torque",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Otronif Harness",hands="Otronif Gloves",
		left_ring="Dark Ring",right_ring="Shadow Ring",back="Archon Cape",waist="Black Belt",
		legs="Kaabnax Trousers",feet="Otronif Boots"}

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 2;wait .1;input /macro set 10')
end

function precast(spell)
	--show_swaps()  --use for testing swaps
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.type=="WeaponSkill" then
		equip(sets.precast.WS)
	elseif string.find(spell.english,'Step') then
		equip(sets.precast.Step)
	elseif string.find(spell.english,'Violent Flourish') then
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

function buff_change(buff_name,gain)
end

function self_command(command)
	if command == 'DD' then
		sets.aftercast.TP = sets.TP.DD
		sets.aftercast.Idle = sets.TP.DD
		equip(sets.aftercast.TP)
		send_command('@input /echo DD SET')
	elseif command == 'Accuracy' then
		sets.aftercast.TP = sets.TP.Accuracy
		sets.aftercast.Idle = sets.TP.Accuracy
		equip(sets.aftercast.TP)
		send_command('@input /echo Accuracy SET')
	elseif command == 'SOLO' then
		sets.aftercast.TP = sets.TP.Solo
		sets.aftercast.Idle = sets.TP.Solo
		equip(sets.aftercast.TP)
		send_command('@input /echo SOLO SET')
	elseif command == 'DT' then
		sets.aftercast.TP = sets.DT
		sets.aftercast.Idle = sets.DT
		equip(sets.aftercast.TP)
		send_command('@input /echo DT SET')
	end
end
