--[[
		=================
		|   N I N J A   |
		=================
]]


--** Don't have any ammo slots defined in sets **--
--Date Shuriken : Emnity+3
--Grenade Core : MAB

--[[Emnity gear options
	Emet Harness +1
	Cryptic Earring
	Mochi. Kyahan +3
	Phalangite Mantle
	Kurys Gloves

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
	SetMode_Names = {'DD','DT'}		--Switch between DD and DT sets, set using user command 'SetMode'
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
	sets.JA['Mijin Gakure'] = {legs="Mochizuki Hakama +3"}

	sets.JA.Waltz = {
		head="Mochi. Hatsuburi +3", right_ear="Soil Pearl", left_ear="Soil Pearl",
		body="Mochi. Chainmail +3", hands="Mochizuki Tekko +3", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
		waist="Chaac Belt", legs="Mochi. Hakama +3", feet="Mochi. Kyahan +3"}
		--Cure, Healing Waltz = Erase
		--CHR of caster, VIT of Target

	sets.JA.Step = {head="Hizamaru Somen +2", neck="Ninja Nodowa +2", left_ear="Zennaroi Earring", right_ear="Digni. Earring",
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
		body="Taeon Tabard",hands="Herculean Gloves", left_ring="Weather. Ring", right_ring="Kishar Ring",
		back={name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Spell interruption rate down-10%'}},
		waist="Sailfi Belt +1", legs="Arjuna Breeches", feet="Mochi. Kyahan +3"}
		--33% Haste
		--48% Fast Cast
		--18% Utsusemi -casting?
	
	
	sets.Idle = {head="Hizamaru Somen +2",neck="Sanctity Necklace", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Hiza. Haramaki +2",hands="Hizamaru Kote +2", left_ring="Epona's Ring",right_ring="Hizamaru Ring",
		back="Repulse Mantle",waist="Windbuffet Belt", legs="Ryuo Hakama +1",feet="Danzo Sune-Ate"}
		--Refresh

	sets.Idle.DT = {head="Nyame Helm", neck="Loricate Torque +1", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Nyame Mail", hands="Nyame Gauntlets", left_ring="Succor Ring", right_ring="Shadow Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','Attack+10','Weapon skill damage +10%','System: 1 ID: 640 Val: 4',}}, 
		waist="Sailfi Belt +1", legs="Nyame Flanchard", feet="Nyame Sollerets"}
			-- DT: -47%, Evasion: 1088, Defense: 1365
--[[
	sets.Idle.MDT = {head="Hizamaru Somen +2",neck="Ninja Nodowa +2", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Hiza. Haramaki +2",hands="Hizamaru Kote +2", left_ring="Epona's Ring",right_ring="Hizamaru Ring",
		back="Repulse Mantle",waist="Windbuffet Belt", legs="Ryuo Hakama +1",feet="Danzo Sune-Ate"}
		-- MDB: 28, M.Eva: 421, MDT: -28%, DT: -8%, PTD: -11%, Evasion: 191
]]

-- M A G I C --
		-- Ninjitsu is used for Nuke potency, Migawari mitigation, Enfeeble Accuracy.
	sets.Buffs = {head="Hachiya Hatsu. +2", neck="Incanter's Torque", hands="Mochizuki Tekko +3", right_ring="Stikini Ring", feet="Mochi. Kyahan +3"}
		--Ninjutsu Skill = 491

	sets.Utsusemi = {hands="Mochizuki Tekko +3", 
	back={name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Spell interruption rate down-10%'}},
		feet="Hattori Kyahan +1"}

	sets.MigawariCast = set_combine(sets.Buffs, {body="Hattori Ningi +1", left_ring="Stikini Ring"})
		--Ninjutsu Skill = 489

	sets.MigawariLock = {body="Hattori Ningi +1"}

	sets.Enfeeble = {head="Mochi. Hatsuburi +3", neck="Sanctity Necklace", left_ear="Etiolation Earring", right_ear="Digni. Earring",
		body="Mochi. Chainmail +3", hands="Mochizuki Tekko +3",left_ring="Weather. Ring", right_ring="Stikini Ring",
		back={name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Spell interruption rate down-10%'}},
		legs="Mochi. Hakama +3", feet="Mochi. Kyahan +3"}  --32% Haste, 230 Magic Accuracy

	sets.Nuke = {head="Mochi. Hatsuburi +3", neck="Sanctity Necklace", left_ear="Friomisi Earring", right_ear="Crematio Earring",
		body="Gyve Doublet", hands="Nyame Gauntlets", left_ring="Dingir Ring", right_ring="Acumen Ring",
		back="Toro Cape", waist="Eschan Stone", legs="Nyame Flanchard", feet="Nyame Sollerets"}
			--Feet: feet="Mochi. Kyahan +3 Relic+3 augment gives +25% MAB  vs.  Nyame Sollerets  ::  Need to test
			--Gyve Doublet  vs.  Nyame Mail  ::  need to test

			--Grenade Core?

			--Magic Acc: 210
			--Magic Att: 240


--M E L E E

	--[[sets.Ranged = {head="Uk'uxkaj Cap",neck="Ocachi Gorget", left_ear="Clearview earring",
		right_ear="Enervating Earring", body="Mekosu. Harness", hands="Hachiya Tekko +1", left_ring="Fistmele Ring",
		right_ring="Cacoethic Ring", back="Yokaze Mantle", waist="Flax Sash",
		legs="Nahtirah Trousers", feet="Scopuli Nails +1"} ]]
		

	sets.DD = {head="Mochi. Hatsuburi +3",neck="Ninja Nodowa +2", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Mochi. Chainmail +3",hands="Mochizuki Tekko +3", left_ring="Epona's Ring",right_ring="Ilabrat Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','Attack+10','Weapon skill damage +10%','System: 1 ID: 640 Val: 4',}},
		waist="Sailfi Belt +1", legs="Ryuo Hakama +1",feet="Ryuo Sune-Ate +1"}
			-- Primary Att/Acc:  1448 / 1126
			--Secondary Att/Acc: 1291 / 1107
			-- Haste: 34%

		--mid/high acc need redo
	sets.DD.MidAcc = set_combine(sets.DD, {feet="Hiza. Sune-Ate +2"})
			-- Primary Att/Acc:  1424 / 1177
			--Secondary Att/Acc: 1263 / 1158
			-- Haste: 34%

	sets.DD.HighAcc = set_combine(sets.DD.MidAcc, {legs="Mochi. Hakama +3", feet="Mochi. Kyahan +3"})
			-- Primary Att/Acc:  1517 / 1191
			--Secondary Att/Acc: 1353 / 1172
			-- Haste: 36%


		--DT/MDT need redo
	sets.DT = {head="Nyame Helm", neck="Loricate Torque +1", left_ear="Infused Earring", right_ear="Etiolation Earring",
		body="Nyame Mail", hands="Nyame Gauntlets", left_ring="Succor Ring", right_ring="Shadow Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','Attack+10','Weapon skill damage +10%','System: 1 ID: 640 Val: 4',}}, 
		waist="Sailfi Belt +1", legs="Nyame Flanchard", feet="Nyame Sollerets"}
			-- DT: -47%, Evasion: 1088, Defense: 1365
			-- Primary Att/Acc:  1243 / 1097
			--Secondary Att/Acc: 1089 / 1078
			-- Haste: 29%

	sets.DT.MidAcc = sets.DT


	sets.DT.HighAcc = sets.DT.MidAcc

--[[
	sets.MDT = {head="Lithelimb Cap",neck="Loricate Torque +1",left_ear="Telos Earring", right_ear="Digni. earring",
		body="Mochi. Chainmail +3",hands="Hizamaru Kote +2",left_ring="Succor Ring", right_ring="Succor Ring",
		back="Yokaze Mantle",waist="Flume Belt", legs="Ryuo Hakama +1",feet="Nyame Sollerets"}


	sets.MDT.MidAcc = set_combine(sets.MDT, {neck="Loricate Torque +1", waist="Olseni Belt"})


	sets.MDT.HighAcc = set_combine(sets.MDT.MidAcc, {back="Ground. Mantle +1"})
]]


	sets.WS = {head="Hachiya Hatsu. +2", neck="Ninja Nodowa +2", left_ear="Telos Earring", right_ear="Ishvara Earring",
		body="Mochi. Chainmail +3", hands="Mochizuki Tekko +3", left_ring="Shukuyu Ring", right_ring="Ilabrat Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','Attack+10','Weapon skill damage +10%','System: 1 ID: 640 Val: 4',}},
		waist="Fotia Belt", legs="Mochi. Hakama +3", feet="Mochi. Kyahan +3"}
		
	sets.WS["Blade: Hi"] = set_combine(sets.WS.Base,{hands="Hattori Tekko +1"}) --AGI

	sets.WS["Blade: Shun"] = sets.WS.Base --DEX

	sets.WS["Blade: Kamu"] = sets.WS.Base --STR50 INT50

	sets.WS["Blade: Jin"] = sets.WS.Base --STR30 DEX30

	sets.WS["Blade: Yu"] = set_combine(sets.WS.Base,{left_ear="Friomisi Earring",
		right_ear="Crematio Earring",back="Toro Cape"}) --DEX50 INT50
	sets.WS["Blade: Ei"] = sets.WS["Blade: Yu"]
	sets.WS["Blade: To"] = sets.WS["Blade: Yu"]
	sets.WS["Blade: Teki"] = sets.WS["Blade: Yu"]

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
		if spell.english:startswith('Utsusemi') then
			equip(sets.Utsusemi)
			--add_to_chat(9, 'Utsusemi Detected')
		elseif NinjutsuNuke:contains(spell.english) then
			--add_to_chat(9, 'Nuke Detected')
			equip(sets.Nuke)
			obi_check(spell.element)
			
		elseif NinjutsuEnfeeble:contains(spell.english) then
			equip(sets.Enfeeble)
			--add_to_chat(9, 'Enfeeble Detected')
		elseif spell.english:startswith('Migawari') then
			equip(sets.MigawariCast)
			--add_to_chat(9, 'Migawari Detected')
		else
			equip(sets.Buffs)
			--add_to_chat(9, 'Other Detected, Buffs Set: ' ..spell.english)
		end
	end
end

function aftercast(spell)

	if player.status =='Engaged' then

		EquipSet = sets[SetMode_Names[SetMode_Index]]  --DD or DT sets

		if EquipSet[Accuracy[Accuracy_Index]] then
			--add_to_chat(9, 'WS Accuracy level found: ' ..Accuracy[Accuracy_Index])
			EquipSet = EquipSet[Accuracy[Accuracy_Index]]
		end

	else
		EquipSet = sets.Idle 

		if EquipSet[SetMode_Names[SetMode_Index]] then
			EquipSet = EquipSet[SetMode_Names[SetMode_Index]] --equip set.Idle.DT
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
			equip(sets.MigawariLock)
			disable('body')
			add_to_chat(9, 'Migawari ON, body disabled')
		else
			enable('body')
			add_to_chat(9, 'Migawari off, body enabled')
			aftercast()
		end
	elseif buff_name=='Futae' then
		if gain then
			equip(sets.JA.Futae)
			disable('hands')
			add_to_chat(9, 'Futae ON, hands disabled')
		else
			enable('hands')
			add_to_chat(9, 'Futae off, hands enabled')
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
