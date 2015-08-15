--[[
		=========================
		|   G E O M A N C E R   |
		=========================
]]

include('Obi_Check')

function get_sets()
	sets.precast = {}

	sets.precast.FastCast = {main="Marin Staff +1",sub="Mephitis Grip",head="Nahtirah Hat",
		body="Anhur Robe", left_ear="Loquac. Earring", right_ear="Etiolation Earring",
		hands="Geo. Mitaines +1", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Lifestream Cape", waist="Witful Belt",legs="Geomancy Pants",feet="Helios Boots"}  --Fast Cast = 47%

	sets.precast.IdleRefresh = {main="Bolelabunga",sub="Genbu's Shield",range="Dunna",
		neck="Twilight Torque", left_ear="Psystorm Earring", right_ear="Etiolation Earring",
		body="Respite Cloak", hands="Bagua Mitaines", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Mecisto. Mantle",	waist="Fucho-no-Obi", legs="Assid. Pants +1", feet="Geomancy Sandals"}
	--Repulse Mantle
	--Mecisto. Mantle
	sets.precast.IdleLuopan = {main="Bolelabunga", sub="Genbu's Shield", range="Dunna",
		head="Azimuth Hood +1", neck="Twilight Torque", left_ear="Psystorm Earring", right_ear="Etiolation Earring",
		body="Azimuth Coat", hands="Geo. Mitaines +1", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Mecisto. Mantle",	waist="Fucho-no-Obi", legs="Assid. Pants +1", feet="Bagua Sandals"}
	--Lifestream Cape

	sets.precast.Idle = sets.precast.IdleRefresh

	--sets.precast.Rest = {main="Chatoyant Staff"}

--Job Ability--
	sets.JA = {}
	sets.JA['Collimated Fervor'] = {head="Bagua Galero"}
	sets.JA.Bolster = {body="Bagua Tunic"}
	sets.JA['Full Circle'] = {head="Azimuth Hood +1"}
	sets.JA['Mending Halation'] = {legs="Bagua Pants"}
	sets.JA['Radial Arcana'] = {feet="Bagua Sandals"}
	sets.JA['Life Cycle'] = {body="Geomancy Tunic"}

--Midcast
	sets.midcast = {}

	sets.midcast.Cure = {main="Tamaxchi",sub="Genbu's Shield",ammo="Oreiad's Tathlum",head="Kaabnax Hat",
		neck="Imbodla Necklace",left_ear="Mendi. Earring",right_ear="Lifestorm Earring",body="Geomancy Tunic",
		hands="Telchine Gloves",left_ring="Sirona's Ring",right_ring="Solemn Ring",back="Pahtli Cape",
		waist="Rumination Sash",legs="Nares Trews",feet="Umbani Boots"} --MND=96+151, Cure Pot.=43%

	sets.midcast.Enfeeble = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabnax Hat",
		neck="Imbodla Necklace",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Helios Jacket",
		hands="Lurid Mitts",left_ring="Globidonta Ring",right_ring="Sangoma Ring",back="Refraction Cape",
		waist="Famine Sash",legs="Mes'yohi Slacks",feet="Hagondes Sabots"}

	sets.midcast.Geomancy = {main="Staccato Staff",sub="Mephitis Grip" ,range="Dunna",
		head="Azimuth Hood +1", neck="Deviant Necklace", right_ear="Gwati Earring", left_ear="Mendi. Earring",
		body="Bagua Tunic", hands="Geo. Mitaines +1",
		back="Lifestream Cape",	waist="Sekhmet Corset", legs="Bagua Pants", feet="Azimuth Gaiters"}
			--Geomancy Skill:	394+53 = 447
			--Handbell Skill:	389+18 = 407
			--Total:			854
			--Conserve MP:		11

	--Enhancing needs work
	sets.midcast.Enhancing = {body="Telchine Chas.", head="Befouled Crown", neck="Colossus's Torque",
		hands="Augur's Gloves", left_ear="Loquac. Earring", right_ear="Andoaa Earring",
		waist="Olympus Sash",legs="Shedir Seraweels",feet="Geomancy Sandals"}

	sets.midcast.ElementalMagic = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Ghastly Tathlum",head="Helios Band",
		neck="Eddy Necklace",left_ear="Crematio Earring",right_ear="Friomisi Earring",body="Count's Garb",
		hands="Helios Gloves",left_ring="Acumen Ring",right_ring="Strendu ring",back="Toro Cape",
		waist="Yamabuki-no-Obi",legs="Hagondes Pants +1",feet="Helios Boots"}

	sets.midcast.DarkMagic = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Kalboron Stone",head="Bagua Galero",
		neck="Eddy Necklace",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Helios Jacket",
		hands="Lurid Mitts",left_ring="Acumen Ring",right_ring="Sangoma Ring",back="Refraction Cape",
		waist="Yamabuki-no-Obi",legs="Azimuth Tights",feet="Hagondes Sabots"}

	sets.TP = {
		head="Nahtirah Hat", neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
		body="Helios Jacket", hands="Geo. Mitaines +1", left_ring="Beeline Ring", right_ring="Rajas Ring",
		back="Buquwik Cape", waist="Windbuffet Belt", legs="Mes'yohi Slacks", feet="Helios Boots"}

    sets.WS = set_combine(sets.TP, {neck="Fotia Gorget", left_ear="Moonshade Earring", right_ring="Cho'j Band",
		waist="Prosilio Belt +1"})

    sets.DontForget = {head="Umuthi Hat", body="Telchine Chas.", neck="Quanpur Necklace", left_ear="Reraise Earring",
		left_ring="Excelsis Ring", legs="Doyen Pants"}


	send_command('input /macro book 20;wait .1;input /macro set 1')

