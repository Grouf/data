--[[
		=======================
		|   R E D   M A G E   |
		=======================
]]

--[[
		WANTED ITEMS
	Ischemia Chasuble	-- Savage   Need for Enfeebling HighAcc, gives +6 m.acc over Lethargy body +1
	Battlecaster's Boots
]]

include('Obi_Check')

function get_sets()

	FastCastOnlySpells = S{'Warp', 'Warp II','Escape','Tractor','Raise', 'Raise II' ,'Reraise',
		'Protect', 'Protect II', 'Protect III', 'Protect IV', 'Protect V',
		'Shell', 'Shell II', 'Shell III', 'Shell IV', 'Shell V',
		'Teleport-Dem', 'Teleport-Mea', 'Teleport-Holla', 'Teleport-Altep', 'Teleport-Yhoat', 'Teleport-Vahzl',
		}

	--[[MNDEnfeebles = S{'Dia', 'Dia II', 'Dia III', 'Diaga', 'Addle', 'Distract', 'Distract II',
		'Frazzle', 'Frazzle II', 'ParaLyze', 'ParaLyze II', 'Slow', 'Slow II', 'Silence'}

	INTEnfeebles = S{'Bind', 'Blind', 'Blind II', 'Break', 'Gravity', 'Gravity II', 'Poison', 'Poison II',
		'Poisonga', 'Sleep', 'Sleep II', 'Sleepga'}
		]]

	--Equip variables
	SetMode_Index = 1
	SetMode_Names = {'DD','DT','MDT'}		--Switch between DD and DT sets, set using user command 'SetMode'
	--#SetMode_Names    <- This outputs the number of elements
	Accuracy_Index = 1
	Accuracy = {'None', 'MidAcc', 'HighAcc'}	--Accuracy levels set with user command 'Accuracy'
	Beatific_On = 0 	--set with user command 'Beatific'; used to equip when not in MDT gear
	Mecisto_On = 1			--set with user command 'Mecisto'; default on, equip CP cape in aftercast

	--Job Abilities
	sets.JA = {}
	sets.JA.Chainspell = {body="Viti. Tabard +1"}
	sets.JA.Saboteur = {hands="Leth. Gantherots"}

	sets.JA.Waltz = {ammo="Brigantia Pebble",
		head="Buremte Hat", right_ear="Soil Pearl", left_ear="Soil Pearl",
		body="Viti. Tabard +1", hands="Atrophy Gloves +1", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		back="Refraction Cape", waist="Caudata Belt", legs="Viti. Tights +1", feet="Umbani Boots"}

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

	sets.FastCast = {main="Marin Staff +1", sub="Mephitis Grip",
		head="Atro. Chapeau +1", neck="Stoicheion Medal", left_ear="Estq. Earring", right_ear="Loquac. Earring",
		body="Viti. Tabard +1", hands="Gende. Gages +1", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Swith Cape", waist="Witful Belt", legs="Artsieq Hose", feet="Taeon Boots"}
			-- 51% Fast Cast, 20% Haste}

	sets.Idle = {main="Bolelabunga", sub="Genbu's Shield", ammo="Brigantia Pebble",
		head="Viti. Chapeau +1", neck="Twilight Torque", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Atrophy Tabard +1", hands="Serpentes Cuffs", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Repulse Mantle", waist="Fucho-no-Obi", legs="Nares Trews", feet="Serpentes Sabots"}

	sets.Idle.DT = {main="Xiutleato",sub="Genbu's Shield", ammo="Brigantia Pebble",
		head="Atro. Chapeau +1", neck="Twilight Torque", left_ear="Soil Pearl", right_ear="Soil Pearl",
		body="Atrophy Tabard +1", hands="Umuthi Gloves", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Mes'yohi Slacks", feet="Umbani Boots"}

	sets.Idle.MDT = {main="Xiutleato",sub="Beatific Shield +1", ammo="Brigantia Pebble",
		head="Atro. Chapeau +1", neck="Twilight Torque", left_ear="Soil Pearl", right_ear="Soil Pearl",
		body="Atrophy Tabard +1", hands="Umuthi Gloves", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Mes'yohi Slacks", feet="Umbani Boots"}



	sets.Enfeeble = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Oreiad's Tathlum",
		head="Viti. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Lethargy Sayon +1", hands="Lurid Mitts", left_ring="Weather. Ring", right_ring="Globidonta Ring",
		back="Refraction Cape", waist="Witch Sash", legs="Mes'yohi Slacks", feet="Uk'uxkaj Boots"}
			--Magic Accuracy:	+108
			--Enfeeble Skill:	500
			--Total:			608
			--MND:				+180

	sets.Enfeeble.MidAcc = set_combine(sets.Enfeeble ,{ammo="Kalboron Stone", waist="Famine Sash",
		feet="Vitivation Boots +1"})
			--Magic Accuracy:	+128
			--Enfeeble Skill:	512
			--Total:			640
			--MND:				+178

	sets.Enfeeble.HighAcc = set_combine(sets.Enfeeble.MidAcc ,{head="Helios Band", body="Atrophy Tabard +1",
		right_ring="Sangoma Ring", back="Ghostfyre Cape"})
			--Magic Accuracy:	+160
			--Enfeeble Skill:	511
			--Total:			671
			--MND:				+165

	--Lethargy Sayon +1 is best-in-slot for all enfeebles

-- *!*!* Difference between MND and INT enfeebles is Ghastly Tathlum and Yamabuki-no-Obi, for non-Acc (?) *!*!*
	--[[sets.INTEnfeeble = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Ghastly Tathlum",
		head="Viti. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Lethargy Sayon +1", hands="Lurid Mitts", left_ring="Weather. Ring", right_ring="Globidonta Ring",
		back="Ghostfyre Cape", waist="Yamabuki-no-Obi", legs="Mes'yohi Slacks", feet="Uk'uxkaj Boots"}--M.Acc=348

	sets.INTEnfeeble.MidAcc = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Kalboron Stone",
		head="Viti. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Atrophy Tabard +1", hands="Lurid Mitts", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Ghostfyre Cape", waist="Yamabuki-no-Obi", legs="Mes'yohi Slacks", feet="Vitivation Boots +1"} --M.Acc 360

	sets.INTEnfeeble.HighAcc = {} --Lethargy Sayon +1 +1 is best-in-slot for all enfeebles ]]

	sets.Dispel = set_combine(sets.Enfeeble,{body="Atrophy Tabard +1", feet="Vitivation Boots +1"})

	sets.Dispel.MidAcc = set_combine(sets.Enfeeble,{})

	sets.Dispel.HighAcc = {}

	sets.Elemental = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Ghastly Tathlum",
		head="Helios Band", neck="Eddy Necklace", left_ear="Crematio Earring", right_ear="Friomisi Earring",
		body="Count's Garb", hands="Helios Gloves", left_ring="Strendu Ring", right_ring="Acumen Ring",
		back="Toro Cape", waist="Yamabuki-no-Obi", legs="Hagondes Pants +1", feet="Helios Boots"} --MAB=183

	sets.Elemental.MidAcc = {
		left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		hands="Helios Gloves???", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		feet="Vitivation Boots +1???"}

	sets.Elemental.HighAcc = {body="Helios Jacket",ammo="Kalboron Stone",}

	sets.DarkMagic = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Ghastly Tathlum",
		head="Atro. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Helios Jacket", hands="Lurid Mitts", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Refraction Cape", waist="Yamabuki-no-Obi", legs="Mes'yohi Slacks", feet="Hagondes Sabots"}

	sets.DarkMagic.MidAcc = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Kalboron Stone",
		head="Atro. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Helios Jacket", hands="Lurid Mitts", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Refraction Cape", waist="Yamabuki-no-Obi", legs="Mes'yohi Slacks", feet="Hagondes Sabots"}

	sets.DarkMagic.HighAcc = {waist="Famine Sash",}

	--Stun set used for both precast and midcast
	sets.Stun = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Kalboron Stone",
		head="Atro. Chapeau +1", neck="Eddy Necklace", left_ear="Estq. Earring", right_ear="Loquac. Earring",
		body="Viti. Tabard +1", hands="Gende. Gages +1", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Swith Cape", waist="Sailfi Belt", legs="Artsieq Hose", feet="Vitivation Boots +1"}
			--Fast Cast: 53%, Haste:27%

	sets.Cure = {main="Tamaxchi", sub="Genbu's Shield", ammo="Oreiad's Tathlum",
		head="Viti. Chapeau +1", neck="Estoqueur's Collar", left_ear="Lifestorm Earring", right_ear="Soil Pearl",
		body="Viti. Tabard +1", hands="Telchine Gloves", left_ring="Solemn Ring", right_ring="Sirona's Ring",
		back="Ghostfyre Cape", waist="Witch Sash", legs="Atrophy Tights +1", feet="Umbani Boots"}
		--51% Cure Pot., Cure casting -6%,  20%Haste, MND 91+180, VIT82+87, Healing Mage: 426

	sets.Enhancing = {main="Arendsi Fleuret", sub="Genbu's Shield",
		head="Umuthi Hat", neck="Colossus's Torque", left_ear="Estq. Earring", right_ear="Andoaa Earring",
		body="Viti. Tabard +1", hands="Atrophy Gloves +1", left_ring="Weather. Ring",  right_ring="Prolix Ring",
		back="Estoqueur's Cape", waist="Olympus Sash", legs="Atrophy Tights +1", feet="Leth. Houseaux"}
		--skill=522}

	sets.EnhancingOther = set_combine(sets.Enhancing, {head="Lethargy Chappel",
		body="Lethargy Sayon +1", hands="Atrophy Gloves +1", legs="Leth. Fuseau +1"})

	sets.Spikes = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Witchstone",
		head="Atro. Chapeau +1", neck="Imbodla Necklace", left_ear="Crematio Earring", right_ear="Psystorm Earring",
		body="Atrophy Tabard +1", hands="Atrophy Gloves +1", left_ring="Icesoul Ring", right_ring="Spiral Ring",
		back="Toro Cape", waist="Caudata Belt", legs="Mes'yohi Slacks", feet="Umbani Boots"}
			--spike damage gear only works while equipped
			--INT at casting makes spikes do more damage: adjust above to max INT

	sets.Enspells = set_combine(sets.Enhancing, {back="Ghostfyre Cape"})

	MeleeLock = 'False' --used for info only

	sets.DD = {ammo="Paeapua",
		head="Taeon Chapeau", neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
		body="Taeon Tabard", hands="Atrophy Gloves +1", left_ring="Cho'j Band", right_ring="Rajas Ring",
		back="Bleating Mantle", waist="Windbuffet Belt", legs="Taeon Tights", feet="Taeon Boots"}

	--[[Need to sort these out:
	*Windbuffet Belt
	*Chaac Belt
	*when using shield:  feet="Atrophy Boots +1"
	*Emet Harness +1
	]]

	sets.DD.MidAcc = {}

	sets.DD.HighAcc = {}


	sets.DT = {}

	sets.DT.MidAcc = {}

	sets.DT.HighAcc = {}


	sets.MDT = {}

	sets.MDT.MidAcc = {}

	sets.MDT.HighAcc = {}

	sets.WS = {ammo="Oreiad's Tathlum",
		head="Taeon Chapeau", neck="Fotia Gorget", left_ear="Dudgeon Earring", right_ear="Bladeborn Earring",
		body="Taeon Tabard", hands="Atrophy Gloves +1", left_ring="Cho'j Band", right_ring="K'ayres Ring",
		back="Vespid Mantle", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}

	sets.WS.MidAcc = {}

	sets.WS.HighAcc = {}

	--sets.WS['Chant du Cygne'] = {} -- DEX 80%

	--sets.WS['Chant du Cygne'].MidAcc = {}

	--sets.WS['Chant du Cygne'].HighAcc = {}

	sets.WS.Requiescat = set_combine(sets.WS, {head="Atro. Chapeau +1", left_ear="Lifestorm Earring",
		body="Viti. Tabard +1", left_ring="Solemn Ring", right_ring="Sirona's Ring", back="Refraction Cape",
		legs="Atrophy Tights +1", feet="Vitivation Boots +1"})

	--sets.WS.Requiescat.MidAcc = {}

	--sets.WS.Requiescat.HighAcc = {}


	sets.WS['Sanguine Blade'] = set_combine(sets.WS, {right_ear="Lifestorm Earring",
		left_ring="Icesoul Ring", right_ring="Spiral Ring",
		back="Refraction Cape", waist="Caudata Belt", legs="Mes'yohi Slacks", feet="Umbani Boots" })

	--sets.WS['Sanguine Blade'].MidAcc = {}

	--sets.WS['Sanguine Blade'].HighAcc = {}


	--sets.WS['Chant du Cygne'] = -- DEX 80%
	--sets.WS['Chant du Cygne'].MidAcc = -- DEX 80%
	--sets.WS['Chant du Cygne'].HighAcc = -- DEX 80%

	--[[aftercast sets shouldn't be needed (?) :
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	]]

	--send_command('input /macro book 5;wait .1;input /macro set 1')
	set_macro_book()

	--[[
	sets.DontForget = {sub="Thuellaic Ecu +1", neck="Quanpur Necklace", left_ear="Reraise Earring",
		body="Telchine Chas."}
	sets.DontForget2 = {legs="Crimson Cuisses", right_ring="Excelsis Ring"}
	sets.DontForget3 = {legs="Shedir Seraweels"}
	]]

