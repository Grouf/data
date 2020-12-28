--[[
		=========================
		|   G E O M A N C E R   |
		=========================
]]


include('Obi_Check')  --for mages

function get_sets()

	FastCastOnlySpells = S{'Warp', 'Warp II','Escape','Tractor','Raise', 'Raise II' ,'Reraise',
		'Teleport-Dem', 'Teleport-Mea', 'Teleport-Holla', 'Teleport-Altep', 'Teleport-Yhoat', 'Teleport-Vahzl'
		}

	--Equip variables
	SetMode_Index = 1
	SetMode_Names = {'DD','DT','MDT'}		--Switch between DD and DT sets, set using user command 'SetMode'
		
	--#SetMode_Names    <- This outputs the number of elements
	Accuracy_Index = 1
	Accuracy = {'None', 'MidAcc', 'HighAcc'}	--Accuracy levels set with user command 'Accuracy'

	Mecisto_On = 1								--set with user command 'Mecisto'; default on, equip CP cape in aftercast
	MeleeLock = 'False' 						--variable used for info only, work done in self_command function
	LuopanActive = 'False'
		--For Modes.lua
		--SetMode = M{['description']='DD/DT/MDT', 'DD', 'DT', 'MDT'}
		--Accuracy = M{['description']='Accuracy', 'None', 'MidAcc', 'HighAcc'}	
		--Mecisto_On = M(true, 'Mecisto Cape')
		--MeleeLock = M(false, 'Melee Lock')

	--Job Abilities
	sets.JA = {}
	--sets.JA['Collimated Fervor'] = {head="Bagua Galero +3"} --don't have merited
	sets.JA.Bolster = {body="Bagua Tunic +3"}
	sets.JA['Full Circle'] = {head="Azimuth Hood +1"}
	--sets.JA['Mending Halation'] = {legs="Bagua Pants +2"} --Not merited
	sets.JA['Radial Arcana'] = {feet="Bagua Sandals +2"}
	sets.JA['Life Cycle'] = {body="Geomancy Tunic +3", back="Nantosuelta's Cape"}

	sets.FastCast = {main="Idris",sub="Genmei Shield", range="Dunna",
		head="Nahtirah Hat", left_ear="Loquac. Earring", right_ear="Etiolation Earring",
		body="Anhur Robe", hands="Volte Gloves", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Lifestream Cape", waist="Witful Belt",legs="Geomancy Pants +2",feet="Regal Pumps"}  --Fast Cast = 56%

	sets.IdleRefresh = {main="Idris",sub="Genmei Shield",range="Dunna",
		head="Bagua Galero +3", neck="Loricate Torque +1", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Geomancy Tunic +3", hands="Bagua Mitaines +3", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Mecisto. Mantle",	waist="Fucho-no-Obi", legs="Nares Trews", feet="Geo. Sandals +3"}

	sets.IdleLuopan = {main="Idris", sub="Genmei Shield", range="Dunna",
		head="Bagua Galero +3", neck="Loricate Torque +1", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Geomancy Tunic +3", hands="Geo. Mitaines +3", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Mecisto. Mantle",	waist="Fucho-no-Obi", legs="Geomancy Pants +2", feet="Bagua Sandals +2"}


-- M A G I C --

	sets.Geomancy = {main="Idris",sub="Genmei Shield" ,range="Dunna",
		head="Azimuth Hood +1", neck="Incanter's Torque", right_ear="Gifted Earring", left_ear="Calamitous Earring",
		body="Bagua Tunic +3", hands="Geo. Mitaines +3",left_ring="Stikini Ring",right_ring="Stikini Ring",
		back="Nantosuelta's Cape",	waist="Luminary Sash", legs="Bagua Pants +2", feet="Azimuth Gaiters +1"}
			--Geomancy Skill:	480
			--Handbell Skill:	450
			--Total:			930
			--Conserve MP:		11
		--Merlinic Crackows if not Indi spell?
		--Reti Pendant for Conserve MP? :: need to check skill
		--Thaumaturge's Cape for Conserve MP? :: need to check skill

	sets.Enfeeble = {main="Gada", sub="Ammurapi Shield", range="Dunna",
		head="Bagua Galero +3", neck="Imbodla Necklace",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",
		body="Bagua Tunic +3", hands="Azimuth Gloves +1", left_ring="Stikini Ring", right_ring="Stikini Ring",
		back="Aurist's Cape", waist="Luminary Sash",legs="Psycloth Lappas",feet="Geo. Sandals +3"}


	sets.Enfeeble.MidAcc = sets.Enfeeble


	sets.Enfeeble.HighAcc = set_combine(sets.Enfeeble.MidAcc ,{neck="Incanter's Torque"})


	sets.Elemental = {main="Idris", sub="Ammurapi Shield", ammo="Ghastly Tathlum",
	head="Jhakri Coronal +2", neck="Eddy Necklace", left_ear="Crematio Earring", right_ear="Friomisi Earring",
	body="Bagua Tunic +3", hands="Bagua Mitaines +3",left_ring="Acumen Ring",right_ring="Jhakri ring",
	back="Toro Cape", waist="Yamabuki-no-Obi", legs="Bagua Pants +2", feet="Jhakri Pigaches +2"}
		--				Jhakri
		--INT +197		+207
		--M.Acc 204		259
		--MAB 300		342

--sets.midcast.ElementalMagic.MidAcc = { hands=Jhakri, Body=Jhakri, pants=Jhakri }

--[[
	sets.Elemental.MidAcc = set_combine(sets.Elemental, {sub="Enki Strap",
		left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		left_ring="Weather. Ring", right_ring="Stikini Ring"})


	sets.Elemental.HighAcc = set_combine(sets.Elemental.MidAcc, {Range="Kaja Bow"})
]]


	sets.DarkMagic = {main="Idris", sub="Ammurapi Shield", ammo="Dunna",
		head="Bagua Galero +3", neck="Erra Pendant",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",
		body="Geomancy Tunic +3", hands="Bagua Mitaines +3",left_ring="Evanescence Ring",right_ring="Stikini Ring",
		back="Aurist's Cape", waist="Luminary Sash",legs="Azimuth Tights +1",feet="Geo. Sandals +3"}

	sets.Cure = {main="Gada", sub="Ammurapi Shield", ammo="Oreiad's Tathlum",
		head="Vanya Hood", neck="Nodens Gorget",left_ear="Mendi. Earring",right_ear="Lifestorm Earring",
		body="Geomancy Tunic +3", hands="Telchine Gloves",left_ring="Stikini Ring",right_ring="Stikini Ring",
		back="Pahtli Cape", waist="Luminary Sash",legs="Doyen Pants",feet="Vanya Clogs"}
		--MND=111+206, Cure Pot.=60% 

	sets.Enhancing = {main="Gada", sub="Ammurapi Shield",
		head="Befouled Crown", neck="Incanter's Torque",left_ear="Loquac. Earring", right_ear="Andoaa Earring",
		body="Telchine Chas.", hands="Augur's Gloves", left_ring="Stikini Ring", right_ring="Stikini Ring", 
		waist="Olympus Sash",legs="Shedir Seraweels", feet="Regal Pumps"}
	
	sets.Stoneskin = set_combine(sets.Enhancing, {neck="Nodens Gorget", left_ear="Earthcry Earring", waist="Siegel Sash"})
	sets.Regen = set_combine(sets.Enhancing, {main="Bolelabunga", body="Telchine Chas."})
	sets.Refresh = set_combine(sets.Enhancing, {main="Bolelabunga", feet="Inspirited Boots"})
	--sets.Aquaveil = set_combine(sets.Enhancing, {head="Chironic Had"})



--M E L E E
	sets.DD = {main="Idris", sub="Genmei Shield", range="Dunna",
		head="Jhakri Coronal +2", neck="Asperity Necklace", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Jhakri Robe +2", hands="Jhakri Cuffs +2", left_ring="Hetairoi Ring", right_ring="Jhakri Ring",
		back="Buquwik Cape", waist="Windbuffet Belt", legs="Jhakri Slops +2", feet="Jhakri Pigaches +2"}
		--				Jhakri
		--Acc: 895		1024
		--Att: 923		1203
		--Eva: 681		533
		--Def: 1091		927

	--sets.DD.MidAcc = set_combine(sets.DD, {neck="Sanctity Necklace", right_ring="Beeline Ring",
	--	back="Grounded Mantle", feet="Atrophy Boots +2"})

	--sets.DD.HighAcc = set_combine(sets.DD.MidAcc, {ammo="Amar Cluster", neck="Subtlety Spec.",
	--	left_ear="Digni. Earring", right_ear="Zennaroi Earring",
	--	waist="Olseni Belt"})



	--[[
	sets.DT = {main="Emissary", sub="Genmei Shield", ammo="Brigantia Pebble",
		head="Rabid Visor", neck="Loricate Torque +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
		body="Emet Harness +1", hands="Umuthi Gloves", left_ring="Rajas Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Viti. Tights +1", feet="Battlecast Gaiters"}

	sets.DT.MidAcc = set_combine(sets.DT, {right_ear="Heartseeker Earring", waist="Olseni Belt"})


	sets.DT.HighAcc = set_combine(sets.DT.MidAcc, {back="Grounded Mantle"})



	sets.MDT = {main="Emissary", sub="Beatific Shield +1", ammo="Brigantia Pebble",
		head="Atro. Chapeau +2", neck="Loricate Torque +1", left_ear="Steelflash Earring", right_ear="Zennaroi Earring",
		body="Lethargy Sayon +1", hands="Atrophy Gloves +2", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flax Sash", legs="Atrophy Tights +2", feet="Leth. Houseaux +1"}


	sets.MDT.MidAcc = set_combine(sets.MDT, {neck="Loricate Torque +1", waist="Olseni Belt"})


	sets.MDT.HighAcc = set_combine(sets.MDT.MidAcc, {back="Grounded Mantle"})
	]]


	sets.WS = set_combine(sets.DD, {head="Sukeroku Hachi.", neck="Fotia Gorget", right_ear="Ishvara Earring", 
		right_ring="Cho'j Band", waist="Fotia Belt"})

	--sets.WS = {ammo="Paeapua",
	--	head="Viti. Chapeau +2", neck="Fotia Gorget", left_ear="Dudgeon Earring", right_ear="Bladeborn Earring",
	--	body="Viti. Tabard +3", hands="Atrophy Gloves +2", left_ring="Cho'j Band", right_ring="K'ayres Ring",
	--	back="Buquwik Cape", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}


	--sets.WS.MidAcc = set_combine(sets.WS, {head="Sukeroku Hachi.",
	--	left_ear="Steelflash Earring", right_ear="Heartseeker Earring",
	--	hands="Umuthi Gloves", right_ring="Beeline Ring", back="Vespid Mantle", waist="Fotia Belt"})


	--sets.WS.HighAcc = set_combine(sets.WS.MidAcc, {head="Taeon Chapeau", back="Grounded Mantle",
	--	waist="Olseni Belt", feet="Atrophy Boots +2"})



	--sets.WS['Specific WS'] = {ammo="Paeapua",
	--	head="Rabid Visor", neck="Fotia Gorget", left_ear="Dudgeon Earring", right_ear="Bladeborn Earring",
	--	body="Taeon Tabard", hands="Atrophy Gloves +2", left_ring="Cho'j Band", right_ring="K'ayres Ring",
	--	back="Buquwik Cape", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}
			-- DEX 80%

	--sets.WS['Specific WS'].MidAcc = {}

	--sets.WS['Specific WS'].HighAcc = {}


	set_macro_book()

	sets.DontForget = {head="Umuthi Hat", body="Telchine Chas.", legs="Doyen Pants"}
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

		--[[if (player.tp > 1749 and player.tp < 2000) or (player.tp > 2749 and player.tp < 3000) then
			--equip({left_ear="Moonshade Earring"})
			EquipSet = set_combine(EquipSet, {left_ear="Moonshade Earring"})
		end]]
		if buffactive['Reive Mark'] then
			EquipSet = set_combine(EquipSet, {neck="Ygnas's Resolve +1"})
		end

		equip(EquipSet)

	elseif spell.prefix == "/jobability" then
		add_to_chat(9, 'spell.prefix = /jobability: ' ..spell.english)
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
	
	elseif spell.skill == 'Geomancy' then
		equip(sets.Geomancy)

	elseif spell.skill == 'Enfeebling Magic' then

		EquipSet = sets.Enfeeble
		
		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

		if spell.english:startswith('Dia') then
			Check_for_Obi = 1
		end


	elseif spell.skill == 'Enhancing Magic' then
		--add_to_chat(9, 'Casting spell: ' ..spell.english.. ' on ' ..spell.target.name.. ' with '
		--	..SetMode_Names[SetMode_Index])

		add_to_chat(9, 'Enhancing Magic: ')
		if sets[spell.english] then
			EquipSet = sets[spell.english]
			add_to_chat(9, 'Found: Sets.' ..spell.english)
		else
			add_to_chat(9, 'No specific set found: ' ..spell.english)
			EquipSet = sets.Enhancing
		end


	elseif spell.skill == 'Dark Magic' then
		EquipSet = sets.DarkMagic

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
	
	else
		add_to_chat(14, 'end of midcast, no conditions found: ' ..spell.english)

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

	if player.status == 'Engaged' then

		EquipSet = sets[SetMode_Names[SetMode_Index]]  --DD or DT or MDT sets

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

	else
		if LuopanActive
			EquipSet = sets.IdleLuopan
		else	
			EquipSet = sets.IdleRefresh -- full refresh set
		end

		if EquipSet[SetMode_Names[SetMode_Index]] then
			EquipSet = EquipSet[SetMode_Names[SetMode_Index]] --equip set.Idle.DT or sets.Idle.MDT
		end
	end

	if buffactive['Reive Mark'] then
		EquipSet = set_combine(EquipSet, {neck="Ygnas's Resolve +1"})
	end

	--[[if Beatific_On == 1 and SetMode_Names[SetMode_Index] ~= 'MDT' then
		EquipSet = set_combine(EquipSet, {sub="Beatific Shield +1"})
	end]]

	if Mecisto_On == 1 then
		EquipSet = set_combine(EquipSet, {back="Mecisto. Mantle"})
	end

	equip(EquipSet)

end --end aftercast

function pet_change(pet,gain)
	windower.add_to_chat(14, 'Pet_Change: ' ..pet.name.. ' gain? ' ..tostring(gain))
	--pet.name = 'Luopan'
	if gain then --pet casted
		LuopanActive = 'True'
		if player.status ~= 'Engaged' then
			EquipSet = sets.IdleLuopan
		end
	else
		LuopanActive = 'False'
	end
	
end --pet_change

function pet_status_change(new,old)
	windower.add_to_chat(14, 'Pet_Status_Change: new:' ..new.. ' || old: ' ..old)
	--luapan sits in 'Idle' status
	--on death status is 'Engaged dead'
end --pet_status_change

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
	
	--[[ no JAs need a 100% on item, all JA I use are instant
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
	]]
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

	elseif command == 'Mecisto' then
		if Mecisto_On == 0 then
			Mecisto_On = 1	--always equip Mecisto Mantle
			add_to_chat(9, 'Mecisto ON')
		else
			Mecisto_On = 0 -- equip back defined in sets
			add_to_chat(9, 'Mecisto OFF')
		end

	elseif command == 'Info' then
		add_to_chat(9, 'GEO Info:')
		add_to_chat(9, 'SetMode = ' ..SetMode_Names[SetMode_Index])
		add_to_chat(9, 'Accuracy = ' ..Accuracy[Accuracy_Index])
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
	if player.sub_job == 'RDM' then
		send_command('input /macro book 20;wait .1;input /macro set 1')
	elseif player.sub_job == 'SCH' then
		send_command('input /macro book 20;wait .1;input /macro set 1')
	else
		send_command('input /macro book 20;wait .1;input /macro set 1')

	end
end
