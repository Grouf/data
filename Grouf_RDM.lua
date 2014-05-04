--[[
		=======================
		|   R E D   M A G E   | 
		=======================
]]

function get_sets()
	sets.precast = {}
	
	--SetMode = "Potency"
	
	--Potency/Accuracy sets
	
	SetMode_Index = 1
	SetMode_Names = {'Potency','Accuracy'}
	
	sets.Potency = {}
	
	sets.Potency.Enfeeble = {main="Lehbrailg +2", sub="Mephitis Grip", ammo="Kalboron Stone", head="Vitivation Chapeau", 
		neck="Stoicheion Medal", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", body="Estq. Sayon +2", 
		hands="Hagondes Cuffs", left_ring="Irrwisch Ring", right_ring="Omega Ring", back="Refraction Cape", 
		waist="Aswang Sash", legs="Orvail Pants +1", feet="Uk'uxkaj Boots"}
	
	sets.Potency.Dispel = set_combine(sets.Potency.Enfeeble,{body="Atrophy Tabard", hands="Gendewitha Gages",
		back="Swith Cape", waist="Witful Belt", feet="Vitivation Boots"})
		
	sets.Potency.Nuke = {main="Lehbrailg +2", sub="Elder's Grip", ammo="Witchstone", head="Hagondes Hat", 
		neck="Stoicheion Medal", left_ear="Hecate's Earring", right_ear="Friomisi Earring", body="Hagondes Coat", 
		hands="Hagondes Cuffs", left_ring="Strendu Ring", right_ring="Icesoul Ring", back="Toro Cape", 
		waist="Aswang Sash", legs="Hagondes Pants", feet="Hagondes Sabots"}
	
	sets.Potency.DRKMagic = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone", head="Kaabanax Hat", 
		neck="Stoicheion Medal", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", body="Hagondes Coat", 
		hands="Hagondes Cuffs", left_ring="Strendu Ring", right_ring="Icesoul Ring", back="Refraction Cape", 
		waist="Witch Sash", legs="Hagondes Pants", feet="Hagondes Sabots"}
	
		
	sets.Accuracy = {}
	
	sets.Accuracy.Enfeeble = {main="Lehbrailg +2", sub="Mephitis Grip", ammo="Kalboron Stone", head="Vitivation Chapeau", 
		neck="Stoicheion Medal", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", body="Atrophy Tabard", 
		hands="Hagondes Cuffs", left_ring="Irrwisch Ring", right_ring="Omega Ring", back="Refraction Cape", 
		waist="Aswang Sash", legs="Orvail Pants +1", feet="Vitivation Boots"} --M.Acc 307
		
	sets.Accuracy.Dispel = set_combine(sets.Accuracy.Enfeeble,{})
	
	sets.Accuracy.Nuke = {main="Lehbrailg +2", sub="Mephitis Grip", ammo="Kalboron Stone", head="Hagondes Hat", 
		neck="Stoicheion Medal", left_ear="Hecate's Earring", right_ear="Friomisi Earring", body="Atrophy Tabard", 
		hands="Hagondes Cuffs", left_ring="Strendu Ring", right_ring="Icesoul Ring", back="Toro Cape", 
		waist="Aswang Sash", legs="Hagondes Pants", feet="Hagondes Sabots"}
	
	sets.Accuracy.DRKMagic = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone", head="Kaabanax Hat", 
		neck="Stoicheion Medal", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", body="Atrophy Tabard", 
		hands="Hagondes Cuffs", left_ring="Strendu Ring", right_ring="Icesoul Ring", back="Refraction Cape", 
		waist="Witch Sash", legs="Hagondes Pants", feet="Hagondes Sabots"}
	
	
	--Job Abilities
	
	sets.precast.Chainspell = {body="Vitivation Tabard"}
	sets.precast.Saboteur = {hands="Estq. Ganthrt. +2"}
	sets.precast.Composure = { } --Find augment gear
	--Need other JA listed
	
	sets.precast.Idle = {main="Buramenk'ah", sub="Genbu's Shield", ammo="Oreiad's Tathlum", head="Vitivation Chapeau", 
		neck="Estoqueur's Collar", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", body="Atrophy Tabard", 
		hands="Serpentes Cuffs", left_ring="Solemn Ring", right_ring="Sirona's Ring", back="Estoqueur's cape", 
		waist="Aswang Sash", legs="Nares Trews", feet="Serpentes Sabots"}

	sets.precast.Rest = set_combine(sets.precast.Idle,{main="Chatoyant Staff"})

	sets.precast.Cure = {main="Tamaxchi", sub="Genbu's Shield", ammo="Oreiad's Tathlum", head="Atrophy Chapeau", 
		neck="Estoqueur's Collar", left_ear="Lifestorm Earring", right_ear="Loquac. Earring", body="Gendewitha Bliaut", 
		hands="Gendewitha Gages", left_ring="Solemn Ring", right_ring="Sirona's Ring", back="Pahtli Cape", 
		waist="Witch Sash", legs="Atrophy Tights", feet="Orvail Souliers +1"} --50% Cure Potency, MND242, 
	
	sets.precast.Enhancing = {head="Atrophy Chapeau", 
		neck="Stone Gorget", right_ear="Loquac. Earring", body="Vitivation Tabard", 
		hands="Atrophy Gloves", left_ring="Prolix Ring", back="Estoqueur's Cape", 
		waist="Siegel Sash", legs="Shedir Seraweels", feet="Estq. Houseaux +2"}
	
	sets.precast.EnhancingOther = set_combine(sets.precast.Enhancing, {head="Estq. Chappel +2", 
			body="Estq. Sayon +2", hands="Estq. Ganthrt. +2", legs="Estqr. Fuseau +2"})
	
	sets.precast.Fast = {main="Lehbrailg +2", sub="Arbuda Grip", head="Atrophy Chapeau", 
		neck="Estoqueur's Collar", left_ear="Estq. Earring", right_ear="Loquac. Earring", body="Vitivation Tabard", 
		hands="Gendewitha Gages", left_ring="Prolix Ring", back="Swith Cape",
		waist="Witful Belt", legs="Orvail Pants +1", feet="Hagondes Sabots"} -- 47% Fast Cast, 13% Haste
	
	sets.TP = {}
	sets.TP.Engage = {ammo="Oreiad's Tathlum", head="Hagondes Hat", 
		neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", body="Hagondes Coat", 
		hands="Hagondes Cuffs", left_ring="Spiral Ring", right_ring="Rajas Ring", back="Atheling Mantle", 
		waist="Windbuffet Belt", legs="Gendewitha Spats", feet="Hagondes Sabots"}
		
	sets.TP.WS = {ammo="Demonry Stone", head="Hagondes Hat", 
		neck="Tlamiztli Collar", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", body="Hagondes Coat", 
		hands="Hagondes Cuffs", left_ring="Spiral Ring", right_ring="Rajas Ring", back="Buquwik Cape", 
		waist="Prosilio Belt", legs="Gendewitha Spats", feet="Hagondes Sabots"}
	
	sets.precast.Requiescat = set_combine(sets.TP.WS, {neck="Shadow Gorget"})
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 5;wait .1;input /macro set 1')
	
