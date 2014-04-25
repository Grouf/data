--[[
		 ======================
		|   R E D   M A G E   | 
		 ======================
]]

function get_sets()
	sets.precast = {}
	
	sets.precast.Saboteur = {hands="Estq. Ganthrt. +2"}
	sets.precast.Composure = { } --Find augment gear
	--Need other JA listed
	
	sets.precast.Idle = {main="Buramenk'ah", sub="Genbu's Shield", ammo="Oreiad's Tathlum", head="Dls. Chapeau +2", 
		neck="Estoqueur's Collar", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", body="Atrophy Tabard", 
		hands="Serpentes Cuffs", left_ring="Solemn Ring", right_ring="Sirona's Ring", back="Estoqueur's cape", 
		waist="Aswang Sash", legs="Crimson Cuisses", feet="Serpentes Sabots"}

	sets.precast.Rest = set_combine(sets.precast.Idle,{main="Chatoyant Staff"})

	sets.precast.Cure = {main="Tamaxchi", sub="Genbu's Shield", ammo="Oreiad's Tathlum", head="Atrophy Chapeau", 
		neck="Estoqueur's Collar", left_ear="Lifestorm Earring", right_ear="Loquac. Earring", body="Gendewitha Bliaut", 
		hands="Gendewitha Gages", left_ring="Solemn Ring", right_ring="Sirona's Ring", back="Pahtli Cape", 
		waist="Witch Sash", legs="Atrophy Tights", feet="Orvail Souliers +1"}
 
	sets.precast.Enfeeble = {main="Lehbrailg +2", sub="Mephitis Grip", ammo="Kalboron Stone", head="Kaabanax Hat", 
		neck="Stoicheion Medal", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", body="Atrophy Tabard", 
		--[[body="Estq. Sayon +2", ]]
		hands="Hagondes Cuffs", left_ring="Irrwisch Ring", right_ring="Omega Ring", back="Refraction Cape", 
		waist="Aswang Sash", legs="Orvail Pants +1", feet="Orvail Souliers +1"}
		--[[feet="Uk'uxkaj Boots"}]]
		
	sets.precast.Nuke = {main="Lehbrailg +2", sub="Elder's Grip", ammo="Witchstone", head="Hagondes Hat", 
		neck="Stoicheion Medal", left_ear="Hecate's Earring", right_ear="Friomisi Earring", body="Hagondes Coat", 
		hands="Hagondes Cuffs", left_ring="Strendu Ring", right_ring="Icesoul Ring", back="Toro Cape", 
		waist="Aswang Sash", legs="Hagondes Pants", feet="Hagondes Sabots"}

	sets.precast.DRKMagic = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone", head="Kaabanax Hat", 
		neck="Stoicheion Medal", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", body="Hagondes Coat", 
		hands="Hagondes Cuffs", left_ring="Strendu Ring", right_ring="Icesoul Ring", back="Refraction Cape", 
		waist="Witch Sash", legs="Hagondes Pants", feet="Hagondes Sabots"}
	
	sets.precast.Buff = {main="Buramenk'ah", sub="Genbu's Shield", head="Atrophy Chapeau", 
		neck="Stone Gorget", right_ear="Loquac. Earring", body="Anhur Robe", 
		hands="Atrophy Gloves", left_ring="Prolix Ring", back="Estoqueur's Cape", 
		waist="Siegel Sash", legs="Shedir Seraweels", feet="Estq. Houseaux +2"}
	
	sets.precast.BuffOther = sets_combine(sets.precast.Buff, {head="Estq. Chappel +2", 
			body="Estq. Sayon +2", hands="Estq. Ganthrt. +2", legs="Estqr. Fuseau +2"})
	
	sets.precast.Fast = {head="Gende. Caubeen", 
		neck="Estoqueur's Collar", left_ear="Estq. Earring", right_ear="Loquac. Earring", body="Anhur Robe", 
		hands="Gendewitha Gages", left_ring="Prolix Ring",
		waist="Witful Belt", legs="Gendewitha Spats", feet="Rubeus Boots"}
	
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
	send_command('input /macro book 3;wait .1;input /macro set 1')
	
end

function precast(spell)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	
	elseif spell.skill == 'EnfeeblingMagic' then
		equip(sets.precast.Enfeeble)
		if string.find(spell.english, "Slow II") or string.find(spell.english, "Dia III") then
			equip({head="Vitivation chapeau"})
		end

	elseif spell.skill == 'EnhancingMagic' then
		equip(sets.precast.Enhancing)
		if string.find(spell.english, 'Refresh') then
			equip({legs="Estoqueur's fuseau +2"})
		end
		if spell.target.isallymember and spell.target.name ~= player.name then --Need to check if TRUE for party and alliance
			windower.add_to_chat(14, spell.target.name.. ' is an alliance member (not me), equip BuffOther.')
			equip(sets.precast.BuffOther)
		end
	
	elseif spell.skill == 'DarkMagic' then
		equip(sets.precast.DarkMagic)
		
	elseif spell.skill == 'ElementalMagic' then
		equip(sets.precast.Nuke)
		if spell.element == 'Earth' then
			equip({neck="Quanpur Necklace"})
		end
	
	elseif spell.skill == 'HealingMagic' then
		if string.find(spell.english, 'Cursna') then
			equip({feet="Gende. Galoshes"})
		else
			equip(sets.precast.Cure)
		end
		
	elseif spell.skill == 'Ninjutsu' then
		equip(sets.precast.Fast)
		
	elseif spell.type=="WeaponSkill" then
		equip(sets.TP.WS)
	end
end

function midcast(spell)
end

function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.precast.TP)
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
		send_command('@wait 0.5; gs disable main, sub;') -- check if both disable
	end
	if old == "Engaged" then
		send_command('@wait 0.5; gs enable main, sub;') -- check if both enable
	end
		
end

function buff_change(buff_name,gain)
	if gain then -- something was gained
		equip(sets.precast[buff_name]) --here to make sure appropriate equipment is equipped before disable
		if buff_name=='Saboteur' then
			send_command('@wait 0.5; gs disable hands;')
			send_command('@input /echo Saboteur ON, hands disabled')
		--[[
		elseif buff_name=='Chain Affinity' then 
			send_command('@wait 0.5; gs disable head feet;')
			send_command('@input /echo Chain Affinity ON, head,feet disabled')
		elseif buff_name=='Burst Affinity' then
			send_command('@wait 0.5; gs disable legs feet;')
			send_command('@input /echo Burst Affinity ON, legs,feet disabled')
		]]
		end
	
	elseif not gain then -- something lost
		if buff_name=='Saboteur' then
			send_command('@wait 0.5; gs enable hands;')
			send_command('@input /echo Saboteur off, hands enabled')
		--[[
		elseif buff_name=='Chain Affinity' then 
			send_command('@wait 0.5; gs enable head feet;')
			send_command('@input /echo Chain Affinity off, head,feet enabled')
		elseif buff_name=='Burst Affinity' then
			send_command('@wait 0.5; gs enable legs feet;')
			send_command('@input /echo Burst Affinity off, legs, enabled')
		]]
		end
	end
	
end
