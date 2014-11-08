--[[
		=======================
		|   R E D   M A G E   |
		=======================
]]

function get_sets()

	FastCastOnlySpells = S{'Warp', 'Warp II','Escape','Tractor','Raise', 'Raise II' ,'Reraise',
		'Protect', 'Protect II', 'Protect III', 'Protect IV', 'Protect V',
		'Shell', 'Shell II', 'Shell III', 'Shell IV', 'Shell V',
		'Teleport-Dem', 'Teleport-Mea', 'Teleport-Holla', 'Teleport-Altep', 'Teleport-Yhoat', 'Teleport-Vahzl',
		'Kupipi', 'Cherukiki', 'Ulmia', 'Joachim', 'Sakura', 'Moogle'
		}

	--Potency/Accuracy sets
	SetMode_Index = 1
	SetMode_Names = {'Potency','Accuracy'}

	sets.Potency = {}

	sets.Potency.Enfeeble = {main="Lehbrailg +2", sub="Mephitis Grip", ammo="Kalboron Stone",
		head="Viti. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Estq. Sayon +2", hands="Hagondes Cuffs", left_ring="Irrwisch Ring", right_ring="Sangoma Ring",
		back="Refraction Cape", waist="Aswang Sash", legs="Mes'yohi Slacks", feet="Uk'uxkaj Boots"}--M.Acc=344

	sets.Potency.Dispel = set_combine(sets.Potency.Enfeeble,{body="Atrophy Tabard +1", hands="Gendewitha Gages",
		feet="Vitivation Boots"})

	sets.Potency.Nuke = {main="Lehbrailg +2", sub="Mephitis Grip", ammo="Witchstone",
		head="Buremte Hat", neck="Eddy Necklace", left_ear="Crematio Earring", right_ear="Friomisi Earring",
		body="Hagondes Coat +1", hands="Hagondes Cuffs", left_ring="Strendu Ring", right_ring="Acumen Ring",
		back="Toro Cape", waist="Aswang Sash", legs="Hagondes Pants +1", feet="Umbani Boots"}

	sets.Potency.DarkMagic = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",
		head="Kaabnax Hat", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Hagondes Coat +1", hands="Hagondes Cuffs", left_ring="Perception Ring", right_ring="Sangoma Ring",
		back="Refraction Cape", waist="Aswang Sash", legs="Mes'yohi Slacks", feet="Hagondes Sabots"}


	sets.Accuracy = {}

	sets.Accuracy.Enfeeble = {main="Lehbrailg +2", sub="Mephitis Grip", ammo="Kalboron Stone",
		head="Viti. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Atrophy Tabard +1", hands="Hagondes Cuffs", left_ring="Perception Ring", right_ring="Sangoma Ring",
		back="Refraction Cape", waist="Aswang Sash", legs="Mes'yohi Slacks", feet="Vitivation Boots"} --M.Acc 383

	sets.Accuracy.Dispel = set_combine(sets.Accuracy.Enfeeble,{})

	sets.Accuracy.Nuke = {main="Lehbrailg +2", sub="Mephitis Grip", ammo="Kalboron Stone",
		head="Buremte Hat", neck="Eddy Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Atrophy Tabard +1", hands="Hagondes Cuffs", left_ring="Perception Ring", right_ring="Sangoma Ring",
		back="Toro Cape", waist="Aswang Sash", legs="Hagondes Pants +1", feet="Vitivation Boots"}

	sets.Accuracy.DarkMagic = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",
		head="Kaabnax Hat", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Atrophy Tabard +1", hands="Hagondes Cuffs", left_ring="Perception Ring", right_ring="Sangoma Ring",
		back="Refraction Cape", waist="Aswang Sash", legs="Mes'yohi Slacks", feet="Hagondes Sabots"}


	--Job Abilities
	sets.JA = {}
	sets.JA.Chainspell = {body="Vitivation Tabard"}
	sets.JA.Saboteur = {hands="Estq. Ganthrt. +2"}
	--sets.JA.Composure = { } --Find augment gear
	--Need other JA listed

	sets.JA.Step = {head="Buremte Hat",
		neck="Iqabi Necklace", left_ear="Steelflash Earring", right_ear="Heartseeker Earring",
		body="Gende. Bilaut +1", hands="Buremte Gloves", left_ring="Rajas Ring", right_ring="Beeline Ring",
		back="Letalis Mantle", waist="Olseni Belt", legs="Mes'yohi Slacks", feet="Atrophy Boots"}
		--Primary Acc: 827???

	sets.JA["Violent Flourish"] = {ammo="Kalboron Stone",
		head="Buremte Hat", neck="Stoicheion Medal", left_ear="Steelflash Earring", right_ear="Heartseeker Earring",
		body="Atrophy Tabard +1", hands="Hagondes Cuffs", left_ring="Perception Ring", right_ring="Sangoma Ring",
		back="Refraction Cape", waist="Aswang Sash", legs="Mes'yohi Slacks", feet="Hagondes Sabots"}
		--M.Acc = 112, Prim.Acc = 773

	sets.precast = {}

	sets.precast.IdleRefresh = {main="Bolelabunga", sub="Genbu's Shield", ammo="Oreiad's Tathlum",
		head="Viti. Chapeau +1", neck="Twilight Torque", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Atrophy Tabard +1", hands="Serpentes Cuffs", left_ring="Shadow Ring", right_ring="Sangoma Ring",
		back="Mecisto. Mantle", waist="Fucho-no-Obi", legs="Nares Trews", feet="Serpentes Sabots"}

	sets.precast.IdleDT = {main="Xiutleato",sub="Genbu's Shield", ammo="Brigantia Pebble",
		head="Nahtirah Hat", neck="Twilight Torque", left_ear="Soil Pearl", right_ear="Soil Pearl",
		body="Hagondes Coat +1", hands="Umuthi Gloves", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		back="Mecisto. Mantle", waist="Flume Belt", legs="Mes'yohi Slacks", feet="Umbani Boots"}

	sets.Idle = sets.precast.IdleRefresh
	IdleMode = 'Refresh'

	sets.Rest = set_combine(sets.Idle,{main="Chatoyant Staff",sub="Mephitis Grip"})

	sets.precast.FastCast = {main="Lehbrailg +2", sub="Arbuda Grip",
		head="Atro. Chapeau +1", neck="Stoicheion Medal", left_ear="Estq. Earring", right_ear="Loquac. Earring",
		body="Vitivation Tabard", hands="Gendewitha Gages", left_ring="Prolix Ring",
		back="Swith Cape", waist="Witful Belt", legs="Artsieq Hose", feet="Hagondes Sabots +1"}
		-- 51% Fast Cast, 21% Haste

	sets.midcast = {}
	sets.midcast.Cure = {main="Tamaxchi", sub="Genbu's Shield", ammo="Oreiad's Tathlum",
		head="Viti. Chapeau +1", neck="Estoqueur's Collar", left_ear="Lifestorm Earring", right_ear="Soil Pearl",
		body="Gende. Bilaut +1", hands="Weath. Cuffs +1", left_ring="Solemn Ring", right_ring="Sirona's Ring",
		back="Pahtli Cape", waist="Witch Sash", legs="Atrophy Tights +1", feet="Umbani Boots"}
		--53% Cure Pot., Cure casting -14%, 17%Haste ,MND 92+178

	sets.midcast.Enhancing = {main="Arendsi Fleuret", sub="Genbu's Shield",
		head="Umuthi Hat", neck="Colossus's Torque", left_ear="Estq. Earring", right_ear="Loquac. Earring",
		body="Vitivation Tabard", hands="Atrophy Gloves +1", left_ring="Prolix Ring",
		back="Estoqueur's Cape", waist="Olympus Sash", legs="Atrophy Tights +1", feet="Estq. Houseaux +2"}
		--skill=510

	sets.midcast.EnhancingOther = set_combine(sets.midcast.Enhancing, {head="Estq. Chappel +2",
		body="Estq. Sayon +2", hands="Atrophy Gloves +1", legs="Estqr. Fuseau +2"})


	MeleeLock = 'False' --used for info only
	sets.TP = {}

	sets.TP.DD = {ammo="Brigantia Pebble",
		head="Nahtirah Hat", neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
		body="Atrophy Tabard +1", hands="Atrophy Gloves +1", left_ring="Cho'j Band", right_ring="Rajas Ring",
		back="Atheling Mantle", waist="Windbuffet Belt", legs="Mes'yohi Slacks", feet="Atrophy Boots"}

	sets.TP.Accuracy = {}

	sets.WS = {}
	sets.WS.Base = {ammo="Oreiad's Tathlum",
		head="Nahtirah Hat", neck="Tlamiztli Collar", left_ear="Moonshade Earring", right_ear="Bladeborn Earring",
		body="Atrophy Tabard +1", hands="Atrophy Gloves +1", left_ring="Cho'j Band", right_ring="Rajas Ring",
		back="Buquwik Cape", waist="Prosilio Belt +1", legs="Mes'yohi Slacks", feet="Atrophy Boots"}

	sets.WS['Chant du Cygne'] = set_combine(sets.WS.Base,{head="Buremte Hat", 
		neck="Light Gorget", legs="Vitivation Tights"}) -- DEX 80%

	sets.WS.Requiescat = set_combine(sets.WS.Base, {neck="Shadow Gorget"})

	sets.WS['Sanguine Blade'] = set_combine(sets.WS.Base, {right_ear="Psystorm Earring",
		hands="Hagondes Cuffs", left_ring="Icesoul Ring",
		right_ring="Spiral Ring", back="Refraction Cape",
		waist="Caudata Belt", feet="Umbani Boots" })

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	send_command('input /macro book 5;wait .1;input /macro set 1')

	sets.DontForget = {main="Buramenk'ah", neck="Quanpur Necklace", left_ear="Reraise Earring", right_ear = "Linkpearl",
		legs="Estoqueur's Fuseau +2"}

	sets.DontForget2 = {main="Bolelabunga", legs="Crimson Cuisses", right_ring="Excelsis Ring"}
	
	sets.DontForget3 = {legs="Shedir Seraweels"}

