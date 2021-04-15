--[[
		=======================
		|   T E M P L A T E   |
		=======================
]]


include('Obi_Check')  --for mages

function get_sets()

	NinjutsuNuke = S{
		'Katon: Ichi','Suiton: Ichi','Doton: Ichi','Hyoton: Ichi','Huton: Ichi','Raiton: Ichi',
		'Katon: Ni','Suiton: Ni','Doton: Ni','Hyoton: Ni','Huton: Ni','Raiton: Ni',
		'Katon: San','Suiton: San','Doton: San','Hyoton: San','Huton: San','Raiton: San'
		}

	NinjutsuEnfeeble = S{
		'Hojo: Ichi','Kurayami: Ichi','Dokumori: Ichi','Jubaku: Ichi','Yurin: Ichi',
		'Hojo: Ni','Kurayami: Ni','Dokumori: Ni','Jubaku: Ni','Yurin: Ni'
		}

	--Equip variables
	SetMode_Index = 1
	SetMode_Names = {'DD','DT','MDT'}		--Switch between DD and DT sets, set using user command 'SetMode'
	--#SetMode_Names    <- This outputs the number of elements
	Accuracy_Index = 1
	Accuracy = {'None', 'MidAcc', 'HighAcc'}	--Accuracy levels set with user command 'Accuracy'
	Mecisto_On = 1								--set with user command 'Mecisto'; default on, equip CP cape in aftercast

	--Job Abilities
	sets.JA = {}
	sets.JA.Innin = {head="Hattori Zukin +1"}
	sets.JA.Yonin = {legs="Hattori Hakama +1"}
	sets.JA.Futae = {hands="Hattori Tekko +1"}
	--sets.JA.Sange = {body="Mochi. Chainmail +1"}
	sets.JA['Mijin Gakure'] = {legs="Mochizuki Hakama +1"}

	--[[sets.JA.Waltz = {ammo="Brigantia Pebble",
		head="Atro. Chapeau +2", right_ear="Soil Pearl", left_ear="Soil Pearl",
		body="Viti. Tabard +3", hands="Atrophy Gloves +2", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		back="Refraction Cape", waist="Caudata Belt", legs="Leth. Fuseau +1", feet="Atrophy Boots +2"} ]]
		--Cure, Healing Waltz = Erase
		--CHR of caster, VIT of Target

	sets.JA.Step = {head="Hizamaru Somen +2", neck="Subtlety Spec.", left_ear="Zennaroi Earring", right_ear="Digni. Earring",
		body="Mochi. Chainmail +3", hands="Hizamaru Kote +2", left_ring="Beeline Ring", right_ring="Hizamaru Ring",
		back="Ground. Mantle +1", waist="Eschan Stone", legs="Hiza. Hizayoroi +2", feet="Hiza. Sune-Ate +2"}
		--No Weapon Primary Acc: 814

	--[[ sets.JA['Violent Flourish'] = {Range="Kaja Bow",
		head="Helios Band", neck="Sanctity Necklace", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Chironic Doublet", hands="Leth. Gantherots +1", left_ring="Weather. Ring", right_ring="Stikini Ring",
		back="Sucellos's Cape", waist="Famine Sash", legs="Leth. Fuseau +1", feet="Vitiation Boots +2"} ]]
		--M.Acc = 211, No Weapon Prim.Acc = 322 ??
		--Stuns

	sets.FastCast = {head="Herculean Helm", neck="Magoraga Beads", left_ear="Etiolation Earring", right_ear="Loquac. Earring",
		body="Taeon Tabard",hands="Thaumas Gloves", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Andartia's Mantle", waist="Sailfi Belt +1", legs="Kaabnax Trousers", feet="Mochizuki Kyahan +1"}
		--34% Haste
		--40% Fast Cast
		--18% Utsusemi -casting?
	
	
	sets.Idle = {head="Hizamaru Somen +2",neck="Asperity Necklace", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Hiza. Haramaki +2",hands="Hizamaru Kote +2", left_ring="Epona's Ring",right_ring="Hizamaru Ring",
		back="Yokaze Mantle",waist="Windbuffet Belt", legs="Ryuo Hakama +1",feet="Danzo Sune-Ate"}
		--Refresh

	sets.Idle.DT = {head="Hizamaru Somen +2",neck="Asperity Necklace", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Emet Harness +1",hands="Hizamaru Kote +2", left_ring="Epona's Ring",right_ring="Hizamaru Ring",
		back="Yokaze Mantle",waist="Windbuffet Belt", legs="Ryuo Hakama +1",feet="Danzo Sune-Ate"}
		-- PDT: -46%, Evasion: 655, Defense: 801

	sets.Idle.MDT = {head="Hizamaru Somen +2",neck="Asperity Necklace", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Hiza. Haramaki +2",hands="Hizamaru Kote +2", left_ring="Epona's Ring",right_ring="Hizamaru Ring",
		back="Yokaze Mantle",waist="Windbuffet Belt", legs="Ryuo Hakama +1",feet="Danzo Sune-Ate"}
		-- MDB: 28, M.Eva: 421, MDT: -28%, DT: -8%, PTD: -11%, Evasion: 191


-- M A G I C --
	sets.Utsusemi = {body="Taeon Tabard", hands="Mochizuki Tekko +1", back="Andartia's Mantle", feet="Hattori Kyahan +1"}

	sets["Migawari: Ichi"] = {body="Hattori Ningi +1"}

	sets.Enfeeble = {head="Hachiya Hatsuburi +1", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
		body="Mochi. Chainmail +3", hands="Mochizuki Tekko +1",left_ring="Weather. Ring", right_ring="Stikini Ring",
		back="Andartia's Mantle",feet="Mochi. Kyahan +1"}  --32% Haste, 230 Magic Accuracy

	sets.Nuke = {head="Mochi. Hatsuburi +1", left_ear="Friomisi Earring", right_ear="Crematio Earring",
		body="Mochi. Chainmail +3", hands="Mochizuki Tekko +1", left_ring="Weather. Ring", right_ring="Acumen Ring",
		back="Toro Cape", feet="Mochizuki Kyahan +1"}


--M E L E E

	--[[sets.Ranged = {head="Uk'uxkaj Cap",neck="Ocachi Gorget", left_ear="Clearview earring",
		right_ear="Enervating Earring", body="Mekosu. Harness", hands="Hachiya Tekko +1", left_ring="Fistmele Ring",
		right_ring="Cacoethic Ring", back="Yokaze Mantle", waist="Flax Sash",
		legs="Nahtirah Trousers", feet="Scopuli Nails +1"} ]]
		

	sets.DD = {head="Hizamaru Somen +2",neck="Asperity Necklace", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Mochi. Chainmail +3",hands="Hizamaru Kote +2", left_ring="Epona's Ring",right_ring="Hizamaru Ring",
		back="Yokaze Mantle",waist="Windbuffet Belt", legs="Ryuo Hakama +1",feet="Ryuo Sune-Ate +1"}
		--Use Sarissaphoroi Belt
			--Use Sailfi belt +1 if augmented


	sets.DD.MidAcc = set_combine(sets.DD, {neck="Sanctity Necklace", right_ring="Beeline Ring",
		back="Ground. Mantle +1", feet="Hiza. Sune-Ate +2"})

	sets.DD.HighAcc = set_combine(sets.DD.MidAcc, {neck="Subtlety Spec.",
		left_ear="Digni. Earring", right_ear="Zennaroi Earring",
		waist="Olseni Belt"})




	sets.DT = {head="Lithelimb Cap",neck="Loricate Torque +1",left_ear="Telos Earring", right_ear="Digni. earring",
		body="Emet Harness +1",hands="Hizamaru Kote +2",left_ring="Succor Ring", right_ring="Succor Ring",
		back="Yokaze Mantle",waist="Flume Belt", legs="Ryuo Hakama +1",feet="Otronif Boots +1"}

	sets.DT.MidAcc = set_combine(sets.DT, {feet="Hiza. Sune-Ate +2"})


	sets.DT.HighAcc = set_combine(sets.DT.MidAcc, {back="Ground. Mantle +1"})



	sets.MDT = {head="Lithelimb Cap",neck="Loricate Torque +1",left_ear="Telos Earring", right_ear="Digni. earring",
		body="Mochi. Chainmail +3",hands="Hizamaru Kote +2",left_ring="Succor Ring", right_ring="Succor Ring",
		back="Yokaze Mantle",waist="Flume Belt", legs="Ryuo Hakama +1",feet="Otronif Boots +1"}


	sets.MDT.MidAcc = set_combine(sets.MDT, {neck="Loricate Torque +1", waist="Olseni Belt"})


	sets.MDT.HighAcc = set_combine(sets.MDT.MidAcc, {back="Ground. Mantle +1"})



	sets.WS = {head="Hizamaru Somen +2", neck="Fotia Gorget", left_ear="Telos Earring", right_ear="Ishvara Earring",
		body="Mochi. Chainmail +3", hands="Hizamaru Kote +2", left_ring="Shukuyu Ring", right_ring="Ilabrat Ring",
		back="Yokaze Mantle", waist="Fotia Belt", legs="Hiza. Hizayoroi +2", feet="Hiza. Sune-Ate +2"}

	sets.WS["Blade: Hi"] = set_combine(sets.WS.Base,{hands="Hattori Tekko +1"}) --AGI

	sets.WS["Blade: Shun"] = sets.WS.Base --DEX

	sets.WS["Blade: Kamu"] = sets.WS.Base --STR50 INT50

	sets.WS["Blade: Jin"] = sets.WS.Base --STR30 DEX30

	sets.WS["Blade: Yu"] = set_combine(sets.WS.Base,{left_ear="Friomisi Earring",
		right_ear="Crematio Earring",back="Toro Cape"}) --DEX50 INT50

	sets.WS.MidAcc = sets.WS


	sets.WS.HighAcc = sets.WS.MidAcc



	--sets.WS['Specific WS'] = {ammo="Paeapua",
	--	head="Rabid Visor", neck="Fotia Gorget", left_ear="Dudgeon Earring", right_ear="Bladeborn Earring",
	--	body="Taeon Tabard", hands="Atrophy Gloves +2", left_ring="Cho'j Band", right_ring="K'ayres Ring",
	--	back="Buquwik Cape", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}
			-- DEX 80%

	--sets.WS['Specific WS'].MidAcc = {}

	--sets.WS['Specific WS'].HighAcc = {}


	set_macro_book()

	--[[sets.DontForget = {neck="Nodens Gorget", body="Telchine Chas.", legs="Crimson Cuisses",
		right_ring="Excelsis Ring"}
	sets.DontForget2 = {main="Bolelabunga", legs="Shedir Seraweels", feet="Vanya Clogs"}]]


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


	if sets[spell.english] then
		equip(sets[spell.english])
		--add_to_chat(9, 'Spell name as set: ' ..spell.english)
	elseif spell.type == 'Ninjutsu' then
		--add_to_chat(9, 'Ninjutsu Detected: ' ..spell.english.. ' ' ..spell.type)
		if NinjutsuNuke:contains(spell.english) then
			equip(sets.Nuke)
			obi_check(spell.element)
			--add_to_chat(9, 'Nuke Detected')
		elseif NinjutsuEnfeeble:contains(spell.english) then
			equip(sets.Enfeeble)
			--add_to_chat(9, 'Enfeeble Detected')
		else
			equip(sets.Utsusemi)
			--add_to_chat(9, 'Other Detected, Utsusemi Set: ' ..spell.english)
		end
	end
end

function aftercast(spell)

	if player.status =='Engaged' then

		EquipSet = sets[SetMode_Names[SetMode_Index]]  --DD or DT or MDT sets

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

	else
		EquipSet = sets.Idle 

		if EquipSet[SetMode_Names[SetMode_Index]] then
			EquipSet = EquipSet[SetMode_Names[SetMode_Index]] --equip set.Idle.DT or sets.Idle.MDT
		end

	end
	if buffactive['Reive Mark'] then
		EquipSet = set_combine(EquipSet, {neck="Ygnas's Resolve +1"})
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


end -- end status_change

function buff_change(buff_name,gain)
	if buff_name == 'Reive Mark' and gain then
		equip({neck="Ygnas's Resolve +1"})
	elseif buff_name=='Migawari' then
		if gain then
			equip(sets["Migawari: Ichi"])
			disable('body')
			add_to_chat(9, 'Migawari ON, body disabled')
		else
			enable('body')
			add_to_chat(9, 'Migawari off, body enabled')
		end
	--[[elseif buff_name=='Chainspell' then
		if gain then
			equip(sets.JA.Chainspell)
			disable('body')
			add_to_chat(9, 'Chainspell ON, body disabled')
		else
			enable('body')
			add_to_chat(9, 'Chainspell off, body enabled')
		end
	elseif buff_name == 'Commitment' then
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

	elseif command == 'Mecisto' then
		if Mecisto_On == 0 then
			Mecisto_On = 1	--always equip Mecisto Mantle
			add_to_chat(9, 'Mecisto ON')
		else
			Mecisto_On = 0 -- equip back defined in sets
			add_to_chat(9, 'Mecisto OFF')
		end

	elseif command == 'Info' then
		add_to_chat(9, 'NIN Info:')
		add_to_chat(9, 'SetMode = ' ..SetMode_Names[SetMode_Index])
		add_to_chat(9, 'Accuracy = ' ..Accuracy[Accuracy_Index])
		add_to_chat(9, 'Mecisto_On = ' ..tostring(Mecisto_On))

	end

	if command ~= 'Info'then
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
		send_command('input /macro book 13;wait .1;input /macro set 1')
	elseif player.sub_job == 'DNC' then
		send_command('input /macro book 13;wait .1;input /macro set 1')
	elseif player.sub_job == 'THF' then
		send_command('input /macro book 13;wait .1;input /macro set 1')
	elseif player.sub_job == 'WAR' then
		send_command('input /macro book 13;wait .1;input /macro set 1')
	elseif player.sub_job == 'NIN' then
		send_command('input /macro book 13;wait .1;input /macro set 1')
	else
		send_command('input /macro book 13;wait .1;input /macro set 1')

	end
end
