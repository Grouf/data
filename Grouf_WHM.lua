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

	sets.precast.Rest = set_combine(sets.precast.Idle,{main="Chatoyant Staff",sub="Mephitis Grip"})
	
	sets.precast.FastCast = {main="Lehbrailg +2",sub="Arbuda Grip",head="Nahtirah Hat",
		left_ear="Loquac. Earring",body="Anhur Robe",
		hands="Gendewitha Gages",right_ring="Prolix Ring",back="Swith Cape",
		waist="Witful Belt",legs="Orvail Pants +1",feet="Piety Duckbills"} -- ??% Fast Cast
	
	sets.midcast = {}
	sets.midcast.Cure= {main="Tamaxchi",sub="Genbu's Shield",ammo="Oreiad's Tathlum",head="Theophany Cap",
		neck="Morgana's Choker",left_ear="Loquac. Earring",right_ear="Lifestorm Earring",body="Gendewitha Bliaut",
		hands="Theophany Mitts",left_ring="Sirona's Ring",right_ring="Solemn Ring",back="Pahtli Cape",
		waist="Cleric's Belt",legs="Orsn. Pantaln. +2",feet="Gende. Galoshes"}
 
	sets.midcast.Enfeeble= {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabanax Hat",
		neck="Morgana's Choker",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Theo. Briault",
		hands="Gendewitha Gages",left_ring="Sangoma Ring",right_ring="Irrwisch Ring",back="Refraction Cape",
		waist="Aswang Sash",legs="Orvail Pants +1",feet="Piety Duckbills"}

	sets.midcast.DRKMagic= {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabanax Hat",
		neck="Stoicheion Medal",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Gendewitha Bliaut",
		hands="Gendewitha Gages",left_ring="Sangoma Ring",right_ring="Acumen Ring",back="Refraction Cape",
		waist="Witch Sash",legs="Gendewitha Spats",feet="Gende. Galoshes"}
	
	sets.midcast.Enhancing = {main="Lehbrailg +2",sub="Fulcio Grip",ammo="Oreiad's Tathlum",
		neck="Stone Gorget",left_ear="Loquac. Earring",right_ear="Lifestorm Earring",body="Anhur Robe",
		hands="Augur's Gloves",left_ring="Prolix Ring",back="Swith Cape",
		waist="Siegel Sash",legs="Shedir Seraweels",feet="Orsn. Duckbills +2"}
		
	sets.midcast["Protectra V"] = set_combine(sets.precast.Enhancing,{feet="Piety Duckbills"})
	
	sets.midcast.NA = set_combine(sets.precast.Enhancing,{body="Orison Bliaud +2",
		hands="Theophany Mitts",back="Mending Cape",
		legs="Theo. Pantaloons",feet="Gende. Galoshes"})
		
	sets.midcast.Regen = set_combine(sets.precast.Enhancing,{body="Cleric's Briault", hands="Orison Mitts +2",
		legs="Theo. Pantaloons"})
	
	sets.midcast.Auspice = set_combine(sets.precast.Enhancing,{feet="Orsn. Duckbills +2"})
	
	sets.midcast.Divine= {main="Lehbrailg +2",sub="Elder's Grip",ammo="Witchstone",head="Kaabanax Hat",
		neck="Stoicheion Medal",left_ear="Hecate's Earring",right_ear="Friomisi Earring",body="Gendewitha Bliaut",
		hands="Otomi Gloves",left_ring="Sangoma Ring",right_ring="Strendu Ring",back="Refraction Cape",
		waist="Witch Sash",legs="Gendewitha Spats",feet="Gende. Galoshes"}
			
	sets.midcast.Repose = set_combine(sets.precast.Divine,{sub="Mephitis Grip",ammo="Kalboron Stone",head="Orison Cap +2",
		left_ear="Psystorm Earring",right_ear="Lifestorm Earring",hands="Gendewitha Gages"})
	
	sets.TP = {}
	
	sets.TP.Engage = {main="Tamaxchi",sub="Genbu's Shield",ammo="Oreiad's Tathlum",head="Gende. Caubeen",
		neck="Tjukurrpa Medal",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Gendewitha Bliaut",
		hands="Gendewitha Gages",left_ring="Rajas Ring",right_ring="Cho'j Band",back="Buquwik Cape",
		waist="Windbuffet Belt",legs="Gendewitha Spats",feet="Gende. Galoshes"}
		
	sets.TP.WS = {main="Tamaxchi",sub="Genbu's Shield",ammo="Oreiad's Tathlum",head="Gende. Caubeen",
		neck="Tjukurrpa Medal",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Gendewitha Bliaut",
		hands="Gendewitha Gages",left_ring="Rajas Ring",right_ring="Cho'j Band",back="Buquwik Cape",
		waist="Windbuffet Belt",legs="Gendewitha Spats",feet="Gende. Galoshes"}
	
	--[[
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = sets.TP.DD
	]]
	send_command('input /macro book 3;wait .1;input /macro set 1')
	
end

function precast(spell)
	--windower.add_to_chat(14, 'Precast: spell type= ' ..spell.type)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
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
	if spell.prefix=="/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	end
	]]
end

function midcast(spell)
	if spell.prefix == '/jobability' or spell.type == 'WeaponSkill' then
	--midcast doesn't exist for JA or WS so cancel the processing of this function
		--windower.add_to_chat(14, 'JobAbility or WeaponSkill; Midcast cancelled')
		return
	end
	
	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])

	elseif spell.skill == 'Healing Magic' then
		if string.find(spell.english, 'na') then
			equip(sets.midcast.NA)
			windower.add_to_chat(14, 'NA spell detected: ' ..spell.english)
		else
			equip(sets.midcast.Cure)
		end

	elseif spell.skill == 'Enhancing Magic' then
		if string.find(spell.english, 'Regen') then
			equip(sets.midcast.Regen)
		else
			equip(sets.midcast.Enhancing)
		end
		
	elseif spell.skill == 'Divine Magic' then
		equip(sets.midcast.Divine)
		
	elseif spell.skill == 'Dark Magic' then
		equip(sets.midcast.DarkMagic)

	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast.Enfeeble)
		
	elseif spell.type=="WeaponSkill" then
		equip(sets.TP.WS)
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
	end
end

function buff_change(buff_name,gain)
end
