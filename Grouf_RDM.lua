--[[
		=======================
		|   R E D   M A G E   | 
		=======================
]]

function get_sets()
	--Potency/Accuracy sets
	
	SetMode_Index = 1
	SetMode_Names = {'Potency','Accuracy'}
	
	sets.Potency = {}
	
	sets.Potency.Enfeeble = {main="Lehbrailg +2", sub="Mephitis Grip", ammo="Kalboron Stone", head="Vitivation Chapeau", 
		neck="Stoicheion Medal", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", body="Estq. Sayon +2", 
		hands="Hagondes Cuffs", left_ring="Irrwisch Ring", right_ring="Sangoma Ring", back="Refraction Cape", 
		waist="Aswang Sash", legs="Bokwus Slops", feet="Uk'uxkaj Boots"}--M.Acc=302
	
	sets.Potency.Dispel = set_combine(sets.Potency.Enfeeble,{body="Atrophy Tabard", hands="Gendewitha Gages",
		waist="Witch Sash", feet="Vitivation Boots"})
		
	sets.Potency.Nuke = {main="Lehbrailg +2", sub="Mephitis Grip", ammo="Witchstone", head="Buremte Hat", 
		neck="Stoicheion Medal", left_ear="Hecate's Earring", right_ear="Friomisi Earring", body="Hagondes Coat", 
		hands="Hagondes Cuffs", left_ring="Strendu Ring", right_ring="Acumen Ring", back="Toro Cape", 
		waist="Aswang Sash", legs="Hagondes Pants", feet="Weath. Souliers +1"}
	
	sets.Potency.DRKMagic = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone", head="Kaabanax Hat", 
		neck="Stoicheion Medal", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", body="Hagondes Coat", 
		hands="Hagondes Cuffs", left_ring="Strendu Ring", right_ring="Acumen Ring", back="Refraction Cape", 
		waist="Witch Sash", legs="Hagondes Pants", feet="Hagondes Sabots"}
	
		
	sets.Accuracy = {}
	
	sets.Accuracy.Enfeeble = {main="Lehbrailg +2", sub="Mephitis Grip", ammo="Kalboron Stone", head="Vitivation Chapeau", 
		neck="Stoicheion Medal", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", body="Atrophy Tabard", 
		hands="Hagondes Cuffs", left_ring="Perception Ring", right_ring="Sangoma Ring", back="Refraction Cape", 
		waist="Aswang Sash", legs="Bokwus Slops", feet="Vitivation Boots"} --M.Acc 318
		
	sets.Accuracy.Dispel = set_combine(sets.Accuracy.Enfeeble,{})
	
	sets.Accuracy.Nuke = {main="Lehbrailg +2", sub="Mephitis Grip", ammo="Kalboron Stone", head="Buremte Hat", 
		neck="Stoicheion Medal", left_ear="Hecate's Earring", right_ear="Friomisi Earring", body="Atrophy Tabard", 
		hands="Hagondes Cuffs", left_ring="Perception Ring", right_ring="Sangoma Ring", back="Refraction Cape", 
		waist="Aswang Sash", legs="Hagondes Pants", feet="Hagondes Sabots"}
	
	sets.Accuracy.DRKMagic = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone", head="Kaabanax Hat", 
		neck="Stoicheion Medal", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", body="Atrophy Tabard", 
		hands="Hagondes Cuffs", left_ring="Strendu Ring", right_ring="Perception Ring", back="Refraction Cape", 
		waist="Witch Sash", legs="Hagondes Pants", feet="Hagondes Sabots"}
	
	
	--Job Abilities
	sets.JA = {}
	sets.JA.Chainspell = {body="Vitivation Tabard"}
	sets.JA.Saboteur = {hands="Estq. Ganthrt. +2"}
	--sets.JA.Composure = { } --Find augment gear
	--Need other JA listed
	
	sets.precast = {}
	
	sets.precast.IdleRefresh = {main="Buramenk'ah", sub="Genbu's Shield", ammo="Oreiad's Tathlum", head="Vitivation Chapeau", 
		neck="Estoqueur's Collar", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", body="Atrophy Tabard", 
		hands="Serpentes Cuffs", left_ring="Solemn Ring", right_ring="Sirona's Ring", back="Estoqueur's cape", 
		waist="Aswang Sash", legs="Nares Trews", feet="Serpentes Sabots"}
		
	sets.precast.IdleDT = {main="Xiutleato",sub="Genbu's Shield", ammo="Brigantia Pebble", head="Nahtirah Hat", 
		neck="Twilight Torque", left_ear="Soil Pearl", right_ear="Soil Pearl", body="Hagondes Coat", 
		hands="Otomi Gloves", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring", back="Repulse Mantle", 
		waist="Flume Belt", legs="Hagondes Pants", feet="Hagondes Sabots"}
	
	sets.Idle = sets.precast.IdleRefresh
	IdleMode = 'Refresh'
	
	sets.Rest = set_combine(sets.Idle,{main="Chatoyant Staff",sub="Mephitis Grip"})
	
	sets.precast.FastCast = {main="Lehbrailg +2", sub="Arbuda Grip", head="Atrophy Chapeau", 
		neck="Estoqueur's Collar", left_ear="Estq. Earring", right_ear="Loquac. Earring", body="Vitivation Tabard", 
		hands="Gendewitha Gages", left_ring="Prolix Ring", back="Swith Cape",
		waist="Witful Belt", legs="Orvail Pants +1", feet="Hagondes Sabots"} -- 50% Fast Cast, 13% Haste
	
	sets.midcast = {}
	sets.midcast.Cure = {main="Tamaxchi", sub="Genbu's Shield", ammo="Oreiad's Tathlum", head="Kaabanax Hat", 
		neck="Estoqueur's Collar", left_ear="Lifestorm Earring", right_ear="Loquac. Earring", body="Gendewitha Bliaut", 
		hands="Weath. Cuffs +1", left_ring="Solemn Ring", right_ring="Sirona's Ring", back="Pahtli Cape", 
		waist="Witch Sash", legs="Atrophy Tights", feet="Weath. Souliers +1"} --59% Cure Pot., 15%Haste ,MND 92+162
	
	sets.midcast.Enhancing = {head="Atrophy Chapeau", 
		neck="Stone Gorget", right_ear="Loquac. Earring", body="Vitivation Tabard", 
		hands="Atrophy Gloves", left_ring="Prolix Ring", back="Estoqueur's Cape", 
		waist="Siegel Sash", legs="Shedir Seraweels", feet="Estq. Houseaux +2"}
	
	sets.midcast.EnhancingOther = set_combine(sets.midcast.Enhancing, {head="Estq. Chappel +2", 
			body="Estq. Sayon +2", hands="Estq. Ganthrt. +2", legs="Estqr. Fuseau +2"})
	
	--[[sets.midcast.Warp = sets.precast.FastCast
	sets.midcast['Warp II'] = sets.precast.FastCast
	sets.midcast.Escape = sets.precast.FastCast
	sets.midcast.Tractor = sets.precast.FastCast
	sets.midcast.Raise = sets.precast.FastCast
	sets.midcast['Raise II'] = sets.precast.FastCast
	sets.midcast.Reraise = sets.precast.FastCast
	sets.midcast['Protect V'] = sets.precast.FastCast
	sets.midcast['Shell V'] = sets.precast.FastCast]]
	
	MeleeLock = 'False' --used for info only
	sets.TP = {}
	
	sets.TP.Step = {head="Buremte Hat",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Heartseeker Earring",body="Gendewitha Bliaut",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Spiral Ring",back="Letalis Mantle",waist="Phasmida Belt",
		legs="Orvail Pants +1",feet="Atrophy Boots"} --Primary Acc: 796
	
	sets.TP.DD = {ammo="Oreiad's Tathlum", head="Hagondes Hat", 
		neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", body="Hagondes Coat", 
		hands="Atrophy Gloves", left_ring="Cho'j Band", right_ring="Rajas Ring", back="Atheling Mantle", 
		waist="Windbuffet Belt", legs="Hagondes Pants", feet="Atrophy Boots"}
	
	sets.TP.Accuracy = {}
	
	sets.WS = {}
	sets.WS.Base = {head="Hagondes Hat", 
		neck="Tlamiztli Collar", left_ear="Dudgeon Earring", right_ear="Bladeborn Earring", body="Hagondes Coat", 
		hands="Atrophy Gloves", left_ring="Cho'j Band", right_ring="Rajas Ring", back="Buquwik Cape", 
		waist="Prosilio Belt", legs="Hagondes Pants", feet="Atrophy Boots"}
	
	sets.WS.Requiescat = set_combine(sets.WS.Base, {neck="Shadow Gorget"})
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	send_command('input /macro book 5;wait .1;input /macro set 1')
	
