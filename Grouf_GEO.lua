--[[
		=========================
		|   G E O M A N C E R   | 
		=========================
]]

function get_sets()				
	sets.precast = {}
	
	sets.precast.FastCast = {main="Lehbrailg +2",sub="Arbuda Grip",head="Nahtirah Hat",
		left_ear="Loquac. Earring",body="Anhur Robe",
		hands="Hagondes Cuffs",right_ring="Prolix Ring",back="Swith Cape",
		waist="Witful Belt",legs="Geomancy Pants",feet="Hagondes Sabots"}  --Geo. Pants = 10%
		
	sets.precast.IdleRefresh = {main="Lehbrailg +2",sub="Mephitis Grip",range="Dunna",head="Bagua Galero",
		neck="Morgana's Choker",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat",
		hands="Bagua Mitaines",left_ring="Irrwisch Ring",right_ring="Prolix Ring",back="Lifestream Cape",
		waist="Aswang Sash",legs="Hagondes Pants",feet="Geomancy Sandals"}
	
	sets.precast.IdleLuopan = {main="Lehbrailg +2",sub="Mephitis Grip",range="Dunna",head="Bagua Galero",
		neck="Morgana's Choker",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat",
		hands="Geomancy Mitaines",left_ring="Irrwisch Ring",right_ring="Prolix Ring",back="Lifestream Cape",
		waist="Aswang Sash",legs="Hagondes Pants",feet="Bagua Sandals"}
	
	sets.precast.Idle = sets.precast.IdleRefresh
	
	sets.precast.Rest = {main="Chatoyant Staff"}
		
--Job Ability--
	sets.JA = {}
	sets.JA['Collimated Fervor'] = {head="Bagua Galero"}
	sets.JA.Bolster = {body="Bagua Tunic"}
	sets.JA['Full Circle'] = {hands="Bagua Mitaines"}
	sets.JA['Mending Halation'] = {legs="Bagua Pants"}
	sets.JA['Radial Arcana'] = {feet="Bagua Sandals"}
	
--Midcast
	sets.midcast = {}
	
	sets.midcast.Cure = {main="Tamaxchi",sub="Genbu's Shield",ammo="Oreiad's Tathlum",head="Kaabanax Hat",
		neck="Morgana's Choker",left_ear="Loquac. Earring",right_ear="Lifestorm Earring",body="Geomancy Tunic",
		hands="Bokwus Gloves",left_ring="Sirona's Ring",right_ring="Solemn Ring",back="Pahtli Cape",
		waist="Witch Sash",legs="Nares Trews",feet="Weath. Souliers +1"}
		
	sets.midcast.Enfeeble = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabanax Hat",
		neck="Stoicheion Medal",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Irrwisch Ring",right_ring="Sangoma Ring",back="Refraction Cape",
		waist="Aswang Sash",legs="Orvail Pants +1",feet="Hagondes Sabots"}
		
	sets.midcast.Geomancy = {main="Dowser's Wand",sub="Genbu's Shield",range="Dunna",head="Geomancy Galero",
		neck="Morgana's Choker",left_ear="Loquac. Earring",body="Geomancy Tunic",
		hands="Geomancy Mitaines",right_ring="Sangoma Ring",back="Lifestream Cape",
		waist="Witch Sash",legs="Geomancy Pants",feet="Geomancy Sandals"}
		
	--Enhancing needs work
	sets.midcast.Enhancing = {body="Anhur Robe",neck="Stone Gorget",hands="Augur's Gloves",
		left_ear="Loquac. Earring",
		waist="Siegel Sash",legs="Shedir Seraweels",feet="Geomancy Sandals"}
		
	sets.midcast.ElementalMagic = {main="Lehbrailg +2",sub="Elder's Grip",ammo="Witchstone",head="Buremte Hat",
		neck="Stoicheion Medal",left_ear="Hecate's Earring",right_ear="Friomisi Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Acumen Ring",right_ring="Strendu ring",back="Toro Cape",
		waist="Aswang Sash",legs="Hagondes Pants",feet="Weath. Souliers +1"}
		
	sets.midcast.DarkMagic = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Bagua Galero",
		neck="Stoicheion Medal",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Acumen Ring",right_ring="Sangoma Ring",back="Refraction Cape",
		waist="Witch Sash",legs="Hagondes Pants",feet="Hagondes Sabots"}
	
	send_command('input /macro book 20;wait .1;input /macro set 1')
	
