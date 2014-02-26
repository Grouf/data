--[[
		 =========================
		|   B L A C K   M A G E   | 
		 =========================
]]

function get_sets()				
	sets.precast = {}
	
	sets.precast.Idle = {main="Lehbrailg +2",sub="Elder's Grip",ammo="Witchstone",head="Hagondes Hat",
		neck="Stoicheion Medal",left_ear="Hecate's Earring",right_ear="Friomisi Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Icesoul Ring",right_ring="Strendu ring",back="Toro Cape",
		waist="Aswang Sash",legs="Nares Trews",feet="Spaekona's Sabots"}
	
	sets.precast.Rest = set_combine(sets.precast.Idle,{main="Chatoyant Staff",sub="Elder's Grip"})
	
	sets.precast.Cure = {main="Tamaxchi",sub="Genbu's Shield",ammo="Oreiad's Tathlum",head="Kaabanax Hat",
		neck="Morgana's Choker",left_ear="Loquac. Earring",right_ear="Lifestorm Earring",body="Hagondes Coat",
		hands="Weather. Cuffs",left_ring="Sirona's Ring",right_ring="Solemn Ring",back="Pahtli Cape",
		waist="Witch Sash",legs="Nares Trews",feet="Orvail Souliers +1"}
		
	sets.precast.Enfeeble = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabanax Hat",
		neck="Stoicheion Medal",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Irrwisch Ring",right_ring="Omega Ring",back="Refraction Cape",
		waist="Aswang Sash",legs="Orvail Pants +1",feet="Hagondes Sabots"}
		
	sets.precast.FastCast = {main="Lehbrailg +2",sub="Elder's Grip",head="Hagondes Hat",
		left_ear="Loquac. Earring",body="Anhur Robe",
		hands="Hagondes Cuffs",back="Swith Cape",
		waist="Witful Belt",legs="Orvail Pants +1",feet="Hagondes Sabots"}
		
	sets.precast.Enhancing = {body="Anhur Robe",neck="Stone Gorget",hands="Augur's Gloves",
		left_ear="Loquac. Earring",
		waist="Siegel Sash",legs="Shedir Seraweels",feet="Hagondes Sabots"}
		
	sets.precast.ElementalMagic = {main="Lehbrailg +2",sub="Elder's Grip",ammo="Witchstone",head="Hagondes Hat",
		neck="Stoicheion Medal",left_ear="Hecate's Earring",right_ear="Friomisi Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Icesoul Ring",right_ring="Strendu ring",back="Toro Cape",
		waist="Aswang Sash",legs="Hagondes Pants",feet="Spaekona's Sabots"}
		
	sets.precast.DarkMagic = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabanax Hat",
		neck="Stoicheion Medal",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Icesoul Ring",right_ring="Omega Ring",back="Refraction Cape",
		waist="Witch Sash",legs="Hagondes Pants",feet="Hagondes Sabots"}
	
		
	sets.TP = {}
	sets.TP.Engage = {main="Lehbrailg +2",sub="Elder's Grip",ammo="Witchstone",head="Kaabanax Hat",
		neck="Asperity Necklace",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Rajas Ring",right_ring="Mars's Ring",back="Buquwik Cape",
		waist="Aswang Sash",legs="Hagondes Pants",feet="Hagondes Sabots"}
		
	sets.TP.WS = {head="Hagondes Hat",
		neck="Tlamiztli Collar",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Rajas Ring",right_ring="Flame Ring",back="Buquwik Cape",
		waist="Prosilio Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 4;wait .1;input /macro set 1')
	
end

function precast(spell)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.skill == 'EnhancingMagic' then
		if spell.english == 'Stoneskin' or spell.english == 'Blink' or 
		spell.english == 'Aquaveil' or spell.english == 'Phalanx' then
			equip(sets.precast.Enhancing)
		else
			equip(sets.precast.FastCast)
			send_command('@input /echo FastCast set on')
		end
	elseif spell.skill == 'ElementalMagic' then
		equip(sets.precast.ElementalMagic)
		if spell.element == 'Earth' then
			equip({neck="Quanpur Necklace"})
		end
	elseif spell.skill == 'DarkMagic' then
		equip(sets.precast.DarkMagic)
		if string.find(spell.english, 'Aspir') or spell.english == 'Drain' then
			equip({head="Striga Crown",right_ear="Hirudinea Earring"})
		end
	elseif spell.skill == 'EnfeeblingMagic' then
		equip(sets.precast.Enfeeble)
	elseif spell.skill == 'HealingMagic' then
		equip(sets.precast.Cure)
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
	end
end

function buff_change(buff_name,gain)
end
