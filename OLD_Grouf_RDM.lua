--[[
		=======================
		|   R E D   M A G E   |
		=======================
]]

--[[
		WANTED ITEMS
	Ischemia Chasuble	-- Savage
]]

include('Obi_Check')

function get_sets()

	FastCastOnlySpells = S{'Warp', 'Warp II','Escape','Tractor','Raise', 'Raise II' ,'Reraise',
		'Protect', 'Protect II', 'Protect III', 'Protect IV', 'Protect V',
		'Shell', 'Shell II', 'Shell III', 'Shell IV', 'Shell V',
		'Teleport-Dem', 'Teleport-Mea', 'Teleport-Holla', 'Teleport-Altep', 'Teleport-Yhoat', 'Teleport-Vahzl',
		}

	--Potency/Accuracy sets
	SetMode_Index = 1
	SetMode_Names = {'Potency','Accuracy'} --Change to DD, DT
	Accuracy_Index = 1
	Accuracy = {'None', 'MidAcc', 'HighAcc'}	--Accuracy levels set with user command 'Accuracy'

	--Job Abilities
	sets.JA = {}
	sets.JA.Chainspell = {body="Viti. Tabard +1"}
	sets.JA.Saboteur = {hands="Leth. Gantherots"}

	sets.JA.Waltz = {ammo="Brigantia Pebble",
		head="Buremte Hat", right_ear="Soil Pearl", left_ear="Soil Pearl",
		body="Viti. Tabard +1", hands="Atrophy Gloves +1", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		back="Refraction Cape", waist="Caudata Belt", legs="Taeon Tights", feet="Taeon Boots"}

	sets.JA.Step = {head="Buremte Hat",
		neck="Iqabi Necklace", left_ear="Steelflash Earring", right_ear="Zennaroi Earring",
		body="Atrophy Tabard +1", hands="Buremte Gloves", left_ring="Rajas Ring", right_ring="Beeline Ring",
		back="Letalis Mantle", waist="Olseni Belt", legs="Viti. Tights +1", feet="Atrophy Boots +1"}
		--Primary Acc: 862

	sets.JA['Violent Flourish'] = {ammo="Kalboron Stone",
		head="Buremte Hat", neck="Stoicheion Medal", left_ear="Steelflash Earring", right_ear="Zennaroi Earring",
		body="Atrophy Tabard +1", hands="Lurid Mitts", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Ghostfyre Cape", waist="Yamabuki-no-Obi", legs="Mes'yohi Slacks", feet="Hagondes Sabots"}
		--M.Acc = 115, Prim.Acc = 747


	--Stun set used for both precast and midcast
	sets.Stun = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Kalboron Stone",
		head="Atro. Chapeau +1", neck="Eddy Necklace", left_ear="Estq. Earring", right_ear="Loquac. Earring",
		body="Viti. Tabard +1", hands="Gende. Gages +1", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Swith Cape", waist="Sailfi Belt", legs="Artsieq Hose", feet="Vitivation Boots +1"}
			--Fast Cast: 53%, Haste:27%

	sets.Potency = {}

	sets.Potency.Enfeeble = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Kalboron Stone",
		head="Viti. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Lethargy Sayon +1", hands="Lurid Mitts", left_ring="Weather. Ring", right_ring="Globidonta Ring",
		back="Ghostfyre Cape", waist="Yamabuki-no-Obi", legs="Mes'yohi Slacks", feet="Uk'uxkaj Boots"}--M.Acc=348

	sets.Potency.Dispel = set_combine(sets.Potency.Enfeeble,{body="Atrophy Tabard +1", feet="Vitivation Boots +1"})

	sets.Potency.Nuke = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Ghastly Tathlum",
		head="Helios Band", neck="Eddy Necklace", left_ear="Crematio Earring", right_ear="Friomisi Earring",
		body="Helios Jacket", hands="Helios Gloves", left_ring="Strendu Ring", right_ring="Acumen Ring",
		back="Toro Cape", waist="Yamabuki-no-Obi", legs="Hagondes Pants +1", feet="Helios Boots"} --MAB=183

	sets.Potency.DarkMagic = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Kalboron Stone",
		head="Atro. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Helios Jacket", hands="Lurid Mitts", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Refraction Cape", waist="Yamabuki-no-Obi", legs="Mes'yohi Slacks", feet="Hagondes Sabots"}


	sets.Accuracy = {}

	sets.Accuracy.Enfeeble = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Kalboron Stone",
		head="Viti. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Atrophy Tabard +1", hands="Lurid Mitts", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Ghostfyre Cape", waist="Yamabuki-no-Obi", legs="Mes'yohi Slacks", feet="Vitivation Boots +1"} --M.Acc 360

	sets.Accuracy.Dispel = set_combine(sets.Accuracy.Enfeeble,{})

	sets.Accuracy.Nuke = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Kalboron Stone",
		head="Buremte Hat", neck="Eddy Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Atrophy Tabard +1", hands="Helios Gloves", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Toro Cape", waist="Yamabuki-no-Obi", legs="Hagondes Pants +1", feet="Vitivation Boots +1"}

	sets.Accuracy.DarkMagic = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Kalboron Stone",
		head="Atro. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Helios Jacket", hands="Lurid Mitts", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Refraction Cape", waist="Yamabuki-no-Obi", legs="Mes'yohi Slacks", feet="Hagondes Sabots"}



	sets.precast = {}

	sets.precast.IdleRefresh = {main="Bolelabunga", sub="Genbu's Shield", ammo="Oreiad's Tathlum",
		head="Viti. Chapeau +1", neck="Twilight Torque", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Atrophy Tabard +1", hands="Serpentes Cuffs", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Mecisto. Mantle", waist="Fucho-no-Obi", legs="Nares Trews", feet="Serpentes Sabots"}

	sets.precast.IdleDT = {main="Xiutleato",sub="Genbu's Shield", ammo="Brigantia Pebble",
		head="Atro. Chapeau +1", neck="Twilight Torque", left_ear="Soil Pearl", right_ear="Soil Pearl",
		body="Atrophy Tabard +1", hands="Umuthi Gloves", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		back="Mecisto. Mantle", waist="Flume Belt", legs="Mes'yohi Slacks", feet="Umbani Boots"}
	--Mecisto.
	--Repulse

	--Genbu's Shield
	--Beatific Shield +1


	sets.Idle = sets.precast.IdleRefresh
	IdleMode = 'Refresh'

	sets.Rest = set_combine(sets.Idle,{main="Bolelabunga"})

	sets.precast.FastCast = {main="Marin Staff +1", sub="Mephitis Grip",
		head="Atro. Chapeau +1", neck="Stoicheion Medal", left_ear="Estq. Earring", right_ear="Loquac. Earring",
		body="Viti. Tabard +1", hands="Gende. Gages +1", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Swith Cape", waist="Witful Belt", legs="Artsieq Hose", feet="Taeon Boots"}
		-- 51% Fast Cast, 20% Haste

	sets.midcast = {}
	sets.midcast.Cure = {main="Tamaxchi", sub="Genbu's Shield", ammo="Oreiad's Tathlum",
		head="Viti. Chapeau +1", neck="Estoqueur's Collar", left_ear="Lifestorm Earring", right_ear="Soil Pearl",
		body="Viti. Tabard +1", hands="Telchine Gloves", left_ring="Solemn Ring", right_ring="Sirona's Ring",
		back="Ghostfyre Cape", waist="Witch Sash", legs="Atrophy Tights +1", feet="Umbani Boots"}
		--51% Cure Pot., Cure casting -6%,  20%Haste, MND 91+180, VIT82+87, Healing Mage: 426

	sets.midcast.Enhancing = {main="Arendsi Fleuret", sub="Genbu's Shield",
		head="Umuthi Hat", neck="Colossus's Torque", left_ear="Estq. Earring", right_ear="Andoaa Earring",
		body="Viti. Tabard +1", hands="Atrophy Gloves +1", left_ring="Weather. Ring",  right_ring="Prolix Ring",
		back="Estoqueur's Cape", waist="Olympus Sash", legs="Atrophy Tights +1", feet="Leth. Houseaux"}
		--skill=510

	sets.midcast.EnhancingOther = set_combine(sets.midcast.Enhancing, {head="Lethargy Chappel",
		body="Lethargy Sayon +1", hands="Atrophy Gloves +1", legs="Leth. Fuseau +1"})

	sets.midcast.Spikes = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Ghastly Tathlum",
		head="Atro. Chapeau +1", neck="Imbodla Necklace", left_ear="Crematio Earring", right_ear="Psystorm Earring",
		body="Atrophy Tabard +1", hands="Atrophy Gloves +1", left_ring="Icesoul Ring", right_ring="Spiral Ring",
		back="Toro Cape", waist="Caudata Belt", legs="Mes'yohi Slacks", feet="Umbani Boots"}

	sets.midcast.Enspells = set_combine(sets.midcast.Enhancing, {back="Ghostfyre Cape"})

	MeleeLock = 'False' --used for info only
	sets.TP = {}

	sets.TP.DD = {ammo="Paeapua",
		head="Taeon Chapeau", neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
		body="Taeon Tabard", hands="Atrophy Gloves +1", left_ring="Cho'j Band", right_ring="Rajas Ring",
		back="Bleating Mantle", waist="Windbuffet Belt", legs="Taeon Tights", feet="Taeon Boots"}

	--Windbuffet Belt
	--Chaac Belt
	--when using shield:  feet="Atrophy Boots +1"
	--Emet Harness +1

	sets.TP.Accuracy = {}

	sets.WS = {}
	sets.WS.Base = {ammo="Oreiad's Tathlum",
		head="Taeon Chapeau", neck="Fotia Gorget", left_ear="Dudgeon Earring", right_ear="Bladeborn Earring",
		body="Taeon Tabard", hands="Atrophy Gloves +1", left_ring="Cho'j Band", right_ring="K'ayres Ring",
		back="Vespid Mantle", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}

	--sets.WS['Chant du Cygne'] = -- DEX 80%

	sets.WS.Requiescat = set_combine(sets.WS.Base, {head="Atro. Chapeau +1", left_ear="Lifestorm Earring",
		body="Viti. Tabard +1", left_ring="Solemn Ring", right_ring="Sirona's Ring", back="Refraction Cape",
		legs="Atrophy Tights +1", feet="Vitivation Boots +1"})

	sets.WS['Sanguine Blade'] = set_combine(sets.WS.Base, {right_ear="Lifestorm Earring",
		left_ring="Icesoul Ring", right_ring="Spiral Ring",
		back="Refraction Cape", waist="Caudata Belt", legs="Mes'yohi Slacks", feet="Umbani Boots" })

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	send_command('input /macro book 5;wait .1;input /macro set 1')

	sets.DontForget = {sub="Thuellaic Ecu +1", neck="Quanpur Necklace", left_ear="Reraise Earring",
		body="Telchine Chas."}
	sets.DontForget2 = {legs="Crimson Cuisses", right_ring="Excelsis Ring"}
	sets.DontForget3 = {legs="Shedir Seraweels"}

