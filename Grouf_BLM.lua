--[[
		 =========================
		|   B L A C K   M A G E   | 
		 =========================
]]

function get_sets()
	sets.precast = {}
	
	sets.precast.FastCast = {main="Lehbrailg +2",sub="Arbuda Grip",head="Nahtirah Hat",
		left_ear="Loquac. Earring",body="Anhur Robe",
		hands="Hagondes Cuffs",back="Swith Cape",
		waist="Witful Belt",legs="Orvail Pants +1",feet="Hagondes Sabots"} -- 37% Fast Cast
	
	sets.precast.Idle = {main="Lehbrailg +2",sub="Elder's Grip",ammo="Witchstone",head="Hagondes Hat",
		neck="Stoicheion Medal",left_ear="Hecate's Earring",right_ear="Friomisi Earring",body="Hagondes Coat",
		hands="Serpentes Cuffs",left_ring="Icesoul Ring",right_ring="Strendu ring",back="Toro Cape",
		waist="Aswang Sash",legs="Nares Trews",feet="Serpentes Sabots"}
	
	sets.precast.Rest = set_combine(sets.precast.Idle,{main="Chatoyant Staff",sub="Elder's Grip"})
	
	sets.midcast = {}
	sets.midcast.Cure = {main="Tamaxchi",sub="Genbu's Shield",ammo="Oreiad's Tathlum",head="Kaabanax Hat",
		neck="Morgana's Choker",left_ear="Loquac. Earring",right_ear="Lifestorm Earring",body="Hagondes Coat",
		hands="Bokwus Gloves",left_ring="Sirona's Ring",right_ring="Solemn Ring",back="Pahtli Cape",
		waist="Witch Sash",legs="Nares Trews",feet="Orvail Souliers +1"}
		
	sets.midcast.Enfeeble = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabanax Hat",
		neck="Stoicheion Medal",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Irrwisch Ring",right_ring="Omega Ring",back="Refraction Cape",
		waist="Aswang Sash",legs="Orvail Pants +1",feet="Hagondes Sabots"}
		
	sets.midcast.Enhancing = {main="Lehbrailg +2",sub="Fulcio Grip",head="Nares Cap",
		body="Anhur Robe",neck="Stone Gorget",hands="Augur's Gloves",
		left_ear="Loquac. Earring",back="Swith Cape",
		waist="Siegel Sash",legs="Shedir Seraweels",feet="Hagondes Sabots"}
		
	sets.midcast.ElementalMagic = {main="Lehbrailg +2",sub="Elder's Grip",ammo="Witchstone",head="Hagondes Hat",
		neck="Stoicheion Medal",left_ear="Hecate's Earring",right_ear="Friomisi Earring",body="Spaekona's Coat",
		hands="Hagondes Cuffs",left_ring="Icesoul Ring",right_ring="Strendu ring",back="Toro Cape",
		waist="Aswang Sash",legs="Hagondes Pants",feet="Spaekona's Sabots"}
		
	sets.midcast.DarkMagic = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabanax Hat",
		neck="Stoicheion Medal",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Icesoul Ring",right_ring="Omega Ring",back="Refraction Cape",
		waist="Witch Sash",legs="Hagondes Pants",feet="Hagondes Sabots"}
	
	sets.TP = {}
	sets.TP.Engage = {main="Lehbrailg +2",sub="Elder's Grip",ammo="Witchstone",head="Kaabanax Hat",
		neck="Asperity Necklace",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Rajas Ring",right_ring="Spiral Ring",back="Buquwik Cape",
		waist="Windbuffet Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}
		
	sets.TP.WS = {head="Hagondes Hat",
		neck="Tlamiztli Collar",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Rajas Ring",right_ring="Spiral Ring",back="Buquwik Cape",
		waist="Prosilio Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 4;wait .1;input /macro set 1')
	
end

function precast(spell)
	--windower.add_to_chat(14, 'Precast: spell type= ' ..spell.type)
	if spell.type ~= 'JobAbility' and spell.type ~= 'WeaponSkill' then
		--windower.add_to_chat(14, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)
	
	elseif spell.type=="WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS.Base)
		end
	end
	--[[
	if spell.type=="JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	end
	]]
	
end

function midcast(spell)
	if spell.type == 'JobAbility' or spell.type == 'WeaponSkill' then
	--midcast doesn't exist for JA or WS so cancel the processing of this function
		--windower.add_to_chat(14, 'JobAbility or WeaponSkill; Midcast cancelled')
		return
	end
	
	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
	elseif spell.skill == 'Enhancing Magic' then
		if spell.english == 'Stoneskin' or spell.english == 'Blink' or 
		spell.english == 'Aquaveil' or spell.english == 'Phalanx' then
			equip(sets.midcast.Enhancing)
			--windower.add_to_chat(14, 'Midcast: Enhancing casting, Enhancing set')
		else
			equip(sets.precast.FastCast)
			--windower.add_to_chat(14, 'Midcast: Enhancing casting, Fast Cast set')
		end
	elseif spell.skill == 'Elemental Magic' then
		equip(sets.midcast.ElementalMagic)
		if spell.element == 'Earth' then
			equip({neck="Quanpur Necklace"})
		end
	elseif spell.skill == 'Dark Magic' then
		equip(sets.midcast.DarkMagic)
		if string.find(spell.english, 'Aspir') or spell.english == 'Drain' then
			equip({head="Striga Crown"})
		end
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast.Enfeeble)
	elseif spell.skill == 'Healing Magic' then
		equip(sets.midcast.Cure)
	end
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
		send_command('@wait 0.5; gs disable main sub range;')
	end
	if old == 'Engaged' then
		send_command('@wait 0.5; gs enable main sub range;')
	end
end

function buff_change(buff_name,gain)
end