end

function precast(spell)
	--windower.add_to_chat(14, 'Precast: spell type= ' ..spell.type)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		--windower.add_to_chat(14, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)
	
	elseif spell.type == "WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS.Base)
		end
	
	elseif spell.prefix == "/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif spell.type == 'Step' or spell.english == 'Violent Flourish' then
			equip(sets.TP.Step)
		end
	end
	
end

function midcast(spell)
	if spell.prefix == '/jobability' or spell.type == 'WeaponSkill' then
	--midcast doesn't exist for JA or WS so cancel the processing of this function
		--windower.add_to_chat(14, 'JobAbility or WeaponSkill; Midcast cancelled')
		return
	end

--windower.add_to_chat(14, 'Casting spell: ' ..spell.english.. ' - ' ..spell.skill.. ' on ' ..spell.target.name.. ' with ' ..SetMode_Names[SetMode_Index])
	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
	
	elseif S{'Warp*','Escape','Tractor','Raise*','Reraise*','Protect*','Shell*','Teleport*'}:contains(spell.english) then
		windower.add_to_chat(14, 'Fast Cast only Spell: ' ..spell.english)
		equip(sets.precast.FastCast)
	
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets[SetMode_Names[SetMode_Index]].Enfeeble)
		--print_set(sets[SetMode_Names[SetMode_Index]].Enfeeble)
		if spell.english == 'Dispel' then
			equip(sets[SetMode_Names[SetMode_Index]].Dispel)
		end
		if SetMode_Names[SetMode_Index] == 'Potency' then
			if spell.english == "Bio III" or spell.english == "Blind II" then
				equip({legs="Vitivation Tights"})
			end
		end
		--[[if spell.english == "Slow II" or spell.english == "Dia III" then
			equip({head="Vitivation chapeau"}) **This hat always equipped
		end]]
		
	elseif spell.skill == 'Enhancing Magic' then
		--windower.add_to_chat(14, 'Casting spell: ' ..spell.english.. ' on ' ..spell.target.name.. ' with ' ..SetMode_Names[SetMode_Index])
		equip(sets.midcast.Enhancing)
		
		if string.find(spell.english, 'Refresh') then
			equip({legs="Estoqueur's fuseau +2"})
		end
		if spell.target.isallymember and spell.target.name ~= player.name then 
			windower.add_to_chat(14, spell.target.name.. ' is an alliance member (not me), equip BuffOther.')
			equip(sets.midcast.EnhancingOther)
		end
	
	elseif spell.skill == 'Dark Magic' then
		equip(sets[SetMode_Names[SetMode_Index]].DarkMagic)
		
	elseif spell.skill == 'Elemental Magic' then
		equip(sets[SetMode_Names[SetMode_Index]].Nuke)
		if spell.element == 'Earth' and SetMode_Names[SetMode_Index] == 'Potency' then
			equip({neck="Quanpur Necklace"})
		end
	
	elseif spell.skill == 'Healing Magic' then
		if string.find(spell.english, 'Cursna') then
			equip({feet="Gende. Galoshes"})
		else
			equip(sets.midcast.Cure)
		end
		
	elseif spell.skill == 'Ninjutsu' then
		equip(sets.precast.FastCast)
		
	end