end

function precast(spell)
	if spell.type == 'Item' then
		--If using an item (eg Forbidden Key, Velkk Coffer) cancel actions. (Was changing into fast cast set)
		return
	end
	--add_to_chat(9, 'Precast: spell=' ..spell.english.. ' spell type=' ..spell.type.. ' Skill=' ..spell.skill)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' and spell.english ~= 'Ranged'then
		--add_to_chat(9, 'not JobAbility, WeaponSkill, or Ranged Attack so Fast Cast')
		if spell.english ~= 'Stun' then
			equip(sets.FastCast)
		elseif spell.english == 'Stun' then
			equip(sets.Stun)
			--add_to_chat(9, 'STUN set, precast')
		end


	elseif spell.type == "WeaponSkill" then
		if sets.WS[spell.english] then
			EquipSet = sets.WS[spell.english] --??need to test to make sure it works
		else
			EquipSet = sets.WS
		end

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

		if (player.tp > 1749 and player.tp < 2000) or (player.tp > 2749 and player.tp < 3000) then
			--equip({left_ear="Moonshade Earring"})
			EquipSet = set_combine(EquipSet, {left_ear="Moonshade Earring"})
		end
		if buffactive['Reive Mark'] then
			EquipSet = set_combine(EquipSet, {neck="Ygnas's Resolve +1"})
		end

		equip(EquipSet)

	elseif spell.prefix == "/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif spell.type == 'Step' then
			equip(sets.JA.Step)
		elseif spell.type == 'Waltz' and spell.english ~= 'Healing Waltz' then
			equip(sets.JA.Waltz)
		end
	end

