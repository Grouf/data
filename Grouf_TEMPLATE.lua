--[[
		=======================
		|   T E M P L A T E   |
		=======================
]]


include('Obi_Check')  --for mages

function get_sets()

	FastCastOnlySpells = S{'Warp', 'Warp II','Escape','Tractor','Raise', 'Raise II' ,'Reraise',
		'Protect', 'Protect II', 'Protect III', 'Protect IV', 'Protect V',
		'Shell', 'Shell II', 'Shell III', 'Shell IV', 'Shell V',
		'Teleport-Dem', 'Teleport-Mea', 'Teleport-Holla', 'Teleport-Altep', 'Teleport-Yhoat', 'Teleport-Vahzl'
		}


	--Equip variables
	SetMode_Index = 1
	SetMode_Names = {'DD','DT','MDT'}		--Switch between DD and DT sets, set using user command 'SetMode'
	--#SetMode_Names    <- This outputs the number of elements
	Accuracy_Index = 1
	Accuracy = {'None', 'MidAcc', 'HighAcc'}	--Accuracy levels set with user command 'Accuracy'
	Beatific_On = 0 							--set with user command 'Beatific'; used to equip when not in MDT gear
	Mecisto_On = 1								--set with user command 'Mecisto'; default on, equip CP cape in aftercast
	MeleeLock = 'False' 						--variable used for info only, work done in self_command function

	--Job Abilities
	sets.JA = {}
	sets.JA.JA1 = {body=" "}
	sets.JA.JA2 = {hands=" "}
	sets.JA["Multi Word JA"] = { }

	sets.JA.Waltz = {ammo="Brigantia Pebble",
		head="Atro. Chapeau +2", right_ear="Soil Pearl", left_ear="Soil Pearl",
		body="Viti. Tabard +3", hands="Atrophy Gloves +2", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		back="Refraction Cape", waist="Caudata Belt", legs="Leth. Fuseau +1", feet="Atrophy Boots +2"}
		--Cure, Healing Waltz = Erase
		--CHR of caster, VIT of Target

	sets.JA.Step = {ammo="Amar Cluster",
		head="Taeon Chapeau", neck="Subtlety Spec.", left_ear="Digni. Earring", right_ear="Zennaroi Earring",
		body="Despair Mail", hands="Buremte Gloves", left_ring="Candent Ring", right_ring="Beeline Ring",
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
		head="Viti. Chapeau +2", neck="Sanctity Necklace", left_ear="Lifestorm Earring", right_ear="Etiolation Earring",
		body="Atrophy Tabard +2", hands="Serpentes Cuffs", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Fucho-no-Obi", legs="Nares Trews", feet="Serpentes Sabots"}
		--Refresh

	sets.Idle.DT = {main="Emissary",sub="Genmei Shield", ammo="Brigantia Pebble",
		head="Rabid Visor", neck="Loricate Torque +1", left_ear="Soil Pearl", right_ear="Soil Pearl",
		body="Emet Harness +1", hands="Umuthi Gloves", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Viti. Tights +1", feet="Leth. Houseaux +1"}
		-- PDT: -46%, Evasion: 655, Defense: 801

	sets.Idle.MDT = {main="Emissary",sub="Beatific Shield +1", ammo="Brigantia Pebble",
		head="Atro. Chapeau +2", neck="Loricate Torque +1", left_ear="Zennaroi Earring", right_ear="Etiolation Earring",
		body="Atrophy Tabard +2", hands="Atrophy Gloves +2", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Leth. Fuseau +1", feet="Leth. Houseaux +1"}
		-- MDB: 28, M.Eva: 421, MDT: -28%, DT: -8%, PTD: -11%, Evasion: 191


-- M A G I C --
	sets.Enfeeble = {main="Serenity", sub="Enki Strap", Range="Kaja Bow",
		head="Viti. Chapeau +2", neck="Imbodla Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Atrophy Tabard +2", hands="Leth. Gantherots +1", left_ring="Weather. Ring", right_ring="Stikini Ring",
		back="Sucellos's Cape", waist="Luminary Sash", legs="Psycloth Lappas", feet="Vitiation Boots +2"}


	sets.Enfeeble.MidAcc = sets.Enfeeble


	sets.Enfeeble.HighAcc = set_combine(sets.Enfeeble.MidAcc ,{neck="Incanter's Torque", left_ring="Stikini Ring"})

	sets.Dispel = set_combine(sets.Enfeeble.MidAcc, {back="Sucellos's Cape"})
		--Enfeeble Skill = 573
		--M.Acc = 181

	--sets.Dispel.MidAcc = set_combine(sets.Enfeeble,{})

	--sets.Dispel.HighAcc = {}


	sets.Elemental = {main="Oranyan", sub="Niobid Strap", ammo="Ghastly Tathlum",
		head="Helios Band", neck="Eddy Necklace", left_ear="Crematio Earring", right_ear="Friomisi Earring",
		body="Chironic Doublet", hands="Helios Gloves", left_ring="Strendu Ring", right_ring="Acumen Ring",
		back="Sucellos's Cape", waist="Yamabuki-no-Obi", legs="Hagondes Pants +1", feet="Helios Boots"}


	sets.Elemental.MidAcc = set_combine(sets.Elemental, {sub="Enki Strap",
		left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		left_ring="Weather. Ring", right_ring="Stikini Ring"})


	sets.Elemental.HighAcc = set_combine(sets.Elemental.MidAcc, {Range="Kaja Bow"})


	sets.DarkMagic = {main="Oranyan",sub="Enki Strap", Range="Kaja Bow",
		head="Helios Band", neck="Incanter's Torque", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Chironic Doublet", hands="Leth. Gantherots +1", left_ring="Weather. Ring", right_ring="Stikini Ring",
		back="Refraction Cape", waist="Yamabuki-no-Obi", legs="Leth. Fuseau +1", feet="Vitiation Boots +2"}

	sets.DarkMagic.MidAcc = set_combine(sets.DarkMagic, {waist="Famine Sash"})

	sets.DarkMagic.HighAcc = sets.DarkMagic.MidAcc


	sets.Cure = {main="Serenity", sub="Enki Strap", ammo="Oreiad's Tathlum",
		head="Atro. Chapeau +2", neck="Incanter's Torque", left_ear="Lifestorm Earring", right_ear="Mendi. Earring",
		body="Viti. Tabard +3", hands="Telchine Gloves", left_ring="Stikini Ring", right_ring="Stikini Ring",
		back="Pahtli Cape", waist="Luminary Sash", legs="Atrophy Tights +2", feet="Vanya Clogs"}
		--Cure Pot.: 56%, Cure casting -27%, Haste: 20%, MND: 106+216, VIT: 97+95, Healing Magic: 478

	sets.Enhancing = {main="Arendsi Fleuret", sub="Genmei Shield",
		head="Befouled Crown", neck="Incanter's Torque", left_ear="Estq. Earring", right_ear="Andoaa Earring",
		body="Viti. Tabard +3", hands="Viti. Gloves +2", left_ring="Stikini Ring",  right_ring="Stikini Ring",
		back="Ghostfyre Cape", waist="Olympus Sash", legs="Atrophy Tights +2", feet="Leth. Houseaux +1"}


	sets.EnhancingOther = set_combine(sets.Enhancing, {head="Lethargy Chappel +1",
		body="Lethargy Sayon +1", legs="Leth. Fuseau +1"})

	sets.Spikes = {main="Oranyan", sub="Niobid Strap", ammo="Ghastly Tathlum",
		head="Leth. Chappel +1", neck="Eddy Necklace", left_ear="Crematio Earring", right_ear="Friomisi Earring",
		body="Count's Garb", hands="Telchine Gloves", left_ring="Strendu Ring", right_ring="Acumen Ring",
		back="Sucellos's Cape", waist="Yamabuki-no-Obi", legs="Psycloth Lappas", feet="Inspirited Boots"}


	sets.Enspells = set_combine(sets.Enhancing, {back="Ghostfyre Cape"})



--M E L E E
	sets.DD = {main="Arendsi Fleuret", sub="Genmei Shield", ammo="Ginsen",
		head="Taeon Chapeau", neck="Asperity Necklace", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
		body="Despair Mail", hands="Atrophy Gloves +2", left_ring="Hetairoi Ring", right_ring="K'ayres Ring",
		back="Bleating Mantle", waist="Sarissapho. Belt", legs="Taeon Tights", feet="Taeon Boots"}


	sets.DD.MidAcc = set_combine(sets.DD, {neck="Sanctity Necklace", right_ring="Beeline Ring",
		back="Ground. Mantle +1", feet="Atrophy Boots +2"})

	sets.DD.HighAcc = set_combine(sets.DD.MidAcc, {ammo="Amar Cluster", neck="Subtlety Spec.",
		left_ear="Digni. Earring", right_ear="Zennaroi Earring",
		waist="Olseni Belt"})




	sets.DT = {main="Emissary", sub="Genmei Shield", ammo="Brigantia Pebble",
		head="Rabid Visor", neck="Loricate Torque +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
		body="Emet Harness +1", hands="Umuthi Gloves", left_ring="Rajas Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Viti. Tights +1", feet="Battlecast Gaiters"}

	sets.DT.MidAcc = set_combine(sets.DT, {right_ear="Heartseeker Earring", waist="Olseni Belt"})


	sets.DT.HighAcc = set_combine(sets.DT.MidAcc, {back="Ground. Mantle +1"})



	sets.MDT = {main="Emissary", sub="Beatific Shield +1", ammo="Brigantia Pebble",
		head="Atro. Chapeau +2", neck="Loricate Torque +1", left_ear="Steelflash Earring", right_ear="Zennaroi Earring",
		body="Lethargy Sayon +1", hands="Atrophy Gloves +2", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flax Sash", legs="Atrophy Tights +2", feet="Leth. Houseaux +1"}


	sets.MDT.MidAcc = set_combine(sets.MDT, {neck="Loricate Torque +1", waist="Olseni Belt"})


	sets.MDT.HighAcc = set_combine(sets.MDT.MidAcc, {back="Ground. Mantle +1"})



	sets.WS = {ammo="Paeapua",
		head="Viti. Chapeau +2", neck="Fotia Gorget", left_ear="Dudgeon Earring", right_ear="Bladeborn Earring",
		body="Viti. Tabard +3", hands="Atrophy Gloves +2", left_ring="Cho'j Band", right_ring="K'ayres Ring",
		back="Buquwik Cape", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}


	sets.WS.MidAcc = set_combine(sets.WS, {head="Sukeroku Hachi.",
		left_ear="Steelflash Earring", right_ear="Heartseeker Earring",
		hands="Umuthi Gloves", right_ring="Beeline Ring", back="Vespid Mantle", waist="Fotia Belt"})


	sets.WS.HighAcc = set_combine(sets.WS.MidAcc, {head="Taeon Chapeau", back="Ground. Mantle +1",
		waist="Olseni Belt", feet="Atrophy Boots +2"})



	--sets.WS['Specific WS'] = {ammo="Paeapua",
	--	head="Rabid Visor", neck="Fotia Gorget", left_ear="Dudgeon Earring", right_ear="Bladeborn Earring",
	--	body="Taeon Tabard", hands="Atrophy Gloves +2", left_ring="Cho'j Band", right_ring="K'ayres Ring",
	--	back="Buquwik Cape", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}
			-- DEX 80%

	--sets.WS['Specific WS'].MidAcc = {}

	--sets.WS['Specific WS'].HighAcc = {}


	set_macro_book()

	sets.DontForget = {neck="Nodens Gorget", body="Telchine Chas.", legs="Crimson Cuisses",
		right_ring="Excelsis Ring"}
	sets.DontForget2 = {main="Bolelabunga", legs="Shedir Seraweels", feet="Vanya Clogs"}


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
				--EquipSet = set_combine(EquipSet, {head="Viti. Chapeau +2"})
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
			EquipSet = set_combine(EquipSet, {body="Atrophy Tabard +2", legs="Leth. Fuseau +1"})
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
