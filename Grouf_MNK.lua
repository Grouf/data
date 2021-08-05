--[[
		=================
		|    M O N K    | 
		=================
]]

---- To Get ----
-- https://www.bg-wiki.com/bg/Kendatsuba_Garb_Set
---- 

function get_sets()

	--Equip variables
	SetMode_Index = 1
	SetMode_Names = {'DD','DT','MDT'}		--Switch between DD and DT sets, set using user command 'SetMode'
	--#SetMode_Names    <- This outputs the number of elements
	Accuracy_Index = 1
	Accuracy = {'None', 'MidAcc', 'HighAcc'}	--Accuracy levels set with user command 'Accuracy'
	Mecisto_On = 1								--set with user command 'Mecisto'; default on, equip CP cape in aftercast

	--Job Abilities
	sets.JA = {}
	sets.JA.Chakra = {ammo="Brigantia Pebble",
		head="Hizamaru Somen +2",neck="Unmoving Collar", left_ear="Soil Pearl",right_ear="Soil Pearl",
		body="Anch. Cyclas +1",hands="Hes. Gloves +3", left_ring="Terrasoul Ring",right_ring="Terrasoul Ring",
		back="Anchoret's Mantle",legs="Hiza. Hizayoroi +2",feet="Hiza. Sune-Ate +2"} 
			--VIT 109+174
	sets.JA.Counterstance = {feet="Hes. Gaiters +3"}
	sets.JA.Dodge = {feet="Anch. Gaiters +1"}
	sets.JA.Focus = {head="Anchor. Crown +1"}
	sets.JA.Boost = {hands="Anch. Gloves +1"}
	sets.JA.Impetus = {body="Bhikku Cyclas +1"}
	sets.JA.Mantra = {feet="Hes. Gaiters +3"}
	sets.JA.Footwork = {back="Segomo's Mantle", feet="Shukuyu Sune-Ate"}  --Bhikku Gaiters for more acc?
		--[[During Footwork Dragon&Tornado Kick WS use Kick Attack Damage -- need to check for footwork for '"Kick Attack" Attack']]
	sets.JA['Formless Strikes'] = {body="Hes. Cyclas +3"}
	sets.JA['Perfect Counter'] = {head="Bhikku Crown +1"}
	sets.JA['Hundred Fists'] = {legs="Hes. Hose +3"}
	
	sets.JA['Chi Blast'] = {
		head="Anchor. Crown +1", left_ear="Lifestorm Earring", 
		body="Anch. Cyclas +1", hands="Anch. Gloves +1", left_ring="Stikini Ring", right_ring="Stikini Ring",
		waist="Luminary Sash", legs="Anch. Hose +1",feet="Shukuyu Sune-Ate"}
		--MND
	

	sets.JA.Waltz = {ammo="Brigantia Pebble",
		head="Hizamaru Somen +2",neck="Unmoving Collar", left_ear="Soil Pearl",right_ear="Soil Pearl",
		body="Hiza. Haramaki +2",hands="Hizamaru Kote +2", left_ring="Terrasoul Ring",right_ring="Terrasoul Ring",
		back="Anchoret's Mantle",legs="Hiza. Hizayoroi +2",feet="Hiza. Sune-Ate +2"}
		--Cure, Healing Waltz = Erase
		--CHR of caster, VIT of Target

	sets.JA.Step = {ammo="Ginsen",
		head="Hizamaru Somen +2",neck="Unmoving Collar", left_ear="Telos Earring", right_ear="Zennaroi Earring",
		body="Hiza. Haramaki +2",hands="Hizamaru Kote +2", left_ring="Beeline Ring",right_ring="Hizamaru Ring",
		back="Anchoret's Mantle", waist="Olseni Belt", legs="Hiza. Hizayoroi +2",feet="Hiza. Sune-Ate +2"}

	sets.JA['Violent Flourish'] = set_combine(sets.JA.Step, {neck="Sanctity Necklace", 
		right_ear="Digni. Earring",
		left_ring="Weather. Ring", right_ring="Stikini Ring", 
		waist="Luminary Sash"})
		--M.Acc = 211, No Weapon Prim.Acc = 322 ??
		--Stuns

	sets.FastCast = {left_ear="Loquac. Earring", right_ear="Etiolation Earring", 
		hands="Herculean Gloves", right_ring="Prolix Ring", 
		left_ring="Weather. Ring", waist="Black Belt"}

	sets.Idle = {ammo="Brigantia Pebble",
		head="Hizamaru Somen +2",neck="Asperity Necklace", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Hiza. Haramaki +2",hands="Hizamaru Kote +2", left_ring="Epona's Ring",right_ring="Hizamaru Ring",
		back="Segomo's Mantle",waist="Windbuffet Belt", legs="Ryuo Hakama +1",feet="Ryuo Sune-Ate +1"}
		--Regen
	sets.Idle.DT = set_combine(sets.Idle, {body="Hes. Cyclas +3"} )
	sets.Idle.MDT = sets.Idle

