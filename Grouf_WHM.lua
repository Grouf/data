--[[
		 =========================
		|   W H I T E   M A G E   | 
		 =========================
]]

function get_sets()
	sets.precast = {}
	
	sets.precast.Idle= {main="Tamaxchi",sub="Genbu's Shield",ammo="Oreiad's Tathlum",head="Gende. Caubeen",
		neck="Morgana's Choker",left_ear="Loquac. Earring",right_ear="Lifestorm Earring",body="Gendewitha Bliaut",
		hands="Serpentes Cuffs",left_ring="Sirona's Ring",right_ring="Solemn Ring",back="Pahtli Cape",
		waist="Cleric's Belt",legs="Nares Trews",feet="Serpentes Sabots"}

	sets.precast.Rest = set_combine(sets.precast.Idle,{main="Chatoyant Staff"})

	sets.precast.Cure= {main="Tamaxchi",sub="Genbu's Shield",ammo="Oreiad's Tathlum",head="Theophany Cap",
		neck="Morgana's Choker",left_ear="Loquac. Earring",right_ear="Lifestorm Earring",body="Gendewitha Bliaut",
		hands="Theophany Mitts",left_ring="Sirona's Ring",right_ring="Solemn Ring",back="Pahtli Cape",
		waist="Cleric's Belt",legs="Orsn. Pantaln. +2",feet="Gende. Galoshes"}
 
	sets.precast.Enfeeble= {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabanax Hat",
		neck="Morgana's Choker",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Theo. Briault",
		hands="Gendewitha Gages",left_ring="Omega Ring",right_ring="Solemn Ring",back="Refraction Cape",
		waist="Aswang Sash",legs="Orvail Pants +1",feet="Uk'uxkaj Boots"}

	sets.precast.DRKMagic= {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabanax Hat",
		neck="Stoicheion Medal",left_ear="Lifestorm Earring",right_ear="Psystorm Earring",body="Gendewitha Bliaut",
		hands="Gendewitha Gages",left_ring="Omega Ring",right_ring="Solemn Ring",back="Refraction Cape",
		waist="Witch Sash",legs="Gendewitha Spats",feet="Gende. Galoshes"}
	
	sets.precast.Enhancing = {ammo="Oreiad's Tathlum",head="Kaabanax Hat",
		neck="Morgana's Choker",left_ear="Loquac. Earring",right_ear="Lifestorm Earring",body="Anhur Robe",
		hands="Augur's Gloves",left_ring="Prolix Ring",back="Swith Cape",
		waist="Witful Belt",legs="Shedir Seraweels",feet="Orsn. Duckbills +2"}
		
	sets.precast.Stoneskin = set_combine(sets.precast.Enhancing,{neck="Stone Gorget",waist="Siegel Sash"})
	
	sets.precast["Protectra V"] = set_combine(sets.precast.Enhancing,{feet="Clr. Duckbills +2"})
	
	sets.precast.NA = set_combine(sets.precast.Enhancing,{body="Orison Bliaud +2",hands="Theophany Mitts",
		back="Mending Cape",legs="Theo. Pantaloons",feet="Gende. Galoshes"})
		
	sets.precast.Regen = set_combine(sets.precast.Enhancing,{body="Cleric's Briault", hands="Orison Mitts +2",
		legs="Theo. Pantaloons"})
	
	sets.precast.Divine= {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Witchstone",head="Kaabanax Hat",
		neck="Stoicheion Medal",left_ear="Hecate's Earring",right_ear="Strophadic Earring",body="Gendewitha Bliaut",
		hands="Otomi Gloves",left_ring="Omega Ring",right_ring="Strendu Ring",back="Refraction Cape",
		waist="Witch Sash",legs="Gendewitha Spats",feet="Gende. Galoshes"}
			
	sets.precast.Repose = set_combine(sets.precast.Divine,{ammo="Hedgehog Bomb",head="Orison Cap +2",
		left_ear="Lifestorm Earring",right_ear="Psystorm Earring",hands="Gendewitha Gages"})
	
	sets.TP = {}
	sets.TP.Engage = {main="Tamaxchi",sub="Genbu's Shield",ammo="Oreiad's Tathlum",head="Gende. Caubeen",
		neck="Tjukurrpa Medal",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Gendewitha Bliaut",
		hands="Gendewitha Gages",left_ring="Rajas Ring",right_ring="Spiral Ring",back="Buquwik Cape",
		waist="Windbuffet Belt",legs="Gendewitha Spats",feet="Gende. Galoshes"}
		
	sets.TP.WS = {main="Tamaxchi",sub="Genbu's Shield",ammo="Oreiad's Tathlum",head="Gende. Caubeen",
		neck="Tjukurrpa Medal",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Gendewitha Bliaut",
		hands="Gendewitha Gages",left_ring="Rajas Ring",right_ring="Spiral Ring",back="Buquwik Cape",
		waist="Windbuffet Belt",legs="Gendewitha Spats",feet="Gende. Galoshes"}
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 3;wait .1;input /macro set 1')
	
end

function precast(spell)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])

	elseif spell.skill == 'HealingMagic' then
		if string.find(spell.english, 'na') then
			equip(sets.precast.NA)
			windower.add_to_chat(14, 'NA spell detected: ' ..spell.english)
		else
			equip(sets.precast.Cure)
		end

	elseif spell.skill == 'EnhancingMagic' then
		if string.find(spell.english, 'Regen') then
			equip(sets.precast.Regen)
		else
			equip(sets.precast.Enhancing)
		end
		
	elseif spell.skill == 'DivineMagic' then
		equip(sets.precast.Divine)
		
	elseif spell.skill == 'DarkMagic' then
		equip(sets.precast.DarkMagic)

	elseif spell.skill == 'EnfeeblingMagic' then
		equip(sets.precast.Enfeeble)
		
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
