--[[
		===========================
		|   B L A C K   M A G E   |
		===========================
]]

include('Obi_Check')

function get_sets()

	FastCastOnlySpells = S{'Warp', 'Warp II','Escape','Tractor', 'Retrace', 'Raise', 'Raise II' ,'Reraise',
	--	'Protect', 'Protect II', 'Protect III', 'Protect IV', 'Protect V',
	--	'Shell', 'Shell II', 'Shell III', 'Shell IV', 'Shell V',
		'Teleport-Dem', 'Teleport-Mea', 'Teleport-Holla', 'Teleport-Altep', 'Teleport-Yhoat', 'Teleport-Vahzl'
		}
	ElementalBarSpells = S{'Barfire', 'Barblizzard', 'Baraero', 'Barstone', 'Barthunder', 'Barwater'}
	ElementalDebuff = S{'Burn', 'Frost', 'Choke', 'Rasp', 'Shock', 'Drown'}

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
	--Beatific_On = 0 							--set with user command 'Beatific'; used to equip when not in MDT gear
	Mecisto_On = 1								--set with user command 'Mecisto'; default on, equip CP cape in aftercast
	MeleeLock = 'False' 						--used for info only

	--Job Abilities
	sets.JA = {}
	sets.JA.Manafont = {body="Arch. Coat +1"}
	sets.JA.Manawall = {body="Viti. Tabard +3"}
	--sets.JA.Saboteur = {hands="Leth. Gantherots +1"}

	sets.FastCast = {head="Nahtirah Hat", left_ear="Loquac. Earring", right_ear="Etiolation Earring",
		body="Anhur Robe",hands="Volte Gloves", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Perimede Cape",waist="Witful Belt", legs="Artsieq Hose", feet="Volte Gaiters"}
			-- 66% Fast Cast, 26% Haste, Job Trait: 30%, Gifts: 8%

	sets.Idle = {ammo="Ghastly Tathlum",
		head="Jhakri Coronal +2", neck="Loricate Torque +1", left_ear="Crematio Earring", right_ear="Etiolation Earring",
		body="Jhakri Robe +2", hands="Volte Gloves", left_ring="Acumen Ring", right_ring="Strendu ring",
		back="Mecisto. Mantle", waist="Fucho-no-Obi", legs="Nares Trews", feet="Volte Gaiters"}
		--Refresh

	sets.Idle.DT = {}

	sets.Idle.MDT = {}

	sets.ElementalDebuff = {"Arch. Tonban +1"}

	sets.Enfeeble = {ammo="Pemphredo Tathlum",
	head="Befouled Crown", neck="Imbodla Necklace", left_ear="Psystorm Earring", right_ear="Lifestorm Earring",
	body="Jhakri Robe +2", hands="Lurid Mitts", left_ring="Stikini Ring",right_ring="Stikini Ring",
	back="Refraction Cape", waist="Luminary Sash", legs="Psycloth Lappas", feet="Medium's Sabots"}
			--RDM/sch
			--Potency:  !need update
			--Magic Accuracy:	365
			--Enfeeble Skill:	586
			--Merit:			5+15 (hat augment)
			--JP/Gift:			90
			--Total:			1061
			--MND:				107+271 = ??? (361 with weapon)
			--INT:				99+206 = 287


	sets.Dispel = set_combine(sets.Enfeeble.MidAcc, {back="Sucellos's Cape"})
		--Enfeeble Skill = 573
		--M.Acc = 181

	--sets.Dispel.MidAcc = set_combine(sets.Enfeeble,{})

	--sets.Dispel.HighAcc = {}

	sets.Elemental = {ammo="Ghastly Tathlum",
	head="Jhakri Coronal +2", neck="Incanter's Torque", left_ear="Friomisi Earring", right_ear="Markaro. Earring",
	body="Jhakri Robe +2", hands="Jhakri Cuffs +2", left_ring="Strendu Ring", right_ring="Jhakri ring",
	back="Toro Cape", waist="Yamabuki-no-Obi", legs="Merlinic Shalwar", feet="Jhakri Pigaches +2"}
		--Check Umbani Boots
			--Magic Attack Bonus:	190 (223 with Weapon&Strap)
			--Magic Accuracy:		128 (148 w/Weapon&Strap)
			--Magic Damage:			36
			--INT:					99+248 = 347
			--Elemental Skill:		394
		--Count's Garb has m.Crit - find situation?

	sets.Elemental.MidAcc = set_combine(sets.Elemental, {sub="Enki Strap",
		left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		left_ring="Weather. Ring", right_ring="Stikini Ring"})
			--MAB=194, m.Acc: 120 (348 w/Weapon skill)

	sets.Elemental.HighAcc = set_combine(sets.Elemental.MidAcc, {range="Ullr", neck="Sanctity Necklace"})
		--recalc--MAB=180, m.Acc: 147 (348 w/Weapon skill)

	sets.DarkMagic = {ammo="Pemphredo Tathlum",
	head="Arch. Petasos +1", neck="Eddy Necklace", left_ear="Psystorm Earring", right_ear="Lifestorm Earring",
	body="Jhakri Robe +2", hands="Lurid Mitts", left_ring="Evanescence Ring",right_ring="Stikini Ring",
	back="Bane Cape", waist="Famine Sash", legs="Psycloth Lappas", feet="Medium's Sabots"}

	sets.DarkMagic.MidAcc = set_combine(sets.DarkMagic, {waist="Famine Sash"})

	sets.DarkMagic.HighAcc = sets.DarkMagic.MidAcc

	--Stun set used for both precast and midcast
	--Don't need now?
	--[[
	sets.Stun = {main="Oranyan",sub="Enki Strap",ammo="Elis Tome",
		head="Atrophy Chapeau +3", neck="Incanter's Torque", left_ear="Estq. Earring", right_ear="Loquac. Earring",
		body="Viti. Tabard +3", hands="Gende. Gages +1", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Ghostfyre Cape", waist="Sailfi Belt", legs="Artsieq Hose", feet="Vitiation Boots +3"}
			--Fast Cast: 51%, Haste: 26%, M.Acc: 112 (339 w/weapon skill)
			--This used for Tojil, need to make for Magic Accuracy
	]]

	sets.Cure = {ammo="Oreiad's Tathlum",
	head="Vanya Hood", neck="Nodens Gorget", left_ear="Mendi. Earring",right_ear="Lifestorm Earring",
	body="Jhakri Robe +2", hands="Telchine Gloves", left_ring="Stikini Ring",right_ring="Stikini Ring",
	back="Pahtli Cape", waist="Luminary Sash", legs="Nares Trews",feet="Vanya Clogs"}

	sets.Enhancing = {head="Befouled Crown", neck="Colossus's Torque", left_ear="Loquac. Earring", right_ear="Andoaa Earring",
	body="Telchine Chas.", hands="Augur's Gloves",
	back="Swith Cape", waist="Olympus Sash", legs="Shedir Seraweels", feet="Inspirited Boots"}


	sets.Stoneskin = {waist="Siegel Sash", legs="Shedir Seraweels", neck="Nodens Gorget", 
	right_ear="Earthcry Earring"}

	sets.Spikes = {main="Oranyan", sub="Niobid Strap",
		head="Leth. Chappel +1", neck="Eddy Necklace", left_ear="Crematio Earring", right_ear="Friomisi Earring",
		body="Atrophy Tabard +3", hands="Telchine Gloves", left_ring="Strendu Ring", right_ring="Acumen Ring",
		back="Sucellos's Cape", waist="Yamabuki-no-Obi", legs="Viti. Tights +3", feet="Inspirited Boots"}
			--spike damage gear only works while equipped
			--INT at casting makes spikes do more damage: adjust above to max INT
			--formula is floor( ( INT + 50) / 12 )
			--damage cap: blaze=25, ice&lightning=15
			--based on formula need 250 INT to get blaze cap (130 for ice/lightning)
			--after cap stack MAB (not sure if carries over after gear change)
		--INT +171 (no weapon)
		--MAB 137 (no weapon)

	sets.Enspells = set_combine(sets.Enhancing, {head="Umuthi Hat"})



--NEED? to add weapons/shield.  based on subjob: sword&shield vs. dual wield 
	sets.DD = {ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2", neck="Asperity Necklace", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Viti. Tabard +3", hands="Atrophy Gloves +3", left_ring="Hetairoi Ring", right_ring="K'ayres Ring",
		back="Bleating Mantle", waist="Sarissapho. Belt", legs="Jhakri Slops +2", feet="Atro. Boots +3"}
			--Acc: 917, Att: 966
			--Eva: 684, Def: 1026
			--Haste: 28
			--Double att: 14 (with melee lock Temper +24% = 38)
			--Triple att: 12 (CP cape -2% = 10%)
			--Quad. att:  0

	--[[Need to sort these out:
	*Windbuffet Belt
	*Chaac Belt
	*when using shield:  feet="Atro. Boots +3"??
	*Emet Harness +1
	]]

	sets.DD.MidAcc = set_combine(sets.DD, {neck="Sanctity Necklace", body="Jhakri Robe +2", right_ring="Beeline Ring",
		back="Grounded Mantle", feet="Atro. Boots +3"})
			--Without Weapon/Shield: Acc: 358, Att: 267

	sets.DD.HighAcc = set_combine(sets.DD.MidAcc, {neck="Subtlety Spec.",
		right_ear="Zennaroi Earring",
		waist="Olseni Belt"})
			--Without Weapon/Shield: Acc: 396, Att: 234


	sets.DT = {}
			--RDM/blm
			--Without Weapon/Shield: Acc: 258, Att: 210, EVA: 680, DEF: 786, PDT: -35%
			--need to add Emissary & Genmei Shield

	sets.DT.MidAcc = set_combine(sets.DT, {})
			--Without Weapon/Shield: Acc: 286, Att: 196, EVA: 680, DEF: 787, PDT: -31%

	sets.DT.HighAcc = set_combine(sets.DT.MidAcc, {})
			--Without Weapon/Shield: Acc: 310, Att: 196, EVA: 680, DEF: 790, PDT: -27%

	sets.MDT = {}
			--RDM/blm
			--Without Weapon/Shield: Acc: 172, Att: 165, EVA: 610, DEF: 734,
			-- MDB: 29, MDT: -13%, M.Eva: 422
			--need to add Beatific Shield +1

	sets.MDT.MidAcc = set_combine(sets.MDT, {})
			--RDM/blm
			--Without Weapon/Shield: Acc: 192, Att: 160, EVA: 610, DEF: 735,
			-- MDB: 28, MDT: -11%, M.Eva: 417

	sets.MDT.HighAcc = set_combine(sets.MDT.MidAcc, {})
			--RDM/blm
			--Without Weapon/Shield: Acc: 214, Att: 160, EVA: 610, DEF: 732,
			-- MDB: 28, MDT: -8%, M.Eva: 417

--Fotia belt needs adding.  need list of fTP all hit WS?
	sets.WS = {ammo="Ginsen",
		head="Viti. Chapeau +3", neck="Fotia Gorget", left_ear="Telos Earring", right_ear="Ishvara Earring",
		body="Viti. Tabard +3", hands="Atrophy Gloves +3", left_ring="Cho'j Band", right_ring="K'ayres Ring",
		back="Buquwik Cape", waist="Fotia Belt", legs="Viti. Tights +3", feet="Atro. Boots +3"}
			--Without Weapon/Shield: STR: +114, Att: 320, Acc: 177

	sets.WS.MidAcc = set_combine(sets.WS, {head="Sukeroku Hachi.",
		hands="Umuthi Gloves", right_ring="Beeline Ring", back="Vespid Mantle", waist="Fotia Belt"})
			--Without Weapon/Shield: STR: +98, Att: 302, Acc: 241

	sets.WS.HighAcc = set_combine(sets.WS.MidAcc, {right_ear="Zennaroi Earring", back="Grounded Mantle",
		waist="Olseni Belt", legs="Carmine Cuisses +1"})
			--Without Weapon/Shield: STR: +88, Att: 204, Acc: 288

	--sets.WS['Chant du Cygne'] = {ammo="Paeapua",
	--	head="Rabid Visor", neck="Fotia Gorget", left_ear="Dudgeon Earring", right_ear="Bladeborn Earring",
	--	body="Taeon Tabard", hands="Atrophy Gloves +3", left_ring="Cho'j Band", right_ring="K'ayres Ring",
	--	back="Buquwik Cape", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}
			-- DEX 80%

	--sets.WS['Chant du Cygne'].MidAcc = {}

	--sets.WS['Chant du Cygne'].HighAcc = {}

	--[[sets.WS.Requiescat = set_combine(sets.WS, {head="Atrophy Chapeau +3", left_ear="Lifestorm Earring",
		body="Viti. Tabard +3", left_ring="Stikini Ring", right_ring="Stikini Ring", back="Refraction Cape",
		legs="Atrophy Tights +3", feet="Vitiation Boots +3"})
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

	sets.DontForget = {main="Lathi", neck="Nodens Gorget", body="Telchine Chas.", legs="Carmine Cuisses +1",
			sub="Khatvanga"}
	sets.DontForget2 = {main="Bolelabunga", head="Chironic Hat", legs="Shedir Seraweels", right_ear="Earthcry Earring"}

	--[[
	sets.DontForget = {sub="Thuellaic Ecu +1", neck="Quanpur Necklace", left_ear="Reraise Earring",
		body="Telchine Chas."}
	sets.DontForget2 = {legs="Carmine Cuisses +1", right_ring="Excelsis Ring"}
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
		EquipSet = sets.FastCast
		if spell.skill == 'Elemental Magic' then
			EquipSet = set_combine(EquipSet, {feet="Spaekona's Sabots +1"})
		elseif spell.english == 'Stoneskin' then
			EquipSet = set_combine(EquipSet, {head="Umuthi Hat", legs="Doyen Pants"})
		elseif spell.english:startswith('Cur') then
			EquipSet = set_combine(EquipSet, {legs="Doyen Pants"})
		end	
		
		equip(EquipSet)
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

		--if (player.tp > 1749 and player.tp < 2000) or (player.tp > 2749 and player.tp < 3000) then
			--equip({left_ear="Moonshade Earring"})
		--	EquipSet = set_combine(EquipSet, {left_ear="Moonshade Earring"})
		--end
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
				--EquipSet = set_combine(EquipSet, {legs="Viti. Tights +3"})  --Augment: Enhance effect
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

		EquipSet = sets.Enhancing

		if spell.english:startswith('Refresh') then
			--EquipSet = set_combine(EquipSet, {body="Atrophy Tabard +3", legs="Leth. Fuseau +1"})
		elseif spell.english == 'Stoneskin' then
			--EquipSet = set_combine(EquipSet, {waist="Siegel Sash", legs="Shedir Seraweels", neck="Nodens Gorget", 
			--right_ear="Earthcry Earring"})
			EquipSet = set_combine(EquipSet, sets.Stoneskin)

			--sets.Stoneskin
		elseif spell.english == 'Aquaveil' then
			EquipSet = set_combine(EquipSet, {legs="Shedir Seraweels"})
		--elseif spell.english:startswith('Regen') then
			--EquipSet = set_combine(EquipSet, {main="Bolelabunga", body="Telchine Chas."})
		elseif spell.english:startswith('En') then
			EquipSet = sets.Enspells
		elseif spell.english:endswith('Spikes') then
			EquipSet = sets.Spikes
		elseif ElementalBarSpells:contains(spell.english) then
			EquipSet = set_combine(EquipSet, {legs="Shedir Seraweels"})
		end


	elseif spell.skill == 'Dark Magic' then
		--Aspir, Drain, Bio, Stun
		EquipSet = sets.DarkMagic

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

		if Accuracy[Accuracy_Index] == 'None' then
			if spell.english:startswith('Aspir') or spell.english == 'Drain' then
				EquipSet = set_combine(EquipSet, {waist="Fucho-no-Obi"})
			--elseif spell.english == "Bio III" then
				-- Augment changed on tights
				--EquipSet = set_combine(EquipSet, {legs="Viti. Tights +3"}) --Augment: Enhance effect
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
			EquipSet = set_combine(EquipSet, {legs="Carmine Cuisses +1"})
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

	--[[elseif command == 'Beatific' then
		if Beatific_On == 0 then
			Beatific_On = 1	--always equip Beatific Shield
			add_to_chat(9, 'Beatific ON')
		else
			Beatific_On = 0 -- equip shield defined in sets
			add_to_chat(9, 'Beatific OFF')
		end
		]]

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
	if player.sub_job == 'RDM' or player.sub_job == 'SCH' then
		send_command('input /macro book 4;wait .1;input /macro set 1')
	elseif player.sub_job == 'NIN' then
		send_command('input /macro book 5;wait .1;input /macro set 1')
	else
		send_command('input /macro book 4;wait .1;input /macro set 1')

	end
end