--[[need update
	sets.Idle.DT = {ammo="Brigantia Pebble",
		head="Rabid Visor", neck="Loricate Torque +1", left_ear="Soil Pearl", right_ear="Soil Pearl",
		body="Hes. Cyclas +3", hands="Umuthi Gloves", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Viti. Tights +1", feet="Leth. Houseaux +1"}
		-- PDT: -46%, Evasion: 655, Defense: 801

	sets.Idle.MDT = {ammo="Brigantia Pebble",
		head="Atro. Chapeau +2", neck="Loricate Torque +1", left_ear="Zennaroi Earring", right_ear="Etiolation Earring",
		body="Hes. Cyclas +3", hands="Atrophy Gloves +2", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flume Belt", legs="Leth. Fuseau +1", feet="Leth. Houseaux +1"}
		-- MDB: 28, M.Eva: 421, MDT: -28%, DT: -8%, PTD: -11%, Evasion: 191
	]]


--M E L E E
	sets.DD = {ammo="Ginsen",
		head="Hizamaru Somen +2",neck="Asperity Necklace", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Hiza. Haramaki +2",hands="Hizamaru Kote +2", left_ring="Epona's Ring",right_ring="Hizamaru Ring",
		back="Segomo's Mantle",waist="Windbuffet Belt", legs="Ryuo Hakama +1",feet="Ryuo Sune-Ate +1"}


	sets.DD.MidAcc = set_combine(sets.DD, {neck="Sanctity Necklace", right_ring="Beeline Ring",
		back="Ground. Mantle +1",  feet="Hiza. Sune-Ate +2"})
		
	--[[ {ammo="Honed Tathlum",head="Whirlpool Mask",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Mekosu. Harness",hands="Hes. Gloves",
		left_ring="Beeline Ring",right_ring="Rajas Ring",back="Letalis Mantle",waist="Windbuffet Belt",
		legs="Feast Hose",feet="Nyame Sollerets"}
		]]

	sets.DD.HighAcc = set_combine(sets.DD.MidAcc, {neck="Subtlety Spec.",
		waist="Olseni Belt", legs="Hiza. Hizayoroi +2", feet="Hiza. Sune-Ate +2"})
		--ammo="Amar Cluster",    ???




	sets.DT = {} --[[ammo="Brigantia Pebble",head="Uk'uxkaj Cap",neck="Loricate Torque +1",
		left_ear="Telos Earring", right_ear="Digni. Earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",
		left_ring="Dark Ring",right_ring="Shadow Ring",back="Repulse Mantle",waist="Black Belt",
		legs="Kaabnax Trousers",feet="Nyame Sollerets"} 

	sets.DT.MidAcc = set_combine(sets.DT, {right_ear="Heartseeker Earring", waist="Olseni Belt"})


	sets.DT.HighAcc = set_combine(sets.DT.MidAcc, {back="Ground. Mantle +1"}) ]]



	sets.MDT = {} --[[main="Emissary", sub="Beatific Shield +1", ammo="Brigantia Pebble",
		head="Atro. Chapeau +2", neck="Loricate Torque +1", left_ear="Steelflash Earring", right_ear="Zennaroi Earring",
		body="Lethargy Sayon +1", hands="Atrophy Gloves +2", left_ring="Shadow Ring", right_ring="Succor Ring",
		back="Repulse Mantle", waist="Flax Sash", legs="Atrophy Tights +2", feet="Leth. Houseaux +1"}


	sets.MDT.MidAcc = set_combine(sets.MDT, {neck="Loricate Torque +1", waist="Olseni Belt"})


	sets.MDT.HighAcc = set_combine(sets.MDT.MidAcc, {back="Ground. Mantle +1"}) ]]



	sets.WS = {ammo="Knobkierrie",
		head="Hes. Crown +3", neck="Fotia Gorget", left_ear="Telos Earring", right_ear="Ishvara Earring",
		body="Hiza. Haramaki +2", hands="Hizamaru Kote +2", left_ring="Shukuyu Ring", right_ring="Niqmaddu Ring",
		back="Segomo's Mantle", waist="Fotia Belt", legs="Hiza. Hizayoroi +2", feet="Hiza. Sune-Ate +2"}


	sets.WS.MidAcc = sets.WS


	sets.WS.HighAcc = set_combine(sets.WS.MidAcc, {back="Ground. Mantle +1",
		waist="Olseni Belt"})



	--sets.WS['Specific WS'] = {ammo="Paeapua",
	--	head="Rabid Visor", neck="Fotia Gorget", left_ear="Dudgeon Earring", right_ear="Bladeborn Earring",
	--	body="Taeon Tabard", hands="Atrophy Gloves +2", left_ring="Cho'j Band", right_ring="K'ayres Ring",
	--	back="Buquwik Cape", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}
			-- DEX 80%

	--sets.WS['Specific WS'].MidAcc = {}

	--sets.WS['Specific WS'].HighAcc = {}


	set_macro_book()

	sets.DontForget = {main="Godhands"}
	sets.DontForget2 = {}


