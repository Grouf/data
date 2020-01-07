--[[
		=========================
		|   G E O M A N C E R   |
		=========================
]]

include('Obi_Check')

function get_sets()
	sets.precast = {}

	sets.precast.FastCast = {main="Oranyan",sub="Enki Strap",head="Nahtirah Hat",
		body="Anhur Robe", left_ear="Loquac. Earring", right_ear="Etiolation Earring",
		hands="Geo. Mitaines +2", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Lifestream Cape", waist="Witful Belt",legs="Geomancy Pants +2",feet="Helios Boots"}  --Fast Cast = 47%?

	sets.precast.IdleRefresh = {main="Bolelabunga",sub="Genmei Shield",range="Dunna",
		neck="Twilight Torque", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Respite Cloak", hands="Bagua Mitaines +1", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Mecisto. Mantle",	waist="Fucho-no-Obi", legs="Nares Trews", feet="Geomancy Sandals +2"}
	--Repulse Mantle
	--Mecisto. Mantle
	sets.precast.IdleLuopan = {main="Bolelabunga", sub="Genmei Shield", range="Dunna",
		head="Azimuth Hood +1", neck="Twilight Torque", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Azimuth Coat +1", hands="Geo. Mitaines +2", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Mecisto. Mantle",	waist="Fucho-no-Obi", legs="Psycloth Lappas", feet="Bagua Sandals +1"}
	--Lifestream Cape

	sets.precast.Idle = sets.precast.IdleRefresh

	--sets.precast.Rest = {main="Chatoyant Staff"}

--Job Ability--
	sets.JA = {}
	sets.JA['Collimated Fervor'] = {head="Bagua Galero +1"}
	sets.JA.Bolster = {body="Bagua Tunic +1"}
	sets.JA['Full Circle'] = {head="Azimuth Hood +1"}
	sets.JA['Mending Halation'] = {legs="Bagua Pants +1"}
	sets.JA['Radial Arcana'] = {feet="Bagua Sandals +1"}
	sets.JA['Life Cycle'] = {body="Geomancy Tunic +2"}

--Midcast
	sets.midcast = {}

	sets.midcast.Cure = {main="Gada", sub="Ammurapi Shield", ammo="Oreiad's Tathlum",
		head="Kaabnax Hat", neck="Nodens Gorget",left_ear="Mendi. Earring",right_ear="Lifestorm Earring",
		body="Geomancy Tunic +2", hands="Telchine Gloves",left_ring="Stikini Ring",right_ring="Stikini Ring",
		back="Pahtli Cape", waist="Luminary Sash",legs="Doyen Pants",feet="Vanya Clogs"} --MND=111+197, Cure Pot.=43%  
			--feet to vanya clogs

	sets.midcast.Enfeeble = {main="Gada", sub="Ammurapi Shield", ammo="Elis Tome",
		head="Kaabnax Hat", neck="Imbodla Necklace",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",
		body="Helios Jacket", hands="Lurid Mitts", left_ring="Stikini Ring", right_ring="Stikini Ring",
		back="Refraction Cape", waist="Luminary Sash",legs="Psycloth Lappas",feet="Geomancy Sandals +2"}

	sets.midcast.Geomancy = {main="Solstice",sub="Genmei Shield" ,range="Dunna",
		head="Azimuth Hood +1", neck="Incanter's Torque", right_ear="Gifted Earring", left_ear="Calamitous Earring",
		body="Bagua Tunic +1", hands="Geo. Mitaines +2",left_ring="Stikini Ring",right_ring="Stikini Ring",
		back="Lifestream Cape",	waist="Luminary Sash", legs="Bagua Pants +1", feet="Azimuth Gaiters +1"}
			--Geomancy Skill:	471
			--Handbell Skill:	437
			--Total:			908
			--Conserve MP:		17
		--Merlinic Crackows if not Indi spell?

	--Enhancing needs work
	sets.midcast.Enhancing = {main="Gada", sub="Ammurapi Shield",
		head="Befouled Crown", neck="Incanter's Torque",left_ear="Loquac. Earring", right_ear="Andoaa Earring",
		body="Telchine Chas.", hands="Augur's Gloves", left_ring="Stikini Ring", right_ring="Stikini Ring", 
		waist="Olympus Sash",legs="Shedir Seraweels", feet="Inspirited Boots"}

	sets.midcast.ElementalMagic = {main="Oranyan",sub="Enki Strap",ammo="Ghastly Tathlum",head="Helios Band",
		neck="Eddy Necklace",left_ear="Crematio Earring",right_ear="Friomisi Earring",body="Count's Garb",
		hands="Helios Gloves",left_ring="Acumen Ring",right_ring="Strendu ring",back="Toro Cape",
		waist="Yamabuki-no-Obi",legs="Hagondes Pants +1",feet="Helios Boots"}

	sets.midcast.DarkMagic = {main="Oranyan",sub="Enki Strap",ammo="Elis Tome",head="Bagua Galero +1",
		neck="Erra Pendant",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Helios Jacket",
		hands="Lurid Mitts",left_ring="Evanescence Ring",right_ring="Stikini Ring",back="Refraction Cape",
		waist="Yamabuki-no-Obi",legs="Azimuth Tights +1",feet="Geomancy Sandals +2"}

	sets.TP = {
		head="Nahtirah Hat", neck="Asperity Necklace", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Helios Jacket", hands="Geo. Mitaines +2", left_ring="Beeline Ring", right_ring="K'ayres Ring",
		back="Buquwik Cape", waist="Windbuffet Belt", legs="Psycloth Lappas", feet="Helios Boots"}

    sets.WS = set_combine(sets.TP, {neck="Fotia Gorget", right_ear="Ishvara Earring", right_ring="Cho'j Band",
		waist="Prosilio Belt +1"})

    sets.DontForget = {head="Umuthi Hat", body="Telchine Chas.", 
		left_ring="Excelsis Ring", legs="Doyen Pants"}


	send_command('input /macro book 20;wait .1;input /macro set 1')

end

function precast(spell)
	if spell.type == 'Item' then
		--If using an item (eg Forbidden Key, Velkk Coffer) cancel actions. (Was changing into fast cast set)
		return
	end
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
			equip({hands="Bagua Mitaines +1"})
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
Head: Bagua Galero +1: Primeval Zeal
Body: Bagua Tunic +1: Bolster
Hands: Bagua Mitaines +1: Curative Recantation
Legs: Bagua Pants +1: Mending Halation
Feet: Bagua Sandals +1: Radial Arcana
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
			equip({waist="Siegel Sash", neck="Nodens Gorget"})
		elseif spell.english:startswith('Regen') then
			equip({main="Bolelabunga", body="Telchine Chas."})
		end
	elseif spell.skill == 'Elemental Magic' then
		equip(sets.midcast.ElementalMagic)
		obi_check(spell.element)
	elseif spell.skill == 'Dark Magic' then
		equip(sets.midcast.DarkMagic)
		if spell.english:startswith('Aspir') or spell.english == 'Drain' then
			equip({left_ring="Excelsis Ring", waist="Fucho-no-Obi"})
			--Hirudinea Earring?
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