end

function precast(spell)
	--windower.add_to_chat(14, 'Precast: spell type= ' ..spell.type)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		--windower.add_to_chat(14, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)
	
	--[[
	if spell.type=="WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS.Base)
		end
	end
	]]
	
	elseif spell.prefix=="/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	end
	
end

--[[Relic augments:
Head: Bagua Galero: Primeval Zeal
Body: Bagua Tunic: Bolster
Hands: Bagua Mitaines: Curative Recantation
Legs: Bagua Pants: Mending Halation
Feet: Bagua Sandals: Radial Arcana
]]

function midcast(spell)
	if spell.prefix == '/jobability' or spell.type == 'WeaponSkill' then
	--midcast doesn't exist for JA or WS so cancel the processing of this function
		--windower.add_to_chat(14, 'JobAbility or WeaponSkill; Midcast cancelled')
		return
	end
	
	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
	elseif spell.skill == 'Geomancy' then
		equip(sets.midcast.Geomancy)
	elseif spell.skill == 'Enhancing Magic' then
		if spell.english == 'Stoneskin' or spell.english == 'Blink' or 
		spell.english == 'Aquaveil' or spell.english == 'Phalanx' then
			equip(sets.midcast.Enhancing)
		else
			equip(sets.midcast.FastCast)
			--send_command('@input /echo FastCast set on')
		end
	elseif spell.skill == 'Elemental Magic' then
		equip(sets.midcast.ElementalMagic)
		if spell.element == 'Earth' then
			equip({neck="Quanpur Necklace"})
		end
	elseif spell.skill == 'Dark Magic' then
		equip(sets.midcast.DarkMagic)
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast.Enfeeble)
	elseif spell.skill == 'Healing Magic' then
		equip(sets.midcast.Cure)
	end
end

function aftercast(spell)
	if player.status == 'Idle' then
		equip(sets.precast.Idle)
	elseif player.status == 'Resting' then
		equip(sets.precast.Rest)
	end
end

function pet_change(pet,gain)
	--windower.add_to_chat(14, 'Pet_Change: ' ..pet.name.. ' gain? ' ..tostring(gain))
	--pet.name = 'Luopan'
	if gain then --pet casted
		sets.precast.Idle = sets.precast.IdleLuopan
	else
		sets.precast.Idle = sets.precast.IdleRefresh
	end
	equip(sets.precast.Idle)
end

function pet_status_change(new,old)
	--windower.add_to_chat(14, 'Pet_Status_Change: ' ..new.. ' / ' ..old)
	--luapan sits in 'Idle' status
	--on death status is 'Engaged dead'
end

function status_change(new,old)
	if new == 'Idle' then
		equip(sets.precast.Idle)
	elseif new == 'Resting' then
		equip(sets.precast.Rest)
	end
end

function buff_change(buff_name,gain) --gain = True if gained, False if lost
	--windower.add_to_chat(14, 'Buff_Change: ' ..buff_name.. ' gain? ' ..tostring(gain))
	
	if buff_name=='Collimated Fervor' then
		if gain then
			equip(sets.JA['Collimated Fervor'])
			send_command('@wait 0.5; gs disable head;')
			send_command('@input /echo Collimated Fervor ON, head disabled')
		else
			enable("head")
			send_command('@input /echo Collimated Fervor off, head enabled')
		end
	elseif buff_name=='Bolster' then 
		if gain then
			equip(sets.JA.Bolster)
			send_command('@wait 0.5; gs disable body;')
			send_command('@input /echo Bolster ON, body disabled')
		else
			enable("body")
			send_command('@input /echo Bolster off, body enabled')
		end
	elseif buff_name=='Mending Halation' then
		if gain then
			equip(sets.JA['Mending Halation'])
			send_command('@wait 0.5; gs disable legs;')
			send_command('@input /echo Mending Halation ON, legs disabled')
		else
			enable("legs")
			send_command('@input /echo Mending Halation off, legs enabled')
		end
	elseif buff_name=='Radial Arcana' then
		if gain then
			equip(sets.JA['Radial Arcana'])
			send_command('@wait 0.5; gs disable feet;')
			send_command('@input /echo Radial Arcana ON, feet disabled')
		else
			enable("feet")
			send_command('@input /echo Radial Arcana off, feet enabled')
		end
	end
		
end