end --end precast

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

	Check_for_Obi = 0

	if FastCastOnlySpells:contains(spell.english) then
		--add_to_chat(9, 'Fast Cast only Spell: ' ..spell.english)
		equip(sets.FastCast)

	elseif spell.skill == 'Enfeebling Magic' then
		if spell.english == 'Dispel' then
			EquipSet = sets.Dispel
		else
			EquipSet = sets.Enfeeble
		end

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

		if Accuracy[Accuracy_Index] == 'None' then  --don't need accuracy gear
			if spell.english == 'Blind II' then
				EquipSet = set_combine(EquipSet, {legs="Viti. Tights +1"})
			--elseif spell.english == 'Dia III' or spell.english == 'Slow II' then
				--EquipSet = set_combine(EquipSet, {head="Viti. Chapeau +1"})
				--***Don't need Dia/Slow test as hat always equipped***
			--elseif spell.english == 'Paralyze II' then
				--EquipSet = set_combine(EquipSet, {feet="Vitivation Boots +1"})
				--***Don't want this as Uk boots give potency
			end
		end

		if spell.english:startswith('Dia') then
			Check_for_Obi = 1
		end

	elseif spell.skill == 'Enhancing Magic' then
		--add_to_chat(9, 'Casting spell: ' ..spell.english.. ' on ' ..spell.target.name.. ' with '
		--	..SetMode_Names[SetMode_Index])

		if spell.target.name == player.name then
			EquipSet = sets.Enhancing
		elseif spell.target.name ~= player.name then
			--add_to_chat(9, spell.target.name.. ' is NOT me, equip BuffOther.')
			EquipSet = sets.EnhancingOther
		end

		if spell.english:startswith('Refresh') then
			EquipSet = set_combine(EquipSet, {legs="Leth. Fuseau +1"})
		elseif spell.english == 'Stoneskin' then
			EquipSet = set_combine(EquipSet, {waist="Siegel Sash", legs="Shedir Seraweels", neck="Stone Gorget"})
		elseif spell.english == 'Aquaveil' then
			EquipSet = set_combine(EquipSet, {legs="Shedir Seraweels"})
		elseif spell.english:startswith('Regen') then
			EquipSet = set_combine(EquipSet, {main="Bolelabunga", body="Telchine Chas."})
		elseif spell.english:startswith('En') then
			EquipSet = set_combine(EquipSet, {back="Ghostfyre Cape"})
		elseif spell.english:endswith('Spikes') then
			EquipSet = sets.Spikes
		end


	elseif spell.skill == 'Dark Magic' then
		EquipSet = sets.DarkMagic

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

		if Accuracy[Accuracy_Index] == 'None' then
			if spell.english:startswith('Aspir') or spell.english == 'Drain' then
				EquipSet = set_combine(EquipSet, {right_ring="Excelsis Ring", waist="Fucho-no-Obi"})
			elseif spell.english == "Bio III" then
				EquipSet = set_combine(EquipSet, {legs="Viti. Tights +1"})
			end
		end

		if Accuracy[Accuracy_Index] ~= 'HighAcc' then
			Check_for_Obi = 1
		end

	elseif spell.skill == 'Elemental Magic' then

		EquipSet = sets.Elemental

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

		if Accuracy[Accuracy_Index] == 'None' then
			EquipSet = set_combine(EquipSet, {neck="Quanpur Necklace"})
		end

		Check_for_Obi = 1


	elseif spell.skill == 'Healing Magic' then

		EquipSet = sets.Cure
		if spell.english == 'Cursna' then
			EquipSet = set_combine(EquipSet, {feet="Gende. Galoshes"})
		end
		if spell.english:startswith('Cur') then
			Check_for_Obi = 1
		end


	elseif spell.skill == 'Ninjutsu' then
		EquipSet = sets.FastCast

	end --end of spell.skill