end

function precast(spell)
	--add_to_chat(14, 'Precast: spell=' ..spell.english.. ' spell type=' ..spell.type.. ' Skill=' ..spell.skill)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		--add_to_chat(14, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)

	elseif spell.type == "WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS.Base)
		end
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end

	elseif spell.prefix == "/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif spell.type == 'Step' then
			equip(sets.JA.Step)
		end
	end

end

function midcast(spell)
	if spell.prefix == '/jobability' or spell.type == 'WeaponSkill' then
	--midcast doesn't exist for JA or WS so cancel the processing of this function
		--add_to_chat(14, 'JobAbility or WeaponSkill; Midcast cancelled')
		return
	end

--add_to_chat(14, 'Casting spell: ' ..spell.english.. ' - ' ..spell.skill.. ' on ' ..spell.target.name.. ' with '
--	..SetMode_Names[SetMode_Index])

	if FastCastOnlySpells:contains(spell.english) then
		add_to_chat(9, 'Fast Cast only Spell: ' ..spell.english)
		equip(sets.precast.FastCast)

	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets[SetMode_Names[SetMode_Index]].Enfeeble)
		--print_set(sets[SetMode_Names[SetMode_Index]].Enfeeble)
		if spell.english == 'Dispel' then
			equip(sets[SetMode_Names[SetMode_Index]].Dispel)
		end
		if SetMode_Names[SetMode_Index] == 'Potency' then
			if spell.english == "Bio III" or spell.english == "Blind II" then
				equip({legs="Vitivation Tights"})
			end
		end
		--[[if spell.english == "Slow II" or spell.english == "Dia III" then
			equip({head="Viti. Chapeau +1"}) **This hat always equipped
		end]]

	elseif spell.skill == 'Enhancing Magic' then
		--add_to_chat(14, 'Casting spell: ' ..spell.english.. ' on ' ..spell.target.name.. ' with '
		--	..SetMode_Names[SetMode_Index])
		equip(sets.midcast.Enhancing)

		if string.find(spell.english, 'Refresh') then
			equip({legs="Estqr. Fuseau +2"})
		elseif spell.english == 'Stoneskin' then
			equip({waist="Siegel Sash", legs="Shedir Seraweels", neck="Stone Gorget"})
		elseif spell.english == 'Aquaveil' then
			equip({legs="Shedir Seraweels"})
		elseif string.find(spell.english, 'Regen') then
			equip({main="Bolelabunga"})
		end
		--if spell.target.isallymember and spell.target.name ~= player.name then
		if spell.target.name ~= player.name then
			--add_to_chat(14, spell.target.name.. ' is _not_ me, equip BuffOther.')
			equip(sets.midcast.EnhancingOther)
		end

	elseif spell.skill == 'Dark Magic' then
		equip(sets[SetMode_Names[SetMode_Index]].DarkMagic)
		if spell.english:startswith('Aspir') or spell.english == 'Drain' then
			equip({left_ring="Excelsis Ring", waist="Fucho-no-Obi"})
		end

	elseif spell.skill == 'Elemental Magic' then
		equip(sets[SetMode_Names[SetMode_Index]].Nuke)
		if spell.element == 'Earth' and SetMode_Names[SetMode_Index] == 'Potency' then
			equip({neck="Quanpur Necklace"})
		end

	elseif spell.skill == 'Healing Magic' then
		equip(sets.midcast.Cure)
		if spell.english == 'Cursna' then
			equip({feet="Gende. Galoshes"})
		end

	elseif spell.skill == 'Ninjutsu' then
		equip(sets.precast.FastCast)

	end