end

function precast(spell)
	--windower.add_to_chat(14, 'Precast: spell type= ' ..spell.type)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		--windower.add_to_chat(14, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)
		if spell.english == 'Stoneskin' then
			equip({head="Umuthi Hat", legs="Doyen Pants"})
		elseif spell.english:startswith('Cur') then
			equip({legs="Doyen Pants"})
		end
		if spell.skill == 'Elemental Magic' then
			equip({hands="Bagua Mitaines"})
		end

	elseif spell.type=="WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS)
		end
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end

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
			equip(sets.midcast.Enhancing)
		if spell.english == 'Stoneskin' then
			equip({waist="Siegel Sash", neck="Stone Gorget"})
		elseif spell.english:startswith('Regen') then
			equip({main="Bolelabunga", body="Telchine Chas."})
		end
	elseif spell.skill == 'Elemental Magic' then
		equip(sets.midcast.ElementalMagic)
		if spell.element == 'Earth' then
			equip({neck="Quanpur Necklace"})
		end
		obi_check(spell.element)
	elseif spell.skill == 'Dark Magic' then
		equip(sets.midcast.DarkMagic)
		if spell.english:startswith('Aspir') or spell.english == 'Drain' then
			equip({left_ring="Excelsis Ring", waist="Fucho-no-Obi"})
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
	if player.status == 'Idle' then
		equip(sets.precast.Idle)
	--elseif player.status == 'Resting' then
		--equip(sets.precast.Rest)
	elseif player.status == 'Engaged' then
		equip(sets.TP)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
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
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function pet_status_change(new,old)
	--windower.add_to_chat(14, 'Pet_Status_Change: ' ..new.. ' / ' ..old)
	--luapan sits in 'Idle' status
	--on death status is 'Engaged dead'
end

function status_change(new,old)
--add_to_chat(9, 'Status change: new=' ..new.. ', old=' ..old)
	if new == 'Idle' then
		equip(sets.precast.Idle)
	elseif new == 'Resting' then
		equip(sets.precast.Rest)
	elseif new == 'Engaged' then
		equip(sets.TP)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function buff_change(buff_name,gain) --gain = True if gained, False if lost
	--windower.add_to_chat(9, 'Buff_Change: ' ..buff_name.. ' gain? ' ..tostring(gain))
	--windower.add_to_chat(9, 'print_set(buffactive)')
	--print_set(buffactive)

	if buff_name=='Collimated Fervor' then
		if gain then
			equip(sets.JA['Collimated Fervor'])
			send_command('@wait 0.5; gs disable head;')
			send_command('@input /echo Collimated Fervor ON, head disabled')
		else
			enable("head")
			send_command('@input /echo Collimated Fervor off, head enabled')
		end
	--elseif buff_name=='Bolster' then
		--if gain then
			--equip(sets.JA.Bolster)
			--send_command('@wait 0.5; gs disable body;')
			--send_command('@input /echo Bolster ON, body disabled')
		--else
			--enable("body")
			--send_command('@input /echo Bolster off, body enabled')
		--end
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

--[[function indi_change(indi, gain)
	--Useless as it does not (yet?) pass indi name

	windower.add_to_chat(9, 'indi_change: gain=' ..tostring(gain).. ', indi.target=' ..indi.target..
		', indi.element=' ..indi.element.. ', indi.element_id=' ..indi.element_id..
		', indi.size=' ..indi.size) --can also use player.indi.xxx

	--windower.add_to_chat(9, 'print_set(indi):')
	--print_set(indi)

end]]

function self_command(command)
	--if command == 'Potency' then
		--SetMode_Index = 1
		--windower.add_to_chat(9, 'SetMode now set to:' ..SetMode_Names[SetMode_Index] )
	--elseif command == 'Accuracy' then
		--SetMode_Index = 2
		--windower.add_to_chat(9, 'SetMode now set to:' ..SetMode_Names[SetMode_Index] )
	if command == 'Melee' then
		disable("main", "sub", "range", "ammo")
		MeleeLock = 'True'
		windower.add_to_chat(9, 'MeleeLock = ' ..MeleeLock)
	elseif command == 'Magic' then
		enable("main", "sub", "range", "ammo")
		MeleeLock = 'False'
		windower.add_to_chat(9, 'MeleeLock = ' ..MeleeLock)
	end
end