end

function precast(spell)
	if spell.type == 'Item' then
		--If using an item (eg Forbidden Key, Velkk Coffer) cancel actions. (Was changing into fast cast set)
		return
	end
	--add_to_chat(9, 'Precast: spell=' ..spell.english.. ' spell type=' ..spell.type.. ' Skill=' ..spell.skill)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		--add_to_chat(9, 'not JobAbility or WeaponSkill so Fast Cast')
		if spell.english ~= 'Stun' then
			equip(sets.precast.FastCast)
		elseif spell.english == 'Stun' then
			equip(sets.Stun)
			--add_to_chat(9, 'STUN set, precast')
		end


	elseif spell.type == "WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS.Base)
		end
		if (player.tp > 1749 and player.tp < 2000) or (player.tp > 2749 and player.tp < 3000) then
			equip({left_ear="Moonshade Earring"})
		end
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end

	elseif spell.prefix == "/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif spell.type == 'Step' then
			equip(sets.JA.Step)
		elseif spell.type == 'Waltz' and spell.english ~= 'Healing Waltz' then
			equip(sets.JA.Waltz)
		end
	end

end

function midcast(spell)
	if spell.prefix == '/jobability' or spell.type == 'WeaponSkill' or spell.english == 'Stun' then
	--midcast doesn't exist for JA or WS so cancel the processing of this function
		--add_to_chat(9, 'JobAbility or WeaponSkill; Midcast cancelled')
		--if spell.english == 'Stun' then
			--add_to_chat(9, 'STUN set, midcast')
		--end
		return
	end