--add_to_chat(14, 'End of Midcast (NOT cancelled)')

	equip(EquipSet)  --Equip the set that was built in the midcast

	if Check_for_Obi == 1 then
		obi_check(spell.element) --This NEEDS to be change to return TRUE, then add obi before equip
	end
end

function aftercast(spell)
	--[[Need triggers for these:
	*Mecisto.
	*Repulse
	*Genbu's Shield
	*Beatific Shield +1
	*sets.Idle = sets.precast.IdleRefresh
	*sets.Rest = set_combine(sets.Idle,{main="Bolelabunga"})
	]]

	if player.status =='Engaged' then

		EquipSet = sets[SetMode_Names[SetMode_Index]]  --DD or DT or MDT sets

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

	else
		EquipSet = sets.Idle -- full refresh set

		if EquipSet[SetMode_Names[SetMode_Index]] then
			EquipSet = EquipSet[SetMode_Names[SetMode_Index]] --equip set.Idle.DT or sets.Idle.MDT
		end

	end
	if buffactive['Reive Mark'] then
		EquipSet = set_combine(EquipSet, {neck="Ygnas's Resolve +1"})
	end

	if Beatific_On == 1 and SetMode_Names[SetMode_Index] ~= 'MDT' then
		EquipSet = set_combine(EquipSet, {sub="Beatific Shield +1"})
	end

	if Mecisto_On == 1 then
		EquipSet = set_combine(EquipSet, {back="Mecisto. Mantle"})
	end

	equip(EquipSet)

