--[[
		=======================
		|   R E D   M A G E   |
		=======================
]]

--[[
		WANTED ITEMS
	Ischemia Chasuble	-- Savage   Need for Enfeebling HighAcc, gives +6 m.acc over Lethargy body +1
]]

include('Obi_Check')

function get_sets()

	FastCastOnlySpells = S{'Warp', 'Warp II','Escape','Tractor','Raise', 'Raise II' ,'Reraise',
	--	'Protect', 'Protect II', 'Protect III', 'Protect IV', 'Protect V',
	--	'Shell', 'Shell II', 'Shell III', 'Shell IV', 'Shell V',
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
	Beatific_On = 0 							--set with user command 'Beatific'; used to equip when not in MDT gear
	Mecisto_On = 1								--set with user command 'Mecisto'; default on, equip CP cape in aftercast
	MeleeLock = 'False' 						--used for info only

	--Job Abilities
	sets.JA = {}
	sets.JA.Chainspell = {body="Viti. Tabard +3"}
	sets.JA.Saboteur = {hands="Leth. Gantherots +1"}

	sets.JA.Waltz = {ammo="Brigantia Pebble",
		head="Atro. Chapeau +2", right_ear="Soil Pearl", left_ear="Soil Pearl",
		body="Viti. Tabard +3", hands="Atrophy Gloves +2", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		back="Refraction Cape", waist="Caudata Belt", legs="Leth. Fuseau +1", feet="Atrophy Boots +2"}
		--Cure, Healing Waltz = Erase
		--CHR of caster, VIT of Target

	sets.JA.Step = {
		head="Viti. Chapeau +3", neck="Subtlety Spec.", left_ear="Digni. Earring", right_ear="Zennaroi Earring",
		body="Despair Mail", hands="Atrophy Gloves +2", left_ring="Candent Ring", right_ring="Beeline Ring",
		back="Agema Cape", waist="Olseni Belt", legs="Viti. Tights +1", feet="Atrophy Boots +2"}
		--No Weapon Primary Acc: 519
		--was neck="Iqabi Necklace" -> better to have to reduce items?  check all jobs

	sets.JA['Violent Flourish'] = {Range="Kaja Bow",
		head="Helios Band", neck="Sanctity Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Chironic Doublet", hands="Leth. Gantherots +1", left_ring="Weather. Ring", right_ring="Stikini Ring",
		back="Sucellos's Cape", waist="Famine Sash", legs="Leth. Fuseau +1", feet="Vitiation Boots +2"}
		--M.Acc = 211, No Weapon Prim.Acc = 322 ??
		--Stuns

	sets.FastCast = {main="Emissary", sub="Genmei Shield",
		head="Atro. Chapeau +2", left_ear="Estq. Earring", right_ear="Loquac. Earring",
		body="Viti. Tabard +3", hands="Gende. Gages +1", left_ring="Weather. Ring", right_ring="Prolix Ring",
		waist="Witful Belt", legs="Artsieq Hose", feet="Taeon Boots"}
			-- 61% Fast Cast, 22% Haste

	sets.Idle = {main="Bolelabunga", sub="Genmei Shield", ammo="Brigantia Pebble",
		head="Viti. Chapeau +3", neck="Sanctity Necklace", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Atrophy Tabard +3", hands="Serpentes Cuffs", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Fucho-no-Obi", legs="Nares Trews", feet="Serpentes Sabots"}
		--Refresh

	sets.Idle.DT = {main="Emissary",sub="Genmei Shield", ammo="Brigantia Pebble",
		head="Rabid Visor", neck="Twilight Torque", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Emet Harness +1", hands="Umuthi Gloves", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Viti. Tights +1", feet="Leth. Houseaux +1"}
		-- PDT: -46%, Evasion: 655, Defense: 801

	sets.Idle.MDT = {main="Emissary",sub="Beatific Shield +1", ammo="Brigantia Pebble",
		head="Atro. Chapeau +2", neck="Twilight Torque", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Atrophy Tabard +3", hands="Atrophy Gloves +2", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Leth. Fuseau +1", feet="Leth. Houseaux +1"}
		-- MDB: 28, M.Eva: 421, MDT: -28%, DT: -8%, PTD: -11%, Evasion: 191


	sets.Enfeeble = {main="Arendsi Fleuret", sub="Ammurapi Shield", Range="Kaja Bow",
		head="Viti. Chapeau +3", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Snotra Earring",
		body="Atrophy Tabard +3", hands="Leth. Gantherots +1", left_ring="Weather. Ring", right_ring="Stikini Ring",
		back="Sucellos's Cape", waist="Luminary Sash", legs="Psycloth Lappas", feet="Vitiation Boots +2"}
			--RDM/blm
			--Potency:  need update
			--Magic Accuracy:	??? (325 with weapons)
			--Enfeeble Skill:	581
			--Merit:			5+15 (hat augment)
			--JP/Gift:			65
			--Total:			??? (991)
			--MND:				106+255 = ??? (361 with weapon)
			--INT:				101+186 = 287

	--sets.Enfeeble.MidAcc = set_combine(sets.Enfeeble ,{range="Aureole"})  8
	sets.Enfeeble.MidAcc = sets.Enfeeble
			--RDM/blm
			--Mid-Acc:
			--Magic Accuracy:	??? (315 with weapons)
			--Enfeeble Skill:	581
			--Merit:			5+15 (hat augment)
			--JP/Gift:			65
			--Total:			??? (991)
			--MND:				106+255 = ??? (361 with weapon)
			--INT:				101+186 = 287

	sets.Enfeeble.HighAcc = set_combine(sets.Enfeeble.MidAcc ,{neck="Incanter's Torque", left_ring="Stikini Ring"})
			--RDM/blm
			--High-Acc:
			--Magic Accuracy:	253 (288 with staff and grip)
			--Enfeeble Skill:	582
			--Merit:			5+15 (hat augment)
			--JP/Gift:			65
			--Total:			920 (955)
			--MND:				106+211 = 317 (346 with staff and grip)
			--INT:				101+181 = 282

	--Lethargy Sayon +1 is currently best-in-slot for all enfeebles (??)
		--Ischemia Chasuble gives +6 m.Acc over Lethargy Sayon +1

	sets.Dispel = set_combine(sets.Enfeeble.MidAcc, {back="Sucellos's Cape"})
		--Enfeeble Skill = 573
		--M.Acc = 181

	--sets.Dispel.MidAcc = set_combine(sets.Enfeeble,{})

	--sets.Dispel.HighAcc = {}

	sets.Elemental = {main="Oranyan", sub="Niobid Strap", ammo="Ghastly Tathlum",
		head="Helios Band", neck="Eddy Necklace", left_ear="Crematio Earring", right_ear="Friomisi Earring",
		body="Chironic Doublet", hands="Helios Gloves", left_ring="Strendu Ring", right_ring="Acumen Ring",
		back="Sucellos's Cape", waist="Yamabuki-no-Obi", legs="Hagondes Pants +1", feet="Helios Boots"}
		--Check Umbani Boots
			--Magic Attack Bonus:	190 (223 with Weapon&Strap)
			--Magic Accuracy:		128 (148 w/Weapon&Strap)
			--Magic Damage:			36
			--INT:					101+170 = 271
			--Elemental Skill:		394
		--Count's Garb has m.Crit - find situation?

	sets.Elemental.MidAcc = set_combine(sets.Elemental, {sub="Enki Strap",
		left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		left_ring="Weather. Ring", right_ring="Stikini Ring"})
			--MAB=194, m.Acc: 120 (348 w/Weapon skill)

	sets.Elemental.HighAcc = set_combine(sets.Elemental.MidAcc, {Range="Kaja Bow"})
		--recalc--MAB=180, m.Acc: 147 (348 w/Weapon skill)

	sets.DarkMagic = {main="Oranyan",sub="Enki Strap", Range="Kaja Bow",
		head="Helios Band", neck="Incanter's Torque", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Chironic Doublet", hands="Leth. Gantherots +1", left_ring="Weather. Ring", right_ring="Stikini Ring",
		back="Refraction Cape", waist="Yamabuki-no-Obi", legs="Leth. Fuseau +1", feet="Vitiation Boots +2"}

	sets.DarkMagic.MidAcc = set_combine(sets.DarkMagic, {waist="Famine Sash"})

	sets.DarkMagic.HighAcc = sets.DarkMagic.MidAcc

	--Stun set used for both precast and midcast
	--Don't need now?
	--[[
	sets.Stun = {main="Oranyan",sub="Enki Strap",ammo="Elis Tome",
		head="Atro. Chapeau +2", neck="Incanter's Torque", left_ear="Estq. Earring", right_ear="Loquac. Earring",
		body="Viti. Tabard +3", hands="Gende. Gages +1", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Ghostfyre Cape", waist="Sailfi Belt", legs="Artsieq Hose", feet="Vitiation Boots +2"}
			--Fast Cast: 51%, Haste: 26%, M.Acc: 112 (339 w/weapon skill)
			--This used for Tojil, need to make for Magic Accuracy
	]]

	sets.Cure = {main="Serenity", sub="Enki Strap", ammo="Oreiad's Tathlum",
		head="Atro. Chapeau +2", neck="Incanter's Torque", left_ear="Lifestorm Earring", right_ear="Mendi. Earring",
		body="Viti. Tabard +3", hands="Telchine Gloves", left_ring="Stikini Ring", right_ring="Stikini Ring",
		back="Pahtli Cape", waist="Luminary Sash", legs="Atrophy Tights +2", feet="Vanya Clogs"}
		--Cure Pot.: 56%, Cure casting -27%, Haste: 20%, MND: 106+216, VIT: 97+95, Healing Magic: 478
	--try to remove serenity (replaced by Gada on BLM/GEO)

	sets.Enhancing = {main="Arendsi Fleuret", sub="Ammurapi Shield",
		head="Befouled Crown", neck="Incanter's Torque", left_ear="Estq. Earring", right_ear="Andoaa Earring",
		body="Viti. Tabard +3", hands="Viti. Gloves +2", left_ring="Stikini Ring",  right_ring="Stikini Ring",
		back="Ghostfyre Cape", waist="Olympus Sash", legs="Atrophy Tights +2", feet="Leth. Houseaux +1"}
		--skill=555}
		--Ghostfyre Cape gives Haste 17m ||  Sucellos's Cape gives Haste 16m

	sets.EnhancingOther = set_combine(sets.Enhancing, {head="Lethargy Chappel +1",
		body="Lethargy Sayon +1", legs="Leth. Fuseau +1"})

	sets.Spikes = {main="Oranyan", sub="Niobid Strap", ammo="Ghastly Tathlum",
		head="Leth. Chappel +1", neck="Eddy Necklace", left_ear="Crematio Earring", right_ear="Friomisi Earring",
		body="Count's Garb", hands="Telchine Gloves", left_ring="Strendu Ring", right_ring="Acumen Ring",
		back="Sucellos's Cape", waist="Yamabuki-no-Obi", legs="Psycloth Lappas", feet="Inspirited Boots"}
			--spike damage gear only works while equipped
			--INT at casting makes spikes do more damage: adjust above to max INT
			--formula is floor( ( INT + 50) / 12 )
			--damage cap: blaze=25, ice&lightning=15
			--based on formula need 250 INT to get blaze cap (130 for ice/lightning)
			--after cap stack MAB (not sure if carries over after gear change)
		--INT +171 (no weapon)
		--MAB 137 (no weapon)

	sets.Enspells = set_combine(sets.Enhancing, {back="Ghostfyre Cape"})



--NEED? to add weapons/shield.  based on subjob: sword&shield vs. dual wield 
	sets.DD = {main="Arendsi Fleuret", sub="Genmei Shield", ammo="Ginsen",
		head="Viti. Chapeau +3", neck="Asperity Necklace", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Despair Mail", hands="Atrophy Gloves +2", left_ring="Hetairoi Ring", right_ring="K'ayres Ring",
		back="Bleating Mantle", waist="Sarissapho. Belt", legs="Taeon Tights", feet="Taeon Boots"}
			--Acc: 917, Att: 966
			--Eva: 684, Def: 1026
			--Haste: 28
			--Double att: 14 (with melee lock Temper +24% = 38)
			--Triple att: 12 (CP cape -2% = 10%)
			--Quad. att:  0

	--[[Need to sort these out:
	*Windbuffet Belt
	*Chaac Belt
	*when using shield:  feet="Atrophy Boots +2"??
	*Emet Harness +1
	]]

	sets.DD.MidAcc = set_combine(sets.DD, {neck="Sanctity Necklace", right_ring="Beeline Ring",
		back="Grounded Mantle", feet="Atrophy Boots +2"})
			--Without Weapon/Shield: Acc: 358, Att: 267

	sets.DD.HighAcc = set_combine(sets.DD.MidAcc, {neck="Subtlety Spec.",
		right_ear="Zennaroi Earring",
		waist="Olseni Belt"})
			--Without Weapon/Shield: Acc: 396, Att: 234


	sets.DT = {main="Emissary", sub="Genmei Shield", ammo="Brigantia Pebble",
		head="Rabid Visor", neck="Twilight Torque", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Emet Harness +1", hands="Umuthi Gloves", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Viti. Tights +1", feet="Battlecast Gaiters"}
			--RDM/blm
			--Without Weapon/Shield: Acc: 258, Att: 210, EVA: 680, DEF: 786, PDT: -35%
			--need to add Emissary & Genmei Shield

	sets.DT.MidAcc = set_combine(sets.DT, {right_ear="Zennaroi Earring", waist="Olseni Belt"})
			--Without Weapon/Shield: Acc: 286, Att: 196, EVA: 680, DEF: 787, PDT: -31%

	sets.DT.HighAcc = set_combine(sets.DT.MidAcc, {back="Grounded Mantle"})
			--Without Weapon/Shield: Acc: 310, Att: 196, EVA: 680, DEF: 790, PDT: -27%

	sets.MDT = {main="Emissary", sub="Beatific Shield +1", ammo="Brigantia Pebble",
		head="Atro. Chapeau +2", neck="Twilight Torque", left_ear="Telos Earring", right_ear="Zennaroi Earring",
		body="Lethargy Sayon +1", hands="Atrophy Gloves +2", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flax Sash", legs="Atrophy Tights +2", feet="Leth. Houseaux +1"}
			--RDM/blm
			--Without Weapon/Shield: Acc: 172, Att: 165, EVA: 610, DEF: 734,
			-- MDB: 29, MDT: -13%, M.Eva: 422
			--need to add Beatific Shield +1

	sets.MDT.MidAcc = set_combine(sets.MDT, {neck="Dampener's Torque", waist="Olseni Belt"})
			--RDM/blm
			--Without Weapon/Shield: Acc: 192, Att: 160, EVA: 610, DEF: 735,
			-- MDB: 28, MDT: -11%, M.Eva: 417

	sets.MDT.HighAcc = set_combine(sets.MDT.MidAcc, {back="Grounded Mantle"})
			--RDM/blm
			--Without Weapon/Shield: Acc: 214, Att: 160, EVA: 610, DEF: 732,
			-- MDB: 28, MDT: -8%, M.Eva: 417

--Fotia belt needs adding.  need list of fTP all hit WS?
	sets.WS = {ammo="Paeapua",
		head="Viti. Chapeau +3", neck="Fotia Gorget", left_ear="Telos Earring", right_ear="Ishvara Earring",
		body="Viti. Tabard +3", hands="Atrophy Gloves +2", left_ring="Cho'j Band", right_ring="K'ayres Ring",
		back="Buquwik Cape", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}
			--Without Weapon/Shield: STR: +114, Att: 320, Acc: 177

	sets.WS.MidAcc = set_combine(sets.WS, {head="Sukeroku Hachi.",
		hands="Umuthi Gloves", right_ring="Beeline Ring", back="Vespid Mantle", waist="Fotia Belt"})
			--Without Weapon/Shield: STR: +98, Att: 302, Acc: 241

	sets.WS.HighAcc = set_combine(sets.WS.MidAcc, {right_ear="Zennaroi Earring", back="Grounded Mantle",
		waist="Olseni Belt", feet="Atrophy Boots +2"})
			--Without Weapon/Shield: STR: +88, Att: 204, Acc: 288

	--sets.WS['Chant du Cygne'] = {ammo="Paeapua",
	--	head="Rabid Visor", neck="Fotia Gorget", left_ear="Dudgeon Earring", right_ear="Bladeborn Earring",
	--	body="Taeon Tabard", hands="Atrophy Gloves +2", left_ring="Cho'j Band", right_ring="K'ayres Ring",
	--	back="Buquwik Cape", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}
			-- DEX 80%

	--sets.WS['Chant du Cygne'].MidAcc = {}

	--sets.WS['Chant du Cygne'].HighAcc = {}

	--[[sets.WS.Requiescat = set_combine(sets.WS, {head="Atro. Chapeau +2", left_ear="Lifestorm Earring",
		body="Viti. Tabard +3", left_ring="Stikini Ring", right_ring="Stikini Ring", back="Refraction Cape",
		legs="Atrophy Tights +2", feet="Vitiation Boots +2"})
		]]

	--sets.WS.Requiescat.MidAcc = {}

	--sets.WS.Requiescat.HighAcc = {}


	--[[sets.WS['Sanguine Blade'] = set_combine(sets.WS, {right_ear="Lifestorm Earring",
		left_ring="Icesoul Ring", right_ring="Spiral Ring",
		back="Refraction Cape", waist="Caudata Belt", legs="Psycloth Lappas", feet="Inspirited Boots" })
		]]
		--was feet="Umbani Boots"

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

	sets.DontForget = {neck="Nodens Gorget", body="Telchine Chas.", legs="Crimson Cuisses",
		right_ring="Excelsis Ring"}
	sets.DontForget2 = {main="Bolelabunga", legs="Shedir Seraweels", feet="Vanya Clogs"}

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
	--add_to_chat(9, 'Precast: spell=' ..spell.english.. ' spell type=' ..spell.type.. ' Skill=' ..spell.skill.. ' Prefix=' ..spell.prefix)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' and spell.english ~= 'Ranged'then
		--add_to_chat(9, 'not JobAbility, WeaponSkill, or Ranged Attack so Fast Cast')
		--if spell.english ~= 'Stun' then
			equip(sets.FastCast)
		--elseif spell.english == 'Stun' then
			--equip(sets.Stun)
			--add_to_chat(9, 'STUN set, precast')
		--end


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

		--if Accuracy[Accuracy_Index] == 'None' then  --don't need accuracy gear
			--if spell.english == 'Blind II' then
				--augment changed on tights
				--EquipSet = set_combine(EquipSet, {legs="Viti. Tights +1"})  --Augment: Enhance effect
			--elseif spell.english == 'Dia III' or spell.english == 'Slow II' then
				--EquipSet = set_combine(EquipSet, {head="Viti. Chapeau +3"})
				--***Don't need Dia/Slow test as hat always equipped when no accuracy needed***
			--elseif spell.english == 'Paralyze II' then
				--EquipSet = set_combine(EquipSet, {feet="Vitivation Boots +1"})
				--***Don't want this as Uk boots give potency
			--end
		--end

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
			EquipSet = set_combine(EquipSet, {body="Atrophy Tabard +3", legs="Leth. Fuseau +1"})
		elseif spell.english == 'Stoneskin' then
			EquipSet = set_combine(EquipSet, {waist="Siegel Sash", legs="Shedir Seraweels", neck="Nodens Gorget"})
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
			--elseif spell.english == "Bio III" then
				-- Augment changed on tights
				--EquipSet = set_combine(EquipSet, {legs="Viti. Tights +1"}) --Augment: Enhance effect
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
			EquipSet = set_combine(EquipSet, {feet="Vanya Clogs"})
		end
		if spell.english:startswith('Cur') then
			Check_for_Obi = 1
		end


	elseif spell.skill == 'Ninjutsu' then
		--don't need to check obi as will only /nin, only used for dual wield and utsusemi
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
	*Genmei Shield
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

	--
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
	--

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
		sets.Rest = set_combine(sets.Idle,{main="Chatoyant Staff",sub="Enki Strap"})
		IdleMode = 'Refresh'
		--send_command('@wait 0.2;')
		status_change(player.status)
	elseif command == 'IdleDT' then
		sets.Idle = sets.precast.IdleDT
		sets.Rest = set_combine(sets.Idle,{main="Chatoyant Staff",sub="Enki Strap"})
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
