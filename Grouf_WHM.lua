--[[
		===========================
		|   W H I T E   M A G E   |
		===========================
]]

include('Obi_Check')

function get_sets()
	
	FastCastOnlySpells = S{'Warp', 'Warp II','Escape','Tractor',
		'Raise', 'Raise II', 'Raise III', 'Arise', 
		'Reraise', 'Reraise II', 'Reraise III', 'Reraise IV',
		'Teleport-Dem', 'Teleport-Mea', 'Teleport-Holla', 'Teleport-Altep', 'Teleport-Yhoat', 'Teleport-Vahzl',
		'Recall-Pashh', 'Recall-Jugner', 'Recall-Meriph'
		}
	
	sets.JA = {}
	sets.JA.Benediction = {body="Piety Briault"}
	sets.JA.Devotion = {head="Piety Cap"}
	sets.JA['Divine Caress'] = {hands="Orison Mitts +2"}
	sets.JA['Afflatus Solace'] = {body="Orison Bliaud +2"}

	sets.precast = {}

	sets.precast.Idle= {main="Bolelabunga",sub="Genmei Shield",ammo="Oreiad's Tathlum",
		neck="Morgana's Choker",left_ear="Loquac. Earring",right_ear="Lifestorm Earring",body="Respite Cloak",
		hands="Serpentes Cuffs",left_ring="Sirona's Ring",right_ring="Solemn Ring",back="Pahtli Cape",
		waist="Cleric's Belt",legs="Assid. Pants +1",feet="Serpentes Sabots"}

	sets.precast.Rest = set_combine(sets.precast.Idle,{main="Chatoyant Staff",sub="Mephitis Grip"})

	sets.precast.FastCast = {main="Oranyan",sub="Mephitis Grip",head="Nahtirah Hat",
		left_ear="Loquac. Earring",body="Anhur Robe",
		hands="Gende. Gages +1", left_ring="Weather. Ring", right_ring="Prolix Ring",back="Swith Cape",
		waist="Witful Belt",legs="Artsieq Hose",feet="Piety Duckbills"} -- 44% Fast Cast

	sets.midcast = {}
	sets.midcast.Cure = {main="Serenity", sub="Enki Strap", ammo="Oreiad's Tathlum", head="Theophany Cap",
		neck="Imbodla Necklace", left_ear="Loquac. Earring", right_ear="Lifestorm Earring", body="Gende. Bilaut +1",
		hands="Theophany Mitts", left_ring="Sirona's Ring", right_ring="Solemn Ring", back="Mending Cape",
		waist="Cleric's Belt", legs="Orsn. Pantaln. +2", feet="Piety Duckbills"} --Cure Potency 52%

	sets.midcast.CureMulti = {main="Serenity", sub="Enki Strap", ammo="Oreiad's Tathlum", head="Theophany Cap",
		neck="Imbodla Necklace", left_ear="Loquac. Earring", right_ear="Lifestorm Earring", body="Gende. Bilaut +1",
		hands="Theophany Mitts", left_ring="Sirona's Ring", right_ring="Solemn Ring", back="Pahtli Cape",
		waist="Cleric's Belt", legs="Orsn. Pantaln. +2", feet="Piety Duckbills"} --Cure Potency 52%

