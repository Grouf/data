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
		'Teleport-Dem', 'Teleport-Mea', 'Teleport-Holla', 'Teleport-Altep', 'Teleport-Yhoat', 'Teleport-Vahzl'
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
	sets.JA.Saboteur = {hands="Leth. Gantherots +1"}

	sets.JA.Waltz = {ammo="Brigantia Pebble",
		head="Atro. Chapeau +1", right_ear="Soil Pearl", left_ear="Soil Pearl",
		body="Viti. Tabard +1", hands="Atrophy Gloves +1", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		back="Refraction Cape", waist="Caudata Belt", legs="Leth. Fuseau +1", feet="Atrophy Boots +1"}

	sets.JA.Step = {ammo="Paeapua",
		head="Taeon Chapeau", neck="Iqabi Necklace", left_ear="Steelflash Earring", right_ear="Zennaroi Earring",
		body="Helios Jacket", hands="Buremte Gloves", left_ring="Rajas Ring", right_ring="Beeline Ring",
		back="Grounded Mantle", waist="Olseni Belt", legs="Viti. Tights +1", feet="Atrophy Boots +1"}
		--No Weapon Primary Acc: 317

	sets.JA['Violent Flourish'] = {ammo="Kalboron Stone",
		head="Helios Band", neck="Eddy Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Helios Jacket", hands="Leth. Gantherots +1", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Ghostfyre Cape", waist="Famine Sash", legs="Leth. Fuseau +1", feet="Hagondes Sabots"}
		--M.Acc = 174, No Weapon Prim.Acc = 161

	sets.FastCast = {main="Marin Staff +1", sub="Mephitis Grip",
		head="Atro. Chapeau +1", left_ear="Estq. Earring", right_ear="Loquac. Earring",
		body="Viti. Tabard +1", hands="Gende. Gages +1", left_ring="Weather. Ring", right_ring="Prolix Ring",
		waist="Witful Belt", legs="Artsieq Hose", feet="Taeon Boots"}
			-- 54% Fast Cast, 22% Haste

	sets.Idle = {main="Emissary", sub="Genbu's Shield", ammo="Brigantia Pebble",
		head="Viti. Chapeau +1", neck="Twilight Torque", left_ear="Lifestorm Earring", right_ear="Etiolation Earring",
		body="Atrophy Tabard +1", hands="Serpentes Cuffs", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Fucho-no-Obi", legs="Nares Trews", feet="Serpentes Sabots"}

	sets.Idle.DT = {main="Emissary",sub="Genbu's Shield", ammo="Brigantia Pebble",
		head="Rabid Visor", neck="Twilight Torque", left_ear="Soil Pearl", right_ear="Soil Pearl",
		body="Emet Harness +1", hands="Umuthi Gloves", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Viti. Tights +1", feet="Leth. Houseaux +1"}
		-- PDT: -46%, Evasion: 655, Defense: 801

	sets.Idle.MDT = {main="Emissary",sub="Beatific Shield +1", ammo="Brigantia Pebble",
		head="Atro. Chapeau +1", neck="Twilight Torque", left_ear="Zennaroi Earring", right_ear="Etiolation Earring",
		body="Lethargy Sayon +1", hands="Atrophy Gloves +1", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Leth. Fuseau +1", feet="Leth. Houseaux +1"}
		-- MDB: 28, MDT: -33%, M.Eva: 417


	sets.Enfeeble = {main="Serenity", sub="Mephitis Grip", ammo="Oreiad's Tathlum",
		head="Viti. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Lethargy Sayon +1", hands="Leth. Gantherots +1", left_ring="Weather. Ring", right_ring="Globidonta Ring",
		back="Refraction Cape", waist="Rumination Sash", legs="Psycloth Lappas", feet="Uk'uxkaj Boots"}
			--RDM/blm
			--Potency:
			--Magic Accuracy:	+140
			--Enfeeble Skill:	526
			--Total:			666 (709 including JP/Gift Magic Acc Bonus (+43))
			--MND:				98+211
			--INT:				101+168

	sets.Enfeeble.MidAcc = set_combine(sets.Enfeeble ,{ammo="Kalboron Stone", 
		feet="Medium's Sabots"})
			--RDM/blm
			--Mid-Acc:
			--Magic Accuracy:	+168
			--Enfeeble Skill:	541
			--Total:			709 (752 including JP/Gift Magic Acc Bonus(+43))
			--MND:				98+213
			--INT:				101+170

	sets.Enfeeble.HighAcc = set_combine(sets.Enfeeble.MidAcc ,{head="Befouled Crown", body="Atrophy Tabard +1",
		right_ring="Sangoma Ring", back="Ghostfyre Cape"})
			--RDM/blm
			--High-Acc:
			--Magic Accuracy:	+176
			--Enfeeble Skill:	557
			--Total:			733 (776 including JP/Gift Magic Acc Bonus(+43))
			--MND:				98+198
			--INT:				101+172

	--Lethargy Sayon +1 is currently best-in-slot for all enfeebles (??)
		--Ischemia Chasuble gives +6 m.Acc over Lethargy Sayon +1

-- *!*!* Difference between MND and INT enfeebles is Ghastly Tathlum and Yamabuki-no-Obi, for non-Acc (?) *!*!*
	--[[sets.INTEnfeeble = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Ghastly Tathlum",
		head="Viti. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Lethargy Sayon +1", hands="Lurid Mitts", left_ring="Weather. Ring", right_ring="Globidonta Ring",
		back="Ghostfyre Cape", waist="Yamabuki-no-Obi", legs="Psycloth Lappas", feet="Uk'uxkaj Boots"}--M.Acc=348

	sets.INTEnfeeble.MidAcc = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Kalboron Stone",
		head="Viti. Chapeau +1", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Atrophy Tabard +1", hands="Lurid Mitts", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Ghostfyre Cape", waist="Yamabuki-no-Obi", legs="Psycloth Lappas", feet="Vitivation Boots +1"} --M.Acc 360

	sets.INTEnfeeble.HighAcc = {}
	]]

	sets.Dispel = set_combine(sets.Enfeeble.MidAcc, {right_ring="Sangoma Ring",back="Ghostfyre Cape"})

	--sets.Dispel.MidAcc = set_combine(sets.Enfeeble,{})

	--sets.Dispel.HighAcc = {}

	sets.Elemental = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Ghastly Tathlum",
		head="Helios Band", neck="Eddy Necklace", left_ear="Crematio Earring", right_ear="Friomisi Earring",
		body="Count's Garb", hands="Helios Gloves", left_ring="Strendu Ring", right_ring="Acumen Ring",
		back="Toro Cape", waist="Yamabuki-no-Obi", legs="Hagondes Pants +1", feet="Helios Boots"}
			--MAB=213, m.Acc: 88 (316 w/Weapon skill)

	sets.Elemental.MidAcc = set_combine(sets.Elemental, {ammo="Kalboron Stone",
		left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		left_ring="Weather. Ring", right_ring="Sangoma Ring"})
			--MAB=189, m.Acc: 120 (348 w/Weapon skill)

	sets.Elemental.HighAcc = set_combine(sets.Elemental.MidAcc, {main="Serenity", 
		body="Helios Jacket"})
		--MAB=176, m.Acc: 147 (348 w/Weapon skill)

	sets.DarkMagic = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Ghastly Tathlum",
		head="Helios Band", neck="Eddy Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Helios Jacket", hands="Leth. Gantherots +1", left_ring="Weather. Ring", right_ring="Sangoma Ring",
		back="Refraction Cape", waist="Yamabuki-no-Obi", legs="Leth. Fuseau +1", feet="Hagondes Sabots"}

	sets.DarkMagic.MidAcc = set_combine(sets.DarkMagic, {ammo="Kalboron Stone",
		waist="Famine Sash"})

	sets.DarkMagic.HighAcc = sets.DarkMagic.MidAcc

	--Stun set used for both precast and midcast
	sets.Stun = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Kalboron Stone",
		head="Atro. Chapeau +1", neck="Eddy Necklace", left_ear="Estq. Earring", right_ear="Loquac. Earring",
		body="Viti. Tabard +1", hands="Gende. Gages +1", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Ghostfyre Cape", waist="Sailfi Belt", legs="Artsieq Hose", feet="Medium's Sabots"}
			--Fast Cast: 51%, Haste: 26%, M.Acc: 117 (344 w/weapon skill)

	sets.Cure = {main="Serenity", sub="Mephitis Grip", ammo="Oreiad's Tathlum",
		head="Viti. Chapeau +1", neck="Estoqueur's Collar", left_ear="Lifestorm Earring", right_ear="Soil Pearl",
		body="Viti. Tabard +1", hands="Telchine Gloves", left_ring="Solemn Ring", right_ring="Sirona's Ring",
		back="Ghostfyre Cape", waist="Rumination Sash", legs="Atrophy Tights +1", feet="Leth. Houseaux +1"}
		--Cure Pot.: 51%, Cure casting -0%, Haste: 20%, MND: 91+202, VIT: 82+88, Healing Magic: 426

	sets.Enhancing = {main="Arendsi Fleuret", sub="Genbu's Shield",
		head="Befouled Crown", neck="Colossus's Torque", left_ear="Estq. Earring", right_ear="Andoaa Earring",
		body="Viti. Tabard +1", hands="Atrophy Gloves +1", left_ring="Weather. Ring",  right_ring="Prolix Ring",
		back="Ghostfyre Cape", waist="Olympus Sash", legs="Atrophy Tights +1", feet="Leth. Houseaux +1"}
		--skill=522}

	sets.EnhancingOther = set_combine(sets.Enhancing, {head="Lethargy Chappel +1",
		body="Lethargy Sayon +1", hands="Atrophy Gloves +1", legs="Leth. Fuseau +1"})

	sets.Spikes = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Ghastly Tathlum",
		head="Atro. Chapeau +1", neck="Imbodla Necklace", left_ear="Crematio Earring", right_ear="Psystorm Earring",
		body="Count's Garb", hands="Atrophy Gloves +1", left_ring="Icesoul Ring", right_ring="Spiral Ring",
		back="Toro Cape", waist="Caudata Belt", legs="Psycloth Lappas", feet="Umbani Boots"}
			--spike damage gear only works while equipped
			--INT at casting makes spikes do more damage: adjust above to max INT

	sets.Enspells = set_combine(sets.Enhancing, {back="Ghostfyre Cape"})

	MeleeLock = 'False' --used for info only

	sets.DD = {ammo="Ginsen",
		head="Taeon Chapeau", neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
		body="Taeon Tabard", hands="Atrophy Gloves +1", left_ring="Rajas Ring", right_ring="K'ayres Ring",
		back="Bleating Mantle", waist="Windbuffet Belt", legs="Taeon Tights", feet="Taeon Boots"}
			--Without Weapon/Shield: Acc: 226?, Att: 281?

	--[[Need to sort these out:
	*Windbuffet Belt
	*Chaac Belt
	*when using shield:  feet="Atrophy Boots +1"??
	*Emet Harness +1
	]]

	sets.DD.MidAcc = set_combine(sets.DD, {neck="Iqabi Necklace", right_ring="Beeline Ring",
		back="Grounded Mantle", feet="Atrophy Boots +1"})
			--Without Weapon/Shield: Acc: 272?, Att: 217?

	sets.DD.HighAcc = set_combine(sets.DD.MidAcc, {ammo="Amar Cluster", right_ear="Heartseeker Earring",
		hands="Buremte Gloves", waist="Olseni Belt"})
			--Without Weapon/Shield: Acc: 309?, Att: 192?


	sets.DT = {ammo="Brigantia Pebble",
		head="Rabid Visor", neck="Twilight Torque", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
		body="Emet Harness +1", hands="Umuthi Gloves", left_ring="Rajas Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Viti. Tights +1", feet="Leth. Houseaux +1"}
			--Without Weapon/Shield: Acc: 192, Att: 170, EVA: 646, DEF: 768, PDT: -32%


	sets.DT.MidAcc = set_combine(sets.DT, {right_ear="Heartseeker Earring", waist="Olseni Belt"})
			--Without Weapon/Shield: Acc: 220, Att: 157, EVA: 646, DEF: 752, PDT: -28%

	sets.DT.HighAcc = set_combine(sets.DT.MidAcc, {back="Grounded Mantle"})
			--Without Weapon/Shield: Acc: 243, Att: 157, EVA: 646, DEF: 755, PDT: -24%

	sets.MDT = {ammo="Brigantia Pebble",
		head="Atro. Chapeau +1", neck="Twilight Torque", left_ear="Steelflash Earring", right_ear="Zennaroi Earring",
		body="Lethargy Sayon +1", hands="Atrophy Gloves +1", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flax Sash", legs="Leth. Fuseau +1", feet="Leth. Houseaux +1"}
			--RDM/blm
			--Without Weapon/Shield: Acc: 172, Att: 165, EVA: 610, DEF: 734,
			-- MDB: 28, MDT: -13%, M.Eva: 417

	sets.MDT.MidAcc = set_combine(sets.MDT, {waist="Olseni Belt"})
			--RDM/blm
			--Without Weapon/Shield: Acc: 192, Att: 160, EVA: 610, DEF: 735,
			-- MDB: 28, MDT: -11%, M.Eva: 417

	sets.MDT.HighAcc = set_combine(sets.MDT.MidAcc, {back="Grounded Mantle"})
			--RDM/blm
			--Without Weapon/Shield: Acc: 214, Att: 160, EVA: 610, DEF: 732,
			-- MDB: 28, MDT: -8%, M.Eva: 417

	sets.WS = {ammo="Paeapua",
		head="Rabid Visor", neck="Fotia Gorget", left_ear="Dudgeon Earring", right_ear="Bladeborn Earring",
		body="Taeon Tabard", hands="Atrophy Gloves +1", left_ring="Cho'j Band", right_ring="K'ayres Ring",
		back="Buquwik Cape", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}
			--Without Weapon/Shield: STR: +114, Att: 320, Acc: 177

	sets.WS.MidAcc = set_combine(sets.WS, {left_ear="Steelflash Earring", right_ear="Heartseeker Earring",
		hands="Umuthi Gloves", right_ring="Beeline Ring", back="Vespid Mantle"})
			--Without Weapon/Shield: STR: +98, Att: 302, Acc: 241

	sets.WS.HighAcc = set_combine(sets.WS.MidAcc, {head="Taeon Chapeau", back="Grounded Mantle",
		waist="Olseni Belt", feet="Atrophy Boots +1"})
			--Without Weapon/Shield: STR: +88, Att: 204, Acc: 288

	--sets.WS['Chant du Cygne'] = {ammo="Paeapua",
	--	head="Rabid Visor", neck="Fotia Gorget", left_ear="Dudgeon Earring", right_ear="Bladeborn Earring",
	--	body="Taeon Tabard", hands="Atrophy Gloves +1", left_ring="Cho'j Band", right_ring="K'ayres Ring",
	--	back="Buquwik Cape", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}
			-- DEX 80%

	--sets.WS['Chant du Cygne'].MidAcc = {}

	--sets.WS['Chant du Cygne'].HighAcc = {}

	sets.WS.Requiescat = set_combine(sets.WS, {head="Atro. Chapeau +1", left_ear="Lifestorm Earring",
		body="Viti. Tabard +1", left_ring="Solemn Ring", right_ring="Sirona's Ring", back="Refraction Cape",
		legs="Atrophy Tights +1", feet="Medium's Sabots"})

	--sets.WS.Requiescat.MidAcc = {}

	--sets.WS.Requiescat.HighAcc = {}


	sets.WS['Sanguine Blade'] = set_combine(sets.WS, {right_ear="Lifestorm Earring",
		left_ring="Icesoul Ring", right_ring="Spiral Ring",
		back="Refraction Cape", waist="Caudata Belt", legs="Psycloth Lappas", feet="Umbani Boots" })

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

	sets.DontForget = {body="Telchine Chas.", legs="Crimson Cuisses",
		right_ring="Excelsis Ring"}
	sets.DontForget2 = {main="Bolelabunga", legs="Shedir Seraweels"}

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
				--***Don't need Dia/Slow test as hat always equipped when no accuracy needed***
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

		--if world.day_element == spell.element then
		--	EquipSet = set_combine(EquipSet, {legs="Mes'yohi Slacks"})
		--end

		if Accuracy[Accuracy_Index] ~= 'HighAcc' then
			Check_for_Obi = 1
		end

	elseif spell.skill == 'Elemental Magic' then

		EquipSet = sets.Elemental

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
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
		
		if player.mpp >= 70 and SetMode_Names[SetMode_Index] == 'DD' then
			EquipSet = set_combine(EquipSet, {legs="Crimson Cuisses"})
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
	--add_to_chat(9, 'Status change: new=' ..new.. ', old=' ..old)
	aftercast()
		--*!*!* Same as aftercast, try to refine *!*!*--

	--[[
	--if player.status =='Engaged' then
	--
	--	EquipSet = sets[SetMode_Names[SetMode_Index]]  --DD or DT or MDT sets
	--
	--	if EquipSet[Accuracy[Accuracy_Index]] then
	--		--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
	--		EquipSet = EquipSet[Accuracy[Accuracy_Index]]
	--	end
	--
	--else
	--	EquipSet = sets.Idle -- full refresh set
	--
	--	if EquipSet[SetMode_Names[SetMode_Index]] then
	--		EquipSet = EquipSet[SetMode_Names[SetMode_Index]] --equip set.Idle.DT or sets.Idle.MDT
	--	end
	--
	--end
	--
	--if buffactive['Reive Mark'] then
	--	EquipSet = set_combine(EquipSet, {neck="Ygnas's Resolve +1"})
	--end
	--
	--if Beatific_On == 1 and SetMode_Names[SetMode_Index] ~= 'MDT' then
	--	EquipSet = set_combine(EquipSet, {sub="Beatific Shield +1"})
	--end
	--
	--if Mecisto_On == 1 then
	--	EquipSet = set_combine(EquipSet, {back="Mecisto. Mantle"})
	--end
	--
	--equip(EquipSet)
	--]]

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
			add_to_chat(9, 'Beatific ON')
		else
			Beatific_On = 0 -- equip shield defined in sets
			add_to_chat(9, 'Beatific OFF')
		end

	elseif command == 'Mecisto' then
		if Mecisto_On == 0 then
			Mecisto_On = 1	--always equip Mecisto Mantle
			add_to_chat(9, 'Mecisto ON')
		else
			Mecisto_On = 0 -- equip back defined in sets
			add_to_chat(9, 'Mecisto OFF')
		end

	elseif command == 'Info' then
		add_to_chat(9, 'RDM Info:')
		add_to_chat(9, 'SetMode = ' ..SetMode_Names[SetMode_Index])
		add_to_chat(9, 'Accuracy = ' ..Accuracy[Accuracy_Index])
		add_to_chat(9, 'Beatific_On = ' ..tostring(Beatific_On))
		add_to_chat(9, 'Mecisto_On = ' ..tostring(Mecisto_On))
		add_to_chat(9, 'MeleeLock = ' ..MeleeLock)

	end

	if command ~= 'Info' and command ~= 'Melee' then
		aftercast()
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
