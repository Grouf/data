--[[
		=========================
		|   G E O M A N C E R   |
		=========================
]]

function get_sets()
	sets.precast = {}

	sets.precast.FastCast = {main="Lehbrailg +2",sub="Arbuda Grip",head="Nahtirah Hat",
		left_ear="Loquac. Earring",body="Anhur Robe",
		hands="Hagondes Cuffs",left_ring="Prolix Ring",back="Lifestream Cape",
		waist="Witful Belt",legs="Geomancy Pants",feet="Hag. Sabots +1"}  --Fast Cast = 47%

	sets.precast.IdleRefresh = {main="Bolelabunga",sub="Genbu's Shield",range="Dunna",head="Nahtirah Hat",
		neck="Twilight Torque",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat +1",
		hands="Bagua Mitaines",left_ring="Shadow Ring",right_ring="Dark Ring",back="Mecisto. Mantle",
		waist="Fucho-no-Obi",legs="Hagondes Pants +1",feet="Geomancy Sandals"}
	--Repulse Mantle
	--Mecisto. Mantle
	sets.precast.IdleLuopan = {main="Bolelabunga",sub="Genbu's Shield",range="Dunna",head="Nahtirah Hat",
		neck="Twilight Torque",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat +1",
		hands="Geomancy Mitaines",left_ring="Shadow Ring",right_ring="Dark Ring",back="Mecisto. Mantle",
		waist="Fucho-no-Obi",legs="Hagondes Pants +1",feet="Bagua Sandals"}
	--Lifestream Cape

	sets.precast.Idle = sets.precast.IdleRefresh

	sets.precast.Rest = {main="Chatoyant Staff"}

--Job Ability--
	sets.JA = {}
	sets.JA['Collimated Fervor'] = {head="Bagua Galero"}
	sets.JA.Bolster = {body="Bagua Tunic"}
	sets.JA['Full Circle'] = {hands="Bagua Mitaines"}
	sets.JA['Mending Halation'] = {legs="Bagua Pants"}
	sets.JA['Radial Arcana'] = {feet="Bagua Sandals"}
	sets.JA['Life Cycle'] = {body="Geomancy Tunic"}

--Midcast
	sets.midcast = {}

	sets.midcast.Cure = {main="Tamaxchi",sub="Genbu's Shield",ammo="Oreiad's Tathlum",head="Kaabnax Hat",
		neck="Imbodla Necklace",left_ear="Loquac. Earring",right_ear="Lifestorm Earring",body="Geomancy Tunic",
		hands="Bokwus Gloves",left_ring="Sirona's Ring",right_ring="Solemn Ring",back="Pahtli Cape",
		waist="Witch Sash",legs="Nares Trews",feet="Umbani Boots"} --MND=96+131, Cure Pot.=46%

	sets.midcast.Enfeeble = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabnax Hat",
		neck="Imbodla Necklace",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat +1",
		hands="Hagondes Cuffs",left_ring="Perception Ring",right_ring="Sangoma Ring",back="Refraction Cape",
		waist="Aswang Sash",legs="Mes'yohi Slacks",feet="Hagondes Sabots"}

	sets.midcast.Geomancy = {main="Nehushtan",sub="Genbu's Shield",range="Dunna",
		body="Bagua Tunic",
		hands="Geomancy Mitaines",back="Lifestream Cape",
		waist="Sekhmet Corset", legs="Bagua Pants"}
			--Geomancy Skill:	373+38 = 411  ??
			--Handbell Skill:	373+18 = 391
			--Total:			802

	--Enhancing needs work
	sets.midcast.Enhancing = {body="Anhur Robe", head="Umuthi Hat", neck="Colossus's Torque",
		hands="Augur's Gloves", left_ear="Loquac. Earring",
		waist="Olympus Sash",legs="Shedir Seraweels",feet="Geomancy Sandals"}

	sets.midcast.ElementalMagic = {main="Lehbrailg +2",sub="Elder's Grip",ammo="Witchstone",head="Buremte Hat",
		neck="Eddy Necklace",left_ear="Crematio Earring",right_ear="Friomisi Earring",body="Hagondes Coat +1",
		hands="Hagondes Cuffs",left_ring="Acumen Ring",right_ring="Strendu ring",back="Toro Cape",
		waist="Aswang Sash",legs="Hagondes Pants +1",feet="Umbani Boots"}

	sets.midcast.DarkMagic = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Bagua Galero",
		neck="Stoicheion Medal",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat +1",
		hands="Hagondes Cuffs",left_ring="Acumen Ring",right_ring="Sangoma Ring",back="Refraction Cape",
		waist="Witch Sash",legs="Mes'yohi Slacks",feet="Hagondes Sabots"}

	sets.TP = {
		head="Nahtirah Hat", neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
		body="Hagondes Coat +1", hands="Hagondes Cuffs", left_ring="Beeline Ring", right_ring="Rajas Ring",
		back="Buquwik Cape", waist="Windbuffet Belt", legs="Mes'yohi Slacks", feet="Hag. Sabots +1"}

    sets.WS = set_combine(sets.TP, {neck="Tlamiztli Collar", left_ear="Moonshade Earring", right_ring="Cho'j Band",
		waist="Prosilio Belt +1"})

    sets.DontForget = {neck="Quanpur Necklace", left_ear="Reraise Earring", right_ear = "Linkpearl",
		left_ring="Excelsis Ring"}


	send_command('input /macro book 20;wait .1;input /macro set 1')

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
		end
	elseif spell.skill == 'Elemental Magic' then
		equip(sets.midcast.ElementalMagic)
		if spell.element == 'Earth' then
			equip({neck="Quanpur Necklace"})
		end
	elseif spell.skill == 'Dark Magic' then
		equip(sets.midcast.DarkMagic)
		if spell.english:startswith('Aspir') or spell.english == 'Drain' then
			equip({left_ring="Excelsis Ring", waist="Fucho-no-Obi"})
		end
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