--[[	Cure Formula:
		Single Target:		MND/2	+	VIT/4	+	Healing Magic
		Multi Target:		MNDx3	+	VIT		+	Healing Magic/5
]]--

	sets.midcast.NA = set_combine(sets.precast.Cure,{body="Orison Bliaud +2",
		hands="Theophany Mitts",back="Mending Cape",
		legs="Theo. Pantaloons",feet="Gende. Galoshes"})

	sets.midcast.Enfeeble= {main="Oranyan",sub="Mephitis Grip",ammo="Elis Tome",head="Kaabnax Hat",
		neck="Imbodla Necklace",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Theo. Briault",
		hands="Gende. Gages +1",left_ring="Globidonta Ring",right_ring="Sangoma Ring",back="Refraction Cape",
		waist="Yamabuki-no-Obi",legs="Psycloth Lappas",feet="Piety Duckbills"} --check medium's sabots

	sets.midcast.DRKMagic= {main="Oranyan",sub="Mephitis Grip",ammo="Elis Tome",head="Buremte Hat",
		neck="Eddy Necklace",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Gende. Bilaut +1",
		hands="Gende. Gages +1",left_ring="Acumen Ring",right_ring="Sangoma Ring",back="Refraction Cape",
		waist="Yamabuki-no-Obi",legs="Gendewitha Spats",feet="Gende. Galoshes"}

	sets.midcast.Enhancing = {main="Oranyan",sub="Mephitis Grip",ammo="Oreiad's Tathlum",
		head="Befouled Crown", neck="Colossus's Torque", left_ear="Loquac. Earring", right_ear="Lifestorm Earring",
		body="Telchine Chas.", hands="Augur's Gloves", left_ring="Prolix Ring",
		back="Mending Cape", waist="Olympus Sash", legs="Shedir Seraweels", feet="Orsn. Duckbills +2"}

	sets.midcast["Protectra V"] = set_combine(sets.precast.Enhancing,{feet="Piety Duckbills"})
	sets.midcast["Shellra V"] = set_combine(sets.precast.Enhancing,{legs="Piety Pantaloons"})

	sets.midcast.Regen = set_combine(sets.precast.Enhancing,{main="Bolelabunga", body="Piety Briault",
		hands="Orison Mitts +2", legs="Theo. Pantaloons"})

	sets.midcast.Auspice = set_combine(sets.precast.Enhancing,{feet="Orsn. Duckbills +2"})

	sets.midcast.Divine= {main="Oranyan",sub="Mephitis Grip", ammo="Witchstone", head="Buremte Hat",
		neck="Eddy Necklace", left_ear="Crematio Earring", right_ear="Friomisi Earring",body="Gende. Bilaut +1",
		hands="Gende. Gages +1", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Refraction Cape", waist="Yamabuki-no-Obi", legs="Gendewitha Spats", feet="Umbani Boots"}

	sets.midcast.Repose = set_combine(sets.precast.Divine,{sub="Mephitis Grip",ammo="Elis Tome",head="Orison Cap +2",
		left_ear="Psystorm Earring",right_ear="Lifestorm Earring",hands="Gende. Gages +1", back="Mending Cape"})

	sets.TP = {}

	sets.TP.Engage = {main="Tamaxchi",sub="Genmei Shield",ammo="Oreiad's Tathlum",head="Gende. Caubeen",
		neck="Asperity Necklace",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Gende. Bilaut +1",
		hands="Gende. Gages +1",left_ring="Rajas Ring",right_ring="Cho'j Band",back="Buquwik Cape",
		waist="Windbuffet Belt",legs="Gendewitha Spats",feet="Gende. Galoshes"}

	sets.TP.WS = {main="Tamaxchi",sub="Genmei Shield",ammo="Oreiad's Tathlum",head="Gende. Caubeen",
		neck="Asperity Necklace",left_ear="Moonshade Earring",right_ear="Bladeborn Earring",body="Gende. Bilaut +1",
		hands="Gende. Gages +1",left_ring="Rajas Ring",right_ring="Cho'j Band",back="Buquwik Cape",
		waist="Windbuffet Belt",legs="Gendewitha Spats",feet="Gende. Galoshes"}
	
	sets.dontforget = {head="Umuthi Hat", neck="Nodens Gorget", legs="Doyen Pants"}
	
	--[[
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = sets.TP.DD
	]]
	send_command('input /macro book 3;wait .1;input /macro set 1')

end

function precast(spell)
	--add_to_chat(9, 'Precast: spell type= ' ..spell.type)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		--add_to_chat(9, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)
		if spell.english == 'Stoneskin' then
			equip({head="Umuthi Hat", legs="Doyen Pants"})
		elseif spell.english:startswith('Cur') then
			equip({legs="Doyen Pants"})
		end

	elseif spell.type=='WeaponSkill' then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.TP.WS)
		end
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end

	elseif spell.prefix=='/jobability' then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	end
end

function midcast(spell)
	if spell.prefix == '/jobability' or spell.type == 'WeaponSkill' then
	--midcast doesn't exist for JA or WS so cancel the processing of this function
		--add_to_chat(9, 'JobAbility or WeaponSkill; Midcast cancelled')
		return
	end
	if FastCastOnlySpells:contains(spell.english) then
		--add_to_chat(9, 'Fast cast spell found in FastCast List')
		return --skip midcast if the spell is in the FastCastOnlySpells list at the top
	end

	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])

	elseif spell.skill == 'Healing Magic' then
		if string.find(spell.english, 'na') then
			equip(sets.midcast.NA)
			--add_to_chat(9, 'NA spell detected: ' ..spell.english)
		elseif spell.english:startswith('Cure') then
			equip(sets.midcast.Cure)
			add_to_chat(9, 'Single Target Cure: ' ..spell.english)
		elseif spell.english:startswith('Cura') then
			equip(sets.midcast.CureMulti)
			add_to_chat(9, 'Multi Target Cure: ' ..spell.english)
		end
		if spell.english:startswith('Cur') then
			obi_check(spell.element)
		end

	elseif spell.skill == 'Enhancing Magic' then
		if string.find(spell.english, 'Regen') then
			equip(sets.midcast.Regen)
		else
			equip(sets.midcast.Enhancing)
		end
		if spell.english == 'Stoneskin' then
			equip({waist="Siegel Sash", neck="Nodens Gorget"})
		elseif spell.english == 'Refresh' then
			equip({feet="Inspirited Boots"})
		end

	elseif spell.skill == 'Divine Magic' then
		equip(sets.midcast.Divine)
		if spell.english ~= 'Repose' then
			obi_check(spell.element)
		end

	elseif spell.skill == 'Dark Magic' then
		equip(sets.midcast.DarkMagic)
		obi_check(spell.element)

	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast.Enfeeble)
	end
end

function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.TP.Engage)
	else
		equip(sets.precast.Idle)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
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
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function buff_change(buff_name,gain)
	if buff_name == 'Divine Caress' then
		if gain then
			equip(sets.JA[buff_name])
			disable('hands')
		else
			enable('hands')
		end
	end
end