end --end aftercast

function status_change(new,old)
		--*!*!* Same as aftercast, try to refine *!*!*--
	if player.status =='Engaged' then

		EquipSet = sets[SetMode_Names[SetMode_Index]]  --DD or DT or MDT sets

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

	else
		EquipSet = sets.Idle -- full refresh set

		if EquipSet[SetMode_Names[SetMode_Index]] then
			EquipSet = EquipSet[SetMode_Names[SetMode_Index]] --equip set.Idle.DT or sets.Idle.MDT
		end

	end

	if buffactive['Reive Mark'] then
		EquipSet = set_combine(EquipSet, {neck="Ygnas's Resolve +1"})
	end

	if Beatific_On == 1 and SetMode_Names[SetMode_Index] ~= 'MDT' then
		EquipSet = set_combine(EquipSet, {sub="Beatific Shield +1"})
	end

	if Mecisto_On == 1 then
		EquipSet = set_combine(EquipSet, {back="Mecisto. Mantle"})
	end

	equip(EquipSet)

end -- end status_change

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

	if command == 'SetMode' then
		SetMode_Index = SetMode_Index + 1
		if SetMode_Index == (#SetMode_Names + 1) then
			SetMode_Index = 1
		end
		add_to_chat(9, 'SetMode now set to: ' ..SetMode_Names[SetMode_Index] )

	elseif command == 'Accuracy' then
		Accuracy_Index = Accuracy_Index + 1
		if Accuracy_Index == (#Accuracy + 1) then
			Accuracy_Index = 1
		end
		add_to_chat(9, 'Accuracy now set to: ' ..Accuracy[Accuracy_Index] )

	elseif command == 'Melee' then
		disable('main', 'sub', 'range')
		MeleeLock = 'True'
		add_to_chat(9, 'MeleeLock = ' ..MeleeLock)

	elseif command == 'Magic' then
		enable('main', 'sub', 'range')
		MeleeLock = 'False'
		add_to_chat(9, 'MeleeLock = ' ..MeleeLock)

	elseif command == 'Beatific' then
		if Beatific_On == 0 then
			Beatific_On = 1	--always equip Beatific Shield
		else
			Beatific_On = 0 -- equip shield defined in sets
		end

	elseif command == 'Mecisto' then
		if Mecisto_On == 0 then
			Mecisto_On = 1	--always equip Mecisto Mantle
		else
			Mecisto_On = 0 -- equip back defined in sets
		end

	elseif command == 'Info' then
		add_to_chat(9, 'RDM Info:')
		add_to_chat(9, 'SetMode = ' ..SetMode_Names[SetMode_Index])
		add_to_chat(9, 'Accuracy = ' ..Accuracy[Accuracy_Index])
		add_to_chat(9, 'Beatific_On = ' ..tostring(Beatific_On))
		add_to_chat(9, 'Mecisto_On = ' ..tostring(Mecisto_On))
		add_to_chat(9, 'MeleeLock = ' ..MeleeLock)

	end


--[[
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


	end
]]
	--add_to_chat(14, 'command is: ' ..command)
	--send_command('@input /echo SOLO SET')

end -- end self_command

function sub_job_change(new,old)
	set_macro_book()
end

function set_macro_book()
	-- Default macro book & page
	if player.sub_job == 'BLM' or player.sub_job == 'SCH' then
		send_command('input /macro book 5;wait .1;input /macro set 1')
	elseif player.sub_job == 'DNC' then
		send_command('input /macro book 5;wait .1;input /macro set 1')
	elseif player.sub_job == 'THF' then
		send_command('input /macro book 5;wait .1;input /macro set 1')
	elseif player.sub_job == 'WAR' then
		send_command('input /macro book 5;wait .1;input /macro set 1')
	elseif player.sub_job == 'NIN' then
		send_command('input /macro book 5;wait .1;input /macro set 1')
	else
		send_command('input /macro book 5;wait .1;input /macro set 1')

	end
end