end

function precast(spell)
	if spell.type == 'Item' then
		--If using an item (eg Forbidden Key, Velkk Coffer) cancel actions. (Was changing into fast cast set)
		return
	end
	--add_to_chat(9, 'Precast: spell=' ..spell.english.. ' spell type=' ..spell.type.. ' Skill=' ..spell.skill.. ' Prefix=' ..spell.prefix)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' and spell.english ~= 'Ranged' then
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

end

function aftercast(spell)
--add_to_chat(9, 'Aftercast running')
	if player.status =='Engaged' then

		EquipSet = sets[SetMode_Names[SetMode_Index]]  --DD or DT or MDT sets

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

	else
		--add_to_chat(9, 'Aftercast: else (not engaged)')
		EquipSet = sets.Idle -- full DT/Regen set

		if EquipSet[SetMode_Names[SetMode_Index]] then
			--add_to_chat(9, 'Aftercast: DT sets check')
			EquipSet = EquipSet[SetMode_Names[SetMode_Index]] --equip set.Idle.DT or sets.Idle.MDT
		end

	end
	if buffactive['Reive Mark'] then
		--add_to_chat(9, 'Aftercast: reive mark')
		EquipSet = set_combine(EquipSet, {neck="Ygnas's Resolve +1"})
	end

	if Mecisto_On == 1 then
		--add_to_chat(9, 'Aftercast: Mecisto on')
		EquipSet = set_combine(EquipSet, {back="Mecisto. Mantle"})
	end

--add_to_chat(9, 'Aftercast: equip set next')
	equip(EquipSet)

end --end aftercast

function status_change(new,old)
	--add_to_chat(9, 'Status change: new=' ..new.. ', old=' ..old)
	aftercast()

end -- end status_change

function buff_change(buff_name,gain)
	if buff_name == 'Reive Mark' and gain then
		equip({neck="Ygnas's Resolve +1"})
	elseif buff_name=='Footwork' then
		if gain then
			equip(sets.JA.Footwork)
			disable('back', 'feet')
			add_to_chat(9, 'Footwork ON; back, feet disabled')
		else
			enable('back', 'feet')
			add_to_chat(9, 'Footwork off; back, feet enabled')
		end
	elseif buff_name=='Impetus' then
		if gain then
			equip(sets.JA.Impetus)
			disable('body')
			add_to_chat(9, 'Impetus ON; body disabled')
		else
			enable('body')
			add_to_chat(9, 'Impetus off; body enabled')
		end
	elseif buff_name=='Perfect Counter' then
		if gain then
			equip(sets.JA['Perfect Counter'])
			disable('head')
			add_to_chat(9, 'Perfect Counter ON; head disabled')
		else
			enable('head')
			add_to_chat(9, 'Perfect Counter off; head enabled')
		end

	elseif buff_name=='Hundred Fists' then
		if gain then
			equip(sets.JA['Hundred Fists'])
			disable('legs')
			add_to_chat(9, 'Hundred Fists ON, legs disabled')
		else
			enable('legs')
			add_to_chat(9, 'Hundred Fists off, legs enabled')
		end
	--[[elseif buff_name == 'Commitment' then
		add_to_chat(4, 'Commitment gone.')
		add_to_chat(9, 'Commitment gone.')]]
	end
	
	aftercast()

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

	elseif command == 'Mecisto' then
		if Mecisto_On == 0 then
			Mecisto_On = 1	--always equip Mecisto Mantle
			add_to_chat(9, 'Mecisto ON')
		else
			Mecisto_On = 0 -- equip back defined in sets
			add_to_chat(9, 'Mecisto OFF')
		end

	elseif command == 'Info' then
		add_to_chat(9, 'MNK Info:')
		add_to_chat(9, 'SetMode = ' ..SetMode_Names[SetMode_Index])
		add_to_chat(9, 'Accuracy = ' ..Accuracy[Accuracy_Index])
		add_to_chat(9, 'Mecisto_On = ' ..tostring(Mecisto_On))

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
	if player.sub_job == 'WAR' then
		send_command('input /macro book 2;wait .1;input /macro set 10')
	elseif player.sub_job == 'DNC' then
		send_command('input /macro book 2;wait .1;input /macro set 9')
	elseif player.sub_job == 'RUN' then
		send_command('input /macro book 2;wait .1;input /macro set 8')
	else
		send_command('input /macro book 2;wait .1;input /macro set 10')
	end
end