--add_to_chat(14, 'End of Midcast (NOT cancelled)')
end

function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.aftercast.TP)
	else
		equip(sets.Idle)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function status_change(new,old)
	if new == 'Idle' then
		equip(sets.Idle)
	elseif new == 'Resting' then
		equip(sets.Rest)
	elseif new == 'Engaged' then
		equip(sets.aftercast.TP)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function buff_change(buff_name,gain)
	if buff_name=='Saboteur' then
		if gain then
			equip(sets.JA.Saboteur)
			send_command('@wait 0.5; gs disable hands;')
			send_command('@input /echo Saboteur ON, hands disabled')
		else
			enable("hands")
			send_command('@input /echo Saboteur off, hands enabled')
		end
	elseif buff_name=='Chainspell' then
		if gain then
			equip(sets.JA.Chainspell)
			send_command('@wait 0.5; gs disable body;')
			send_command('@input /echo Chainspell ON, body disabled')
		else
			enable("body")
			send_command('@input /echo Chainspell off, body enabled')
		end
	--[[elseif buff_name == 'Commitment' then
		add_to_chat(4, 'Commitment gone.')
		add_to_chat(9, 'Commitment gone.')]]
	end

end

function self_command(command)
	if command == 'Potency' then
		SetMode_Index = 1
		add_to_chat(9, 'SetMode now set to:' ..SetMode_Names[SetMode_Index] )
	elseif command == 'Accuracy' then
		SetMode_Index = 2
		add_to_chat(9, 'SetMode now set to:' ..SetMode_Names[SetMode_Index] )
	elseif command == 'Melee' then
		disable("main", "sub", "range")
		MeleeLock = 'True'
		add_to_chat(9, 'MeleeLock = ' ..MeleeLock)
	elseif command == 'Magic' then
		enable("main", "sub", "range")
		MeleeLock = 'False'
		add_to_chat(9, 'MeleeLock = ' ..MeleeLock)
	elseif command == 'IdleRefresh' then
		sets.Idle = sets.precast.IdleRefresh
		sets.Rest = set_combine(sets.Idle,{main="Chatoyant Staff",sub="Mephitis Grip"})
		IdleMode = 'Refresh'
		--send_command('@wait 0.2;')
		status_change(player.status)
	elseif command == 'IdleDT' then
		sets.Idle = sets.precast.IdleDT
		sets.Rest = set_combine(sets.Idle,{main="Chatoyant Staff",sub="Mephitis Grip"})
		IdleMode = 'Damage Taken'
		--send_command('@wait 0.2;')
		status_change(player.status)
	elseif command == 'Info' then
		add_to_chat(9, 'RDM Info:')
		add_to_chat(9, 'SetMode = ' ..SetMode_Names[SetMode_Index])
		add_to_chat(9, 'IdleMode = ' ..IdleMode)
		add_to_chat(9, 'MeleeLock = ' ..MeleeLock)


	end

	--add_to_chat(14, 'command is: ' ..command)
	--send_command('@input /echo SOLO SET')

end