--add_to_chat(9, 'Casting spell: ' ..spell.english.. ' - ' ..spell.skill.. ' on ' ..spell.target.name.. ' with '
--	..SetMode_Names[SetMode_Index])

	if FastCastOnlySpells:contains(spell.english) then
		add_to_chat(9, 'Fast Cast only Spell: ' ..spell.english)
		equip(sets.precast.FastCast)

	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets[SetMode_Names[SetMode_Index]].Enfeeble)
		--print_set(sets[SetMode_Names[SetMode_Index]].Enfeeble)
		if spell.english == 'Dispel' then
			equip(sets[SetMode_Names[SetMode_Index]].Dispel)
		elseif SetMode_Names[SetMode_Index] == 'Potency' and spell.english == "Blind II" then
			equip({legs="Vitivation Tights"})
		end
		--[[if spell.english == "Slow II" or spell.english == "Dia III" then
			equip({head="Viti. Chapeau +1"}) **This hat always equipped
		end]]
		if SetMode_Names[SetMode_Index] == 'Potency' and spell.english:startswith('Dia') then
			equip({left_ring="Weather. Ring"})
			obi_check(spell.element)
		end

	elseif spell.skill == 'Enhancing Magic' then
		--add_to_chat(9, 'Casting spell: ' ..spell.english.. ' on ' ..spell.target.name.. ' with '
		--	..SetMode_Names[SetMode_Index])
		equip(sets.midcast.Enhancing)

		if spell.english:startswith('Refresh') then
			equip({legs="Leth. Fuseau +1"})
		elseif spell.english == 'Stoneskin' then
			equip({waist="Siegel Sash", legs="Shedir Seraweels", neck="Stone Gorget"})
		elseif spell.english == 'Aquaveil' then
			equip({legs="Shedir Seraweels"})
		elseif spell.english:startswith('Regen') then
			equip({main="Bolelabunga", body="Telchine Chas."})
		elseif spell.english:startswith('En') then
			equip(sets.midcast.Enspells)
		elseif spell.english:endswith('Spikes') then
			equip(sets.midcast.Spikes)
		end
		--if spell.target.isallymember and spell.target.name ~= player.name then
		if spell.target.name ~= player.name then
			--add_to_chat(9, spell.target.name.. ' is _not_ me, equip BuffOther.')
			equip(sets.midcast.EnhancingOther)
		end

	elseif spell.skill == 'Dark Magic' then
		equip(sets[SetMode_Names[SetMode_Index]].DarkMagic)
		if spell.english:startswith('Aspir') or spell.english == 'Drain' then
			equip({left_ring="Excelsis Ring", waist="Fucho-no-Obi"})
		elseif SetMode_Names[SetMode_Index] == 'Potency' and spell.english == "Bio III" then
			equip({legs="Viti. Tights +1"})
		end

		obi_check(spell.element)

	elseif spell.skill == 'Elemental Magic' then
		equip(sets[SetMode_Names[SetMode_Index]].Nuke)
		if spell.element == 'Earth' and SetMode_Names[SetMode_Index] == 'Potency' then
			equip({neck="Quanpur Necklace"})
		end
		if spell.element == 'Ice' then
			equip({main="Ngqoqwanb"})
		end

		obi_check(spell.element)

	elseif spell.skill == 'Healing Magic' then
		equip(sets.midcast.Cure)
		if spell.english == 'Cursna' then
			equip({feet="Gende. Galoshes"})
		end
		if spell.english:startswith('Cur') then
			obi_check(spell.element)
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
	if buff_name == 'Reive Mark' and gain then
		equip({neck="Ygnas's Resolve +1"})
	elseif buff_name=='Saboteur' then
		if gain then
			equip(sets.JA.Saboteur)
			disable('hands')
			add_to_chat(9, 'Saboteur ON, hands disabled')
		else
			enable('hands')
			add_to_chat(9, 'Saboteur off, hands enabled')
		end
	elseif buff_name=='Chainspell' then
		if gain then
			equip(sets.JA.Chainspell)
			disable('body')
			add_to_chat(9, 'Chainspell ON, body disabled')
		else
			enable('body')
			add_to_chat(9, 'Chainspell off, body enabled')
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
		disable('main', 'sub', 'range')
		MeleeLock = 'True'
		add_to_chat(9, 'MeleeLock = ' ..MeleeLock)
	elseif command == 'Magic' then
		enable('main', 'sub', 'range')
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
