--[[
		===========================
		|   B L A C K   M A G E   |
		===========================
]]

include('Obi_Check')

function get_sets()
	sets.precast = {}

	sets.precast.FastCast = {main="Marin Staff +1",sub="Mephitis Grip",
		head="Nahtirah Hat", left_ear="Loquac. Earring", right_ear="Etiolation Earring", 
		body="Anhur Robe",hands="Helios Gloves", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Swith Cape",waist="Witful Belt", legs="Artsieq Hose", feet="Helios Boots"}
		-- 44% Fast Cast

	sets.precast.Idle = {main="Marin Staff +1",sub="Mephitis Grip", ammo="Ghastly Tathlum",
		neck="Twilight Torque", left_ear="Crematio Earring", right_ear="Etiolation Earring",
		body="Respite Cloak", hands="Serpentes Cuffs", left_ring="Acumen Ring", right_ring="Strendu ring",
		back="Mecisto. Mantle", waist="Fucho-no-Obi", legs="Assid. Pants +1", feet="Serpentes Sabots"}

	sets.precast.Rest = sets.precast.Idle

	sets.midcast = {}
	sets.midcast.Cure = {main="Marin Staff +1",sub="Mephitis Grip", ammo="Oreiad's Tathlum",
		head="Helios Band", neck="Imbodla Necklace", left_ear="Loquac. Earring", right_ear="Lifestorm Earring",
		body="Helios Jacket", hands="Telchine Gloves", left_ring="Sirona's Ring", right_ring="Solemn Ring",
		back="Pahtli Cape", waist="Rumination Sash", legs="Nares Trews",feet="Umbani Boots"}

	sets.midcast.Enfeeble = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Kalboron Stone",
		head="Befouled Crown", neck="Imbodla Necklace", left_ear="Psystorm Earring", right_ear="Lifestorm Earring",
		body="Helios Jacket", hands="Lurid Mitts", left_ring="Globidonta Ring", right_ring="Sangoma Ring",
		back="Refraction Cape", waist="Rumination Sash", legs="Mes'yohi Slacks", feet="Hagondes Sabots"}
			--M.Acc: 149
			--Enfeebling: 450
			--MND: 267
			--INT: 270

	sets.midcast.Enhancing = {main="Marin Staff +1",
		head="Befouled Crown", neck="Colossus's Torque", left_ear="Loquac. Earring", right_ear="Andoaa Earring",
		body="Telchine Chas.", hands="Augur's Gloves",
		back="Swith Cape", waist="Olympus Sash", legs="Shedir Seraweels", feet="Helios Boots"}

	sets.midcast.ElementalMagic = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Ghastly Tathlum",
		head="Helios Band", neck="Eddy Necklace", left_ear="Crematio Earring", right_ear="Friomisi Earring",
		body="Count's Garb", hands="Helios Gloves", left_ring="Acumen Ring", right_ring="Strendu ring",
		back="Toro Cape", waist="Yamabuki-no-Obi", legs="Hagondes Pants +1", feet="Helios Boots"}

	sets.midcast.DarkMagic = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Kalboron Stone",
		head="Kaabnax Hat",	neck="Eddy Necklace", left_ear="Psystorm Earring", right_ear="Lifestorm Earring",
		body="Helios Jacket", hands="Lurid Mitts", left_ring="Acumen Ring", right_ring="Sangoma Ring",
		back="Bane Cape", waist="Famine Sash", legs="Mes'yohi Slacks", feet="Hagondes Sabots"}

	sets.TP = {}
	sets.TP.Engage = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Ghastly Tathlum",
		head="Helios Band",	neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
		body="Helios Jacket", hands="Helios Gloves", left_ring="Rajas Ring", right_ring="Cho'j Band",
		back="Buquwik Cape", waist="Windbuffet Belt", legs="Hagondes Pants +1", feet="Helios Boots"}

	sets.WS = {head="Helios Band",
		neck="Fotia Gorget", left_ear="Moonshade Earring", right_ear="Bladeborn Earring",
		body="Helios Jacket", hands="Helios Gloves", left_ring="Rajas Ring", right_ring="Cho'j Band",
		back="Buquwik Cape", waist="Prosilio Belt +1", legs="Hagondes Pants +1", feet="Helios Boots"}

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 4;wait .1;input /macro set 1')

	sets.dontforget = {head="Striga Crown", left_ring="Excelsis Ring", legs="Doyen Pants", feet="Spaekona's Sabots"}
	sets.doneforget2 = {head="Umuthi Hat"}

end

function precast(spell)
	--windower.add_to_chat(14, 'Precast: spell type= ' ..spell.type)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		--windower.add_to_chat(14, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)
		if spell.skill == 'Elemental Magic' then
			equip({feet="Spaekona's Sabots"})
		elseif spell.english == 'Stoneskin' then
			equip({head="Umuthi Hat", legs="Doyen Pants"})
		elseif spell.english:startswith('Cur') then
			equip({legs="Doyen Pants"})
		end

	elseif spell.type == "WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS)
		end
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end
	end
	--[[
	if spell.prefix == "/jobability" then
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
	elseif spell.skill == 'Enhancing Magic' then
		equip(sets.midcast.Enhancing)
		if spell.english == 'Stoneskin' then
			equip({waist="Siegel Sash", neck="Stone Gorget"})
		end
	elseif spell.skill == 'Elemental Magic' then
		equip(sets.midcast.ElementalMagic)
		if spell.element == 'Earth' then
			equip({neck="Quanpur Necklace"})
		end
		if spell.element == 'Ice' then
			equip({main="Ngqoqwanb"})
		end
		obi_check(spell.element)
	elseif spell.skill == 'Dark Magic' then
		equip(sets.midcast.DarkMagic)
		if spell.english:startswith('Aspir') or spell.english == 'Drain' then
			equip({head="Striga Crown", left_ring="Excelsis Ring", waist="Fucho-no-Obi"})
		end
		obi_check(spell.element)
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast.Enfeeble)
	elseif spell.skill == 'Healing Magic' then
		equip(sets.midcast.Cure)
		if spell.english:startswith('Cur') then
			obi_check(spell.element)
		end
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
		--send_command('@wait 0.5; gs disable main sub range;')
	end
	--[[if old == 'Engaged' then
		send_command('@wait 0.5; gs enable main sub range;')
	end]]
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

--[[function buff_change(buff_name,gain)
end]]