end

function precast(spell)
	--windower.add_to_chat(14, 'Casting spell: ' ..spell.english.. ' - ' ..spell.skill.. ' on ' ..spell.target.name.. ' with ' ..SetMode_Names[SetMode_Index])
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets[SetMode_Names[SetMode_Index]].Enfeeble)
		if spell.english == 'Dispel' then
			equip(sets[SetMode_Names[SetMode_Index]].Dispel)
		end
		--[[if string.find(spell.english, "Slow II") or string.find(spell.english, "Dia III") then
			equip({head="Vitivation chapeau"})
		end]]
		

	elseif spell.skill == 'Enhancing Magic' then
		windower.add_to_chat(14, 'Casting spell: ' ..spell.english.. ' on ' ..spell.target.name.. ' with ' ..SetMode_Names[SetMode_Index])
		equip(sets.precast.Enhancing)
		
		if string.find(spell.english, 'Refresh') then
			equip({legs="Estoqueur's fuseau +2"})
		end
		if spell.target.isallymember and spell.target.name ~= player.name then 
			windower.add_to_chat(14, spell.target.name.. ' is an alliance member (not me), equip BuffOther.')
			equip(sets.precast.EnhancingOther)
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
			equip(sets.precast.Cure)
		end
		
	elseif spell.skill == 'Ninjutsu' then
		equip(sets.precast.Fast)
		
	elseif spell.type=="Weapon Skill" then
		equip(sets.TP.WS)
	end
end

function midcast(spell)
end

function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.TP.Engage)
	else
		equip(sets.precast.Idle)
	end
end

function status_change(new,old)
	if new == 'Idle' then
		equip(sets.precast.Idle)
	elseif new == 'Resting' then
		equip(sets.precast.Rest)
	elseif new == 'Engaged' then
		equip(sets.TP.Engage)
	end
		
end

function buff_change(buff_name,gain)
	if gain then -- something was gained
		equip(sets.precast[buff_name]) --here to make sure appropriate equipment is equipped before disable
		if buff_name=='Saboteur' then
			send_command('@wait 0.5; gs disable hands;')
			send_command('@input /echo Saboteur ON, hands disabled')
		elseif buff_name=='Chainspell' then 
			send_command('@wait 0.5; gs disable body;')
			send_command('@input /echo Chainspell ON, body disabled')
		--[[
		elseif buff_name=='Burst Affinity' then
			send_command('@wait 0.5; gs disable legs feet;')
			send_command('@input /echo Burst Affinity ON, legs,feet disabled')
		]]
		end
	
	elseif not gain then -- something lost
		if buff_name=='Saboteur' then
			send_command('@wait 0.5; gs enable hands;')
			send_command('@input /echo Saboteur off, hands enabled')
		elseif buff_name=='Chainspell' then 
			send_command('@wait 0.5; gs enable body;')
			send_command('@input /echo Chainspell off, body enabled')
		--[[
		elseif buff_name=='Burst Affinity' then
			send_command('@wait 0.5; gs enable legs feet;')
			send_command('@input /echo Burst Affinity off, legs, enabled')
		]]
		end
	end
end

function self_command(command)
	if command == 'Potency' then
		--SetMode = 'Potency'
		SetMode_Index = 1
		windower.add_to_chat(9, 'SetMode now set to:' ..SetMode_Names[SetMode_Index] )
	elseif command == 'Accuracy' then
		SetMode_Index = 2
		--SetMode = 'Accuracy'
		windower.add_to_chat(9, 'SetMode now set to:' ..SetMode_Names[SetMode_Index] )
	elseif command == 'Melee' then
		disable("main", "sub", "range")
	elseif command == 'Magic' then
		enable("main", "sub", "range")
		
	end
	
	--windower.add_to_chat(14, 'command is: ' ..command)
	--send_command('@input /echo SOLO SET')
	
end
