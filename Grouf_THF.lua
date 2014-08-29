--[[
		=================
		|   T H I E F   | 
		=================
]]

function get_sets()				
	sets.precast = {}
	
	sets.precast.Flee = {feet="Pillager's Poulaines"}
	sets.precast.Steal = {hands="Pillager's Armlets",legs="Assassin's Culottes",feet="Pillager's Poulaines"}
	sets.precast.Mug = {head="Assassin's Bonnet"}
	sets.precast.Despoil = {legs="Raid. Culottes +2", feet="Raid. Poulaines +2"}
	sets.precast.Conspirator = {body="Raider's Vest +2"}
	sets.precast.Accomplice = {head="Raider's Bonnet +2"}
	sets.precast.Collaborator = {head="Raider's Bonnet +2"}
	sets.precast['Perfect Dodge'] = {hands="Plun. Armlets"}
	{legs="Plun.Culottes"

	sets.precast.Ranged = {head="Pillager's Bonnet",neck="Huani Collar",left_ear="Clearview earring",
		right_ear="Volley Earring",body="Iuitl Vest",hands="Buremte Gloves",left_ring="Fistmele Ring",
		right_ring="Paqichikaji Ring",back="Libeccio Mantle",waist="Buccaneer's Belt",
		legs="Thur. Tights +1",feet="Pillager's Poulaines"}
	
	sets.precast.WS = {head="Whirlpool Mask",neck="Tlamiztli Collar",left_ear="Dudgeon Earring",
		right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Qaaxo Mitaines",left_ring="Rajas Ring",
		right_ring="Cho'j Band",back="Buquwik Cape",waist="Prosilio Belt",
		legs="Manibozho Brais",feet="Qaaxo Leggings"}
	
	sets.precast.Evisceration = set_combine(sets.precast.WS, {neck="Shadow Gorget"}) -- 50% DEX
	
	sets.precast["Rudra's Storm"] = set_combine(sets.precast.WS, {neck="Shadow Gorget"}) -- 80% DEX
	
	sets.precast["Last Stand"] = set_combine(sets.precast.Ranged, {neck="Ocachi Gorget",
		waist="Caudata Belt"})
		
		--Dancing Edge = 40% DEX, 40% CHR
		--Mandalic Stab = 60% DEX
		--Shark Bite = 40% DEX, 40% AGI
		--Last Stand = 73-85% AGI
		
	
	--[[sets.precast.Exenterator = {head="Uk'uxkaj Cap",neck="Light Gorget",left_ear="Dudgeon Earring",
		right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Plun. Armlets",left_ring="Rajas Ring",
		right_ring="Cho'j Band",back="Buquwik Cape",waist="Prosilio Belt",
		legs="Manibozho Brais",feet="Qaaxo Leggings"}]]
	
	--[[sets.precast["Aeolian Edge"] = {head="Thaumas Hat",neck="Stoicheion Medal",left_ear="Hecate's Earring",
		right_ear="Friomisi Earring",body="Iuitl Vest",left_ring="Acumen Ring",
		right_ring="Omega Ring",waist="Aquiline Belt",
		legs="Iuitl Tights",feet="Qaaxo Leggings"}]]
	
	sets.precast.Step = {head="Whirlpool Mask",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Heartseeker Earring",body="Manibozho Jerkin",hands="Plun. Armlets",left_ring="Rajas Ring",
		right_ring="Beeline Ring",back="Letalis Mantle",waist="Phasmida Belt",
		legs="Manibozho Brais",feet="Qaaxo Leggings"}
	
	sets.precast['Violent Flourish'] = set_combine(sets.precast.Step, {neck="Stoicheion Medal", 
		left_ear="Psystorm Earring", right_ear="Lifestorm Earring", left_ring="Perception Ring", 
		right_ring="Sangoma Ring", legs="Iuitl Tights"})
		
	sets.TP = {}
	sets.TP.DD = {head="Uk'uxkaj Cap",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",left_ring="Rajas Ring",
		right_ring="Epona's Ring",back="Canny Cape",waist="Windbuffet Belt",
		legs="Quiahuiz Trousers",feet="Qaaxo Leggings"}

	sets.TP.Solo = {head="Uk'uxkaj Cap",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",left_ring="Rajas Ring",
		right_ring="Epona's Ring",back="Canny Cape",waist="Windbuffet Belt",
		legs="Quiahuiz Trousers",feet="Qaaxo Leggings"}
	
	sets.TP.TH = {head="Uk'uxkaj Cap",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Qaaxo Harness",hands="Plun. Armlets",left_ring="Rajas Ring",
		right_ring="Epona's Ring",back="Canny Cape",waist="Windbuffet Belt",
		legs="Quiahuiz Trousers",feet="Qaaxo Leggings"}
	
	sets.TP.DT = {head="Uk'uxkaj Cap",neck="Twilight Torque",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",left_ring="Dark Ring",
		right_ring="Shadow Ring",back="Repulse Mantle",waist="Phasmida Belt",
		legs="Kaabnax Trousers",feet="Qaaxo Leggings"}

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Fajin Boots"})
	send_command('input /macro book 6;wait .1;input /macro set 10')
	
end

function precast(spell)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.type=="WeaponSkill" then
		equip(sets.precast.WS)
	elseif spell.type =='Step' then
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
	if gain then
		if buff_name == 'Perfect Dodge' then
			equip(sets.precast[buff_name])
			send_command('@wait 0.5; gs disable hands;')
		end
	elseif not gain then
		if buff_name == 'Perfect Dodge' then
			send_command('@wait 0.5; gs enable hands;')
		end
	end
end

function self_command(command)
	if command == 'DD' then
		sets.aftercast.TP = sets.TP.DD
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Fajin Boots"})
		equip(sets.aftercast.TP)
		windower.add_to_chat(9, 'DD set')
	elseif command == 'SOLO' then
		sets.aftercast.TP = sets.TP.Solo
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Fajin Boots"})
		equip(sets.aftercast.TP)
		windower.add_to_chat(9, 'SOLO set')
	elseif command == 'TH' then
		sets.aftercast.TP = sets.TP.TH
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Fajin Boots"})
		equip(sets.aftercast.TP)
		windower.add_to_chat(9, 'Treasure Hunter set')
	elseif command == 'DT' then
		sets.aftercast.TP = sets.TP.DT
		sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Fajin Boots"})
		equip(sets.aftercast.TP)
		windower.add_to_chat(9, 'DT set')
	end
end