--windower.add_to_chat(14, 'End of Midcast (NOT cancelled)')
end

function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.aftercast.TP)
	else
		equip(sets.Idle)
	end
end

function status_change(new,old)
	if new == 'Idle' then
		equip(sets.Idle)
	elseif new == 'Resting' then
		equip(sets.Rest)
	elseif new == 'Engaged' then
		equip(sets.aftercast.TP)
	end
		
end

function buff_change(buff_name,gain)
	if buff_name=='Saboteur' then
		if gain then
			equip(sets.JA.Saboteur)
			send_command('@wait 0.5; gs disable hands;')
			send_command('@input /echo Saboteur ON, hands disabled')
		else
			enable("hands")
			send_command('@input /echo Saboteur off, hands enabled')
		end
	elseif buff_name=='Chainspell' then 
		if gain then
			equip(sets.JA.Chainspell)
			send_command('@wait 0.5; gs disable body;')
			send_command('@input /echo Chainspell ON, body disabled')
		else
			enable("body")
			send_command('@input /echo Chainspell off, body enabled')
		end
	end

end

function self_command(command)
	if command == 'Potency' then
		SetMode_Index = 1
		windower.add_to_chat(9, 'SetMode now set to:' ..SetMode_Names[SetMode_Index] )
	elseif command == 'Accuracy' then
		SetMode_Index = 2
		windower.add_to_chat(9, 'SetMode now set to:' ..SetMode_Names[SetMode_Index] )
	elseif command == 'Melee' then
		disable("main", "sub", "range")
		MeleeLock = 'True'
	elseif command == 'Magic' then
		enable("main", "sub", "range")
		MeleeLock = 'False'
	elseif command == 'IdleRefresh' then
		sets.Idle = sets.precast.IdleRefresh
		sets.Rest = set_combine(sets.Idle,{main="Chatoyant Staff",sub="Mephitis Grip"})
		IdleMode = 'Refresh'
		send_command('@wait 0.2;')
		status_change(player.status)
	elseif command == 'IdleDT' then
		sets.Idle = sets.precast.IdleDT
		sets.Rest = set_combine(sets.Idle,{main="Chatoyant Staff",sub="Mephitis Grip"})
		IdleMode = 'Damage Taken'
		send_command('@wait 0.2;')
		status_change(player.status)
	elseif command == 'Info' then
		windower.add_to_chat(9, 'RDM Info:')
		windower.add_to_chat(9, 'SetMode = ' ..SetMode_Names[SetMode_Index])
		windower.add_to_chat(9, 'IdleMode = ' ..IdleMode)
		windower.add_to_chat(9, 'MeleeLock = ' ..MeleeLock)
	
		
	end
	
	--windower.add_to_chat(14, 'command is: ' ..command)
	--send_command('@input /echo SOLO SET')
	
end
