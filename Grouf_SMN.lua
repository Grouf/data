--[[
		=======================
		|   S U M M O N E R   |
		=======================
]]

include('Obi_Check')

function get_sets()

	AvatarList = S{"Shiva","Ramuh","Garuda","Leviathan","Diabolos","Titan","Fenrir","Ifrit","Carbuncle",
        "Fire Spirit","Air Spirit","Ice Spirit","Thunder Spirit","Light Spirit","Dark Spirit","Earth Spirit","Water Spirit",
        "Cait Sith","Alexander","Odin","Atomos"}

	Physical_BPs = S{"Punch", "Rock Throw", "Barracuda Dive", "Claw", "Axe Kick", "Shock Strike", "Camisado",
		"Poison Nails", "Moonlit Charge", "Crescent Fang", "Rock Buster", "Tail Whip", "Double Punch",
		"Megalith Throw", "Double Slap", "Eclipse Bite", "Mountain Buster", "Spinning Dive", "Predator Claws",
		"Rush", "Chaotic Strike", "Regal Scratch" }

	Magical_BPs = S{"ThunderSpark", "Burning Strike", "Meteorite", "Nether Blast", "Flaming Crush", "Meteor Strike",
		"Geocrush", "Grand Fall", "Wind Blade", "Heavenly Strike", "Thunderstorm", "Holy Mist", "Lunar Bay",
		"Night Terror", "Level ? Holy", "Fire II", "Stone II", "Water II", "Aero II", "Blizzard II",
		"Thunder II", "Fire IV", "Stone IV", "Water IV", "Aero IV", "Blizzard IV", "Thunder IV",
		"Conflag Strike"}

	Buff_BPs = S{"Healing Ruby", "Raise II", "Reraise II", "Shining Ruby", "Aerial Armor", "Frost Armor",
		"Rolling Thunder", "Whispering Wind", "Crimson Howl", "Lightning Armor", "Ecliptic Growl", "Glittering Ruby",
		"Earthen Ward", "Spring Water", "Hastega", "Noctoshield", "Ecliptic Howl", "Dream Shroud", "Healing Ruby II",
		"Earthen Armor", "Fleet Wind", "Inferno Howl", "Soothing Ruby", "Heavenward Howl", "Hastega II" }

	Debuff_BPs = S{"Mewing Lullaby", "Eerie Eye", "Somnolence", "Lunar Cry", "Nightmare", "Lunar Roar", "Slowga",
		"Ultimate Terror", "Sleepga", "Tidal Roar", "Diamond Storm", "Shock Squall", "Pavor Nocturnus" }

	SP_BPs = S{"Inferno", "Earthen Fury", "Tidal Wave", "Aerial Blast", "Diamond Dust", "Judgment Bolt", "Searing Light",
		"Howling Moon", "Ruinous Omen", "Zantetsuken", "Perfect Defense", "Altana's Favor"}

	sets.precast = {}

	sets.precast.FastCast = {main="Marin Staff +1",sub="Arbuda Grip",
		head="Nahtirah Hat", left_ear="Loquac. Earring",
		body="Anhur Robe", left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Swith Cape", waist="Witful Belt", legs="Artsieq Hose", feet="Hag. Sabots +1"}
			--Fast Cast = 38%
			--Haste = 21%

	sets.precast.IdleRefresh = {main="Bolelabunga", sub="Genbu's Shield",ammo="Seraphicaller",
		head="Convoker's Horn",neck="Caller's Pendant",left_ear="Caller's Earring",right_ear="Graiai Earring",
		body="Hagondes Coat +1",hands="Serpentes Cuffs",left_ring="Bifrost Ring",right_ring="Sangoma Ring",
		back="Conveyance Cape", waist="Fucho-no-Obi",legs="Assiduity Pants",feet="Serpentes Sabots"}

	sets.precast.IdleAvatar = {main="Gridarvor", sub="Mephitis Grip", ammo="Seraphicaller",
		head="Glyphic Horn", neck="Caller's Pendant",left_ear="Caller's Earring",right_ear="Graiai Earring",
		body="Hagondes Coat +1", hands="Glyphic Bracers",left_ring="Bifrost Ring",right_ring="Sangoma Ring",
		back="Samanisi Cape", waist="Caller's Sash", legs="Convoker's Spats", feet="Con. Pigaches"}
			--Perp. cost: -17

	sets.BloodPactDelay = {main="Eminent Pole", sub="Mephitis Grip",ammo="Seraphicaller",
		head="Convoker's Horn", left_ear="Caller's Earring",
		body="Glyphic Doublet", hands="Glyphic Bracers",
		back="Samanisi Cape", legs="Glyphic Spats", feet="Glyphic Pigaches"}
		--Blood pact delay    = 26
		--Blood pact delay II = 6
	--Blood pact ability delay cap is -15

	sets.precast.Idle = sets.precast.IdleRefresh

	sets.precast.Rest = set_combine(sets.precast.IdleRefresh, {main="Chatoyant Staff"})


--Midcast
	--sets.midcast = {}

	sets.Cure = {main="Tamaxchi",sub="Genbu's Shield",
		head="Kaabnax Hat", neck="Imbodla Necklace",left_ear="Loquac. Earring",right_ear="Lifestorm Earring",
		body="Hagondes Coat +1", hands="Telchine Gloves",left_ring="Sirona's Ring", right_ring="Solemn Ring",
		back="Pahtli Cape", waist="Witch Sash", legs="Nares Trews", feet="Umbani Boots"}

	--[[sets.midcast.Enfeeble = {main="Marin Staff +1",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabnax Hat",
		neck="Imbodla Necklace",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat +1",
		hands="Hagondes Cuffs +1",left_ring="Irrwisch Ring",right_ring="Sangoma Ring",back="Refraction Cape",
		waist="Yamabuki-no-Obi",legs="Mes'yohi Slacks",feet="Hagondes Sabots"} ]]

	sets.SummoningSkill = {main="Patriarch Cane",sub="Genbu's Shield",ammo="Seraphicaller",
		head="Convoker's Horn", neck="Caller's Pendant",
		body="Anhur Robe", hands="Glyphic Bracers",
		back="Conveyance Cape", legs="Caller's Spats +2", feet="Rubeus Boots"}	--Summoning Skill:	+82

	sets.BloodPactPhysical = {main="Gridarvor",sub="Mephitis Grip",ammo="Seraphicaller",
		head="Convoker's Horn", neck="Caller's Pendant",left_ear="Caller's Earring",right_ear="Graiai Earring",
		body="Convoker's Doublet", hands="Glyphic Bracers",left_ring="Bifrost Ring",right_ring="Sangoma Ring",
		back="Samanisi Cape", waist="Jaq'ij Sash",legs="Convoker's Spats",feet="Glyphic Pigaches"}

	sets.BloodPactMagical = {main="Eminent Pole",sub="Mephitis Grip",ammo="Seraphicaller",
		head="Glyphic Horn", neck="Caller's Pendant",left_ear="Caller's Earring",right_ear="Graiai Earring",
		body="Convoker's Doublet", hands="Glyphic Bracers",left_ring="Bifrost Ring",right_ring="Sangoma Ring",
		back="Samanisi Cape", waist="Caller's Sash",legs="Glyphic Spats",feet="Hag. Sabots +1"}

	--sets.midcast.BloodPactSP

	sets.Enhancing = {head="Umuthi Hat", body="Telchine Chas.", neck="Colossus's Torque", hands="Augur's Gloves",
		left_ear="Loquac. Earring",
		waist="Olympus Sash", legs="Shedir Seraweels"}

	--[[sets.midcast.ElementalMagic = {main="Marin Staff +1",sub="Elder's Grip",head="Buremte Hat",
		neck="Stoicheion Medal",left_ear="Hecate's Earring",right_ear="Friomisi Earring",body="Hagondes Coat +1",
		hands="Hagondes Cuffs +1",left_ring="Acumen Ring",right_ring="Strendu ring",back="Toro Cape",
		waist="Yamabuki-no-Obi",legs="Hagondes Pants +1",feet="Weath. Souliers +1"} ]]

--Job Ability--
	sets.JA = {}
	sets.JA['Astral Flow'] = {head="Glyphic Horn"}
	sets.JA["Elemental Siphon"] = set_combine(sets.SummoningSkill, {feet="Caller's Pgch. +2"})
	sets.JA["Avatar's Favor"] = {head="Caller's Horn +2"}

	send_command('input /macro book 15;wait .1;input /macro set 10')

end
 --spell.type==BloodPactWard, BloodPactRage, prefix="/pet"
 --spell.english="Avatar's Favor", spell.type="PetCommand"
function precast(spell)
	--add_to_chat(9, 'Precast: spell=' ..spell.english.. ', spell.type= ' ..spell.type.. ', spell.prefix='
	--	..spell.prefix.. ' spell.skill=' ..spell.skill)
	if spell.prefix ~= '/jobability' and spell.prefix ~= '/pet' and spell.type ~= 'WeaponSkill' then
		equip(sets.precast.FastCast)
		if spell.english == 'Stoneskin' then
			equip({head="Umuthi Hat"})
		end

	elseif spell.prefix=="/pet" then
		equip(sets.BloodPactDelay)

	elseif spell.prefix=="/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end

	elseif spell.type=="WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS.Base)
		end
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end
	end
end

function midcast(spell)
	--add_to_chat(9, 'Midcast: ' ..spell.english)
	if spell.prefix == '/jobability' or spell.prefix == '/pet' or spell.type == 'WeaponSkill' then
	--midcast doesn't exist for JA or WS so cancel the processing of this function
	--	/pet mid cast is handled in pet_midcast()
		--add_to_chat(9, 'JobAbility or /pet or WeaponSkill; Midcast cancelled')
		return
	end

	if spell.skill == 'Enhancing Magic' then
		equip(sets.Enhancing)
		if spell.english == 'Stoneskin' then
			equip({waist="Siegel Sash", neck="Stone Gorget"})
		end
	elseif spell.skill == 'Healing Magic' then
		equip(sets.Cure)
		if spell.english:startswith('Cur') then
			obi_check(spell.element)
		end
	end
end

function aftercast(spell)
	--windower.add_to_chat(9, 'Aftercast: ' ..spell.english)
	if player.status == 'Idle' then
		equip(sets.precast.Idle)
	elseif player.status == 'Resting' then
		equip(sets.precast.Rest)
	--elseif player.status == 'Engaged' then
		--equip(sets.TP)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function pet_change(pet,gain)
	--windower.add_to_chat(9, 'Pet_Change: ' ..pet.name.. ' gain? ' ..tostring(gain))
	--pet.name = ???

	if gain then --pet casted
		sets.precast.Idle = sets.precast.IdleAvatar
		--windower.add_to_chat(9, pet.name.. ' summoned, Idle=IdleAvatar')
		if pet.name == "Carbuncle" then
			send_command('input /macro book 15;wait .1;input /macro set 1')
		--elseif pet.name == "Cait Sith" then
		elseif pet.name == "Fenrir" then
			send_command('input /macro book 15;wait .1;input /macro set 8')
		elseif pet.name == "Ifrit" then
			send_command('input /macro book 15;wait .1;input /macro set 3')
		elseif pet.name == "Titan" then
			send_command('input /macro book 15;wait .1;input /macro set 4')
		elseif pet.name == "Leviathan" then
			send_command('input /macro book 15;wait .1;input /macro set 6')
		elseif pet.name == "Garuda" then
			send_command('input /macro book 15;wait .1;input /macro set 2')
		elseif pet.name == "Shiva" then
			send_command('input /macro book 15;wait .1;input /macro set 5')
		elseif pet.name == "Ramuh" then
			send_command('input /macro book 15;wait .1;input /macro set 7')
		elseif pet.name == "Diabolos" then
			send_command('input /macro book 15;wait .1;input /macro set 9')
		else
			--elementals
			send_command('input /macro book 15;wait .1;input /macro set 10')
		end

	else
		sets.precast.Idle = sets.precast.IdleRefresh
		send_command('input /macro book 15;wait .1;input /macro set 10')
		--add_to_chat(9, pet.name.. ' released, Idle=IdleRefresh')
	end
	equip(sets.precast.Idle)
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function pet_status_change(new,old)
	--add_to_chat(9, 'Pet_Status_Change: ' ..new.. ' / ' ..old)
	--Attacking:  new=Engaged,  old=Idle
	--Mob dead:  new=Idle,   old=Engaged
end

function pet_midcast(spell)
	--add_to_chat(9, 'Pet_Midcast: ' ..spell.english)

--	Physical_BPs
--	Magical_BPs
--	Buff_BPs
--	Debuff_BPs
--	SP_BPs

--	BloodPactPhysical
--	BloodPactMagical

	if Physical_BPs:contains(spell.name) then
		equip(sets.BloodPactPhysical)
		--windower.add_to_chat(9, 'Physical BP detected')
	elseif Magical_BPs:contains(spell.name) then
		equip(sets.BloodPactMagical)
		--windower.add_to_chat(9, 'Magical BP detected')
	elseif Debuff_BPs:contains(spell.name) then
		equip(sets.BloodPactMagical)
		--windower.add_to_chat(9, 'Debuff BP detected')
	elseif Buff_BPs:contains(spell.name) then
		equip(sets.SummoningSkill)
		--windower.add_to_chat(9, 'Buff BP detected')
	elseif SP_BPs:contains(spell.name) then
		if spell.name == "Perfect Defense" then
			equip(sets.SummoningSkill)
			add_to_chat(9, 'Perfect Defense detected')
		else
			equip(set_combine(sets.BloodPactMagical, {body="Glyphic Doublet", feet="Glyphic Pigaches"}))
			--equip({body="Glyphic Doublet", feet="Glyphic Pigaches"})
			add_to_chat(9, 'SP BP detected')
		end
	end

end

function pet_aftercast(spell)
	--windower.add_to_chat(9, 'Pet_Aftercast: ' ..spell.english)
	aftercast(spell)
end

function status_change(new,old)
	if new == 'Idle' then
		equip(sets.precast.Idle)
	elseif new == 'Resting' then
		equip(sets.precast.Rest)
	--elseif new == 'Engaged' then
		--equip(sets.TP)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function buff_change(buff_name,gain) --gain = True if gained, False if lost
	--windower.add_to_chat(14, 'Buff_Change: ' ..buff_name.. ' gain? ' ..tostring(gain))

	--[[if buff_name=='Collimated Fervor' then
		if gain then
			equip(sets.JA['Collimated Fervor'])
			send_command('@wait 0.5; gs disable head;')
			send_command('@input /echo Collimated Fervor ON, head disabled')
		else
			enable("head")
			send_command('@input /echo Collimated Fervor off, head enabled')
		end
	elseif buff_name=='Bolster' then
		if gain then
			equip(sets.JA.Bolster)
			send_command('@wait 0.5; gs disable body;')
			send_command('@input /echo Bolster ON, body disabled')
		else
			enable("body")
			send_command('@input /echo Bolster off, body enabled')
		end
	elseif buff_name=='Mending Halation' then
		if gain then
			equip(sets.JA['Mending Halation'])
			send_command('@wait 0.5; gs disable legs;')
			send_command('@input /echo Mending Halation ON, legs disabled')
		else
			enable("legs")
			send_command('@input /echo Mending Halation off, legs enabled')
		end
	elseif buff_name=='Radial Arcana' then
		if gain then
			equip(sets.JA['Radial Arcana'])
			send_command('@wait 0.5; gs disable feet;')
			send_command('@input /echo Radial Arcana ON, feet disabled')
		else
			enable("feet")
			send_command('@input /echo Radial Arcana off, feet enabled')
		end
	end]]

end

function self_command(command)
	--if command == 'Potency' then
		--SetMode_Index = 1
		--windower.add_to_chat(9, 'SetMode now set to:' ..SetMode_Names[SetMode_Index] )
	--elseif command == 'Accuracy' then
		--SetMode_Index = 2
		--windower.add_to_chat(9, 'SetMode now set to:' ..SetMode_Names[SetMode_Index] )
	if command == 'Melee' then
		disable("main", "sub", "range", "ammo")
		MeleeLock = 'True'
		windower.add_to_chat(9, 'MeleeLock = ' ..MeleeLock)
	elseif command == 'Magic' then
		enable("main", "sub", "range", "ammo")
		MeleeLock = 'False'
		windower.add_to_chat(9, 'MeleeLock = ' ..MeleeLock)
	end
end
