--[[
		===========================
		|   B L A C K   M A G E   |
		===========================
]]

--Lathi

include('Obi_Check')

function get_sets()
	sets.precast = {}

	sets.precast.FastCast = {main="Oranyan",sub="Mephitis Grip",
		head="Nahtirah Hat", left_ear="Loquac. Earring", right_ear="Etiolation Earring",
		body="Anhur Robe",hands="Volte Gloves", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Perimede Cape",waist="Witful Belt", legs="Artsieq Hose", feet="Volte Gaiters"}
		-- 44% Fast Cast

	sets.precast.Idle = {main="Oranyan",sub="Mephitis Grip", ammo="Ghastly Tathlum",
		head="Jhakri Coronal +2", neck="Loricate Torque +1", left_ear="Crematio Earring", right_ear="Etiolation Earring",
		body="Jhakri Robe +2", hands="Volte Gloves", left_ring="Acumen Ring", right_ring="Strendu ring",
		back="Mecisto. Mantle", waist="Fucho-no-Obi", legs="Nares Trews", feet="Volte Gaiters"}

	sets.precast.Rest = sets.precast.Idle

	sets.midcast = {}
	sets.midcast.Cure = {main="Oranyan",sub="Mephitis Grip", ammo="Oreiad's Tathlum",
		head="Vanya Hood", neck="Nodens Gorget", left_ear="Mendi. Earring",right_ear="Lifestorm Earring",
		body="Jhakri Robe +2", hands="Telchine Gloves", left_ring="Stikini Ring",right_ring="Stikini Ring",
		back="Pahtli Cape", waist="Luminary Sash", legs="Nares Trews",feet="Vanya Clogs"}
			--need either Vanya Clogs or Medium's Sabots

	sets.midcast.Enfeeble = {main="Oranyan",sub="Mephitis Grip",ammo="Elis Tome",
		head="Befouled Crown", neck="Imbodla Necklace", left_ear="Psystorm Earring", right_ear="Lifestorm Earring",
		body="Jhakri Robe +2", hands="Lurid Mitts", left_ring="Stikini Ring",right_ring="Stikini Ring",
		back="Refraction Cape", waist="Luminary Sash", legs="Psycloth Lappas", feet="Medium's Sabots"}--check medium's sabots
			--M.Acc: 149
			--Enfeebling: 450
			--MND: 267
			--INT: 270

	sets.midcast.Enhancing = {main="Oranyan",
		head="Befouled Crown", neck="Colossus's Torque", left_ear="Loquac. Earring", right_ear="Andoaa Earring",
		body="Telchine Chas.", hands="Augur's Gloves",
		back="Swith Cape", waist="Olympus Sash", legs="Shedir Seraweels", feet="Inspirited Boots"}

	sets.midcast.ElementalMagic = {main="Oranyan", sub="Mephitis Grip", ammo="Ghastly Tathlum",
		head="Jhakri Coronal +2", neck="Eddy Necklace", left_ear="Crematio Earring", right_ear="Friomisi Earring",
		body="Count's Garb", hands="Jhakri Cuffs +2", left_ring="Acumen Ring", right_ring="Strendu ring",
		back="Toro Cape", waist="Yamabuki-no-Obi", legs="Merlinic Shalwar", feet="Jhakri Pigaches +2"}
			--Umbani Boots?

	sets.midcast.DarkMagic = {main="Oranyan",sub="Mephitis Grip",ammo="Pemphredo Tathlum",
		head="Arch. Petasos +1",	neck="Eddy Necklace", left_ear="Psystorm Earring", right_ear="Lifestorm Earring",
		body="Jhakri Robe +2", hands="Lurid Mitts", left_ring="Evanescence Ring",right_ring="Stikini Ring",
		back="Bane Cape", waist="Famine Sash", legs="Psycloth Lappas", feet="Medium's Sabots"}

		
	sets.TP = {} 
	--[[
	sets.TP.Engage = {main="Oranyan", sub="Mephitis Grip", ammo="Ghastly Tathlum",
		head="Jhakri Coronal +2",	neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
		body="Jhakri Robe +2", hands="Jhakri Cuffs +2", left_ring="Rajas Ring", right_ring="Cho'j Band",
		back="Buquwik Cape", waist="Windbuffet Belt", legs="Jhakri Slops +2", feet="Jhakri Pigaches +2"}

	sets.WS = {head="Jhakri Coronal +2",
		neck="Fotia Gorget", left_ear="Moonshade Earring", right_ear="Bladeborn Earring",
		body="Jhakri Robe +2", hands="Jhakri Cuffs +2", left_ring="Rajas Ring", right_ring="Cho'j Band",
		back="Buquwik Cape", waist="Prosilio Belt +1", legs="Jhakri Slops +2", feet="Jhakri Pigaches +2"}

		]]
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 4;wait .1;input /macro set 1')

	sets.dontforget = {head="Striga Crown", left_ring="Excelsis Ring", legs="Doyen Pants", feet="Spaekona's Sabots +1"}
	sets.doneforget2 = {head="Umuthi Hat"}

end

function precast(spell)
	--windower.add_to_chat(14, 'Precast: spell type= ' ..spell.type)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		--windower.add_to_chat(14, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)
		if spell.skill == 'Elemental Magic' then
			equip({feet="Spaekona's Sabots +1"})
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
			equip({waist="Siegel Sash", neck="Nodens Gorget"})
		end
	elseif spell.skill == 'Elemental Magic' then
		equip(sets.midcast.ElementalMagic)
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
