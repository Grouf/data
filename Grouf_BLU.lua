--[[
		=========================
		|   B L U E   M A G E   | 
		=========================
]]

function get_sets()
	
	BlueMageSpell = {
	--STR
		['Vertical Cleave']='STR',['Death Scissors']='STR',['Empty Thrash']='STR', ['Dimensional Death']='STR',
		['Quadrastrike']='STR',['Bloodrake']='STR',['Power Attack']='STR',['Smite of Rage']='STR',
		['Heavy Strike']='STR',--Accuracy Penalty
		['Terror Touch']='STR',['Sickle Slash']='STR',['Uppercut']='STR',['Mandibular Bite']='STR',
		['Spinal Cleave']='STR',['Asuran Claws']='STR',['Body Slam']='STR',['Battle Dance']='STR',['Bludgeon']='STR',
		['Screwdriver']='STR',['Thrashing Assault']='STR', ['Sinker Drill']='STR',
		
	--STRDEX
		['Foot Kick']='STRDEX',['Disseverment']='STRDEX',['Hysteric Barrage']='STRDEX',['Frenetic Rip']='STRDEX',
		['Vanity Dive']='STRDEX',['Seedspray']='STRDEX',['Goblin Rush']='STRDEX',['Paralyzing Triad']='STRDEX',
		['Claw Cyclone']='STRDEX',
		
	--STRVIT
		['Quad. Continuum']='STRVIT',['Delta Thrust']='STRVIT',['Cannonball']='STRVIT',['Glutinous Dart']='STRVIT',
		['Grand Slam']='STRVIT',['Sprout Smack']='STRVIT',
		
	--STRMND
		['Whirl of Rage']='STRMND', --AoE Stun 
		['Ram Charge']='STRMND',
		
	--AGI
		['Benthic Typhoon']='AGI',['Final Sting']='AGI',['Spiral Spin']='AGI',
		['Wild Oats']='AGI',['Helldive']='AGI',['Hydro Shot']='AGI',['Jet Stream']='AGI',['Pinecone Bomb']='STRAGI',
		
	--INT
		['Gates of Hades']='INT',['Leafstorm']='INT',['Firespit']='INT',['Acrid Stream']='INT',['Regurgitation']='INT',
		['Corrosive Ooze']='INT',['Thermal Pulse']='INT',['Magic Hammer']='INT',['Evryone. Grudge']='INT',
		['Water Bomb']='INT',['Dark Orb']='INT',['Tem. Upheaval']='INT',['Embalming Earth']='INT',
		['Foul Waters']='INT',['Rending Deluge']='INT',['Droning Whirlwind']='INT',
		['Thunderbolt']='INT', --AoE Stun, Unbridled Learning, 30%INT, 20%MND
		['Charged whisker']='INT',--DEX50%, dINTx2.0
		['Amorphic Spikes']='INT',--DEX&INT 20%
		['Sandspin']='INT',['Cursed Sphere']='INT',['Blastbomb']='INT',['Bomb Toss']='INT',['Death Ray']='INT',
		['Ice break']='INT',['Maelstrom']='INT',['Water Bomb']='INT',['Mysterious Light']='INT',['Eyes On Me']='INT',
		['Blazing Bound']='INT',['Vapor Spray']='INT',['Bilgestorm']='INT',['Feather storm']='INT',
		['Queasyshroom']='INT',['Subduction']='INT', ['Crashing Thunder']='INT', ['Rail Cannon']='INT',
		['Uproot']='INT',
		
	--Cures
		['Pollen']='Cure',['Healing Breeze']='Cure',['Wild Carrot']='Cure',['Magic Fruit']='Cure',
		['Plenilune Embrace']='Cure',['White Wind']='Cure', ['Restoral']='Cure',
		
	--Stun
		['Head Butt']='Stun',['Sudden Lunge']='Stun',['Tail Slap']='Stun',['Frypan']='Stun', --Physical
		['Blitzstrahl']='Stun',['Temporal Shift']='Stun',--Magic
		
	--Magic Accuracy
		['Frightful Roar']='mAccuracy',['Infrasonics']='mAccuracy',['Barbed Crescent']='mAccuracy',['Tourbillion']='mAccuracy',
		['Cimicine Discharge']='mAccuracy',['Sub-zero Smash']='mAccuracy',['Filamented Hold']='mAccuracy',
		['Mind Blast']='mAccuracy',['Sandspray']='mAccuracy',['Hecatomb Wave']='mAccuracy',['Cold Wave']='mAccuracy',
		['Sheep Song']='mAccuracy',['Soporific']='mAccuracy',['Yawn']='mAccuracy',['Dream Flower']='mAccuracy',
		['Soud Blast']='mAccuracy',['Chaotic Eye']='mAccuracy',['Enervation']='mAccuracy',['Mortal Ray']='mAccuracy',
		['Light of Penance']='mAccuracy',['Feather Tickle']='mAccuracy',['Reaving Wind']='mAccuracy',
		['Blank Gaze']='mAccuracy',['Geist Wall']='mAccuracy',['Actinic Burst']='mAccuracy',['Auroral Drape']='mAccuracy',
		['Venom Shell']='mAccuracy',['Stinking Gas']='mAccuracy',['Awful Eye']='mAccuracy',['Demoralizing Roar']='mAccuracy',
		['Jettatura']='mAccuracy',['Absolute Terror']='mAccuracy',['Triumphant Roar']='mAccuracy',
		['1000 Needles']='mAccuracy',['Voracious Trunk']='mAccuracy',['Lowing']='mAccuracy',['Blistering Roar']='mAccuracy',
		['Polar Roar']='mAccuracy', --from IceKitty, does AoE Ice+Bind, should be in INT or mAccuracy??
		
	--Blue Magic Skill, Fast Cast (precast=Fast Cast, midcast=Blue Magic Skill)
		--uses sets.precast.FastCast and sets.midcast.BlueMagic
		['MP Drainkiss']='BlueMagic',['Digest']='BlueMagic',['Blood Saber']='BlueMagic',['Blood Drain']='BlueMagic',
		['Osmosis']='BlueMagic',['Occultation']='BlueMagic',['Magic Barrier']='BlueMagic',['Diamondhide']='BlueMagic',
		['Metallic Body']='BlueMagic',['Carcharian Verve']='BlueMagic',
		
	-- Breath spells
        ['Poison Breath']='Breath',['Magnetite Cloud']='Breath',['Self Destruct']='Breath',['Radiant Breath']='Breath',
        ['Flying Hip Press']='Breath',['Bad Breath']='Breath',['Frost Breath']='Breath',['Heat Breath']='Breath',
        ['Thunder Breath']='Breath',['Wind Breath']='Breath',['Diffusion Ray']='Breath',
		
	--FastCast
		['Cocoon']='FastCast',['Harden Shell']='FastCast',['Refueling']='FastCast',['Zephyr Mantle']='FastCast',
		['Regeneration']='FastCast',['Animating Wail']='FastCast',['Battery Charge']='FastCast',['Winds of Promy.']='FastCast',
		['Feather Barrier']='FastCast',['Memento Mori']='FastCast',['Saline Coat']='FastCast',['Warm-Up']='FastCast',
		['Amplification']='FastCast',['Exuviation']='FastCast',['Fantod']='FastCast',['Plasma Charge']='FastCast',
		['Reactor Cool']='FastCast',['Barrier Tusk']='FastCast',['Nat. Meditation']='FastCast',
		['Orcish Counterstance']='FastCast',['Pyric Bulwark']='FastCast',['Retinal Glare']='FastCast',
		['Erratic Flutter']='FastCast'
		
	}
	
--Job Ability--
	sets.JA = {}
	sets.JA['Azure Lore'] = {hands="Luhlaza Bazubands"}
	sets.JA.Efflux = {legs="Mavi Tayt +2"}
	sets.JA['Chain Affinity'] = {head="Mavi Kavuk +2",feet="Assim. Charuqs"}
	sets.JA['Burst Affinity'] = {legs="Assim. Shalwar",feet="Mavi Basmak +2"}
	sets.JA.Diffusion = {feet="Luhlaza Charuqs"}
	
--Precast--
	sets.precast = {}
	sets.precast.Idle = {head="Uk'uxkaj Cap",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Assim. Jubbah",hands="Serpentes Cuffs",left_ring="Rajas Ring",
		right_ring="Epona's Ring",back="Repulse Mantle",waist="Flume Belt",
		legs="Crimson Cuisses",feet="Serpentes Sabots" }
	
	sets.precast.Rest = sets.precast.Idle
	
	sets.precast.FastCast = {head="Haruspex Hat",left_ear="Loquacious earring",right_ear="Phawaylla Earring",
		body="Mavi Mintan +2",hands="Mv. Bazubands +2",left_ring="Prolix Ring",
		back="Swith cape",waist="Witful belt",
		legs="Orvail Pants +1",feet="Qaaxo Leggings"}--23% Fast Cast, 16% Haste, Blue Magic Casting time -12%
	
	sets.precast.Step = {head="Whirlpool Mask",neck="Asperity Necklace",left_ear="Steelflash earring",
		right_ear="Heartseeker earring",body="Manibozho Jerkin",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Beeline Ring",back="Letalis Mantle",
		legs="Manibozho Brais",feet="Assim. Charuqs"}
	
--Weapon Skills--
	sets.WS = {}
	sets.WS.Base = {head="Whirlpool Mask",neck="Tlamiztli Collar",left_ear="Moonshade Earring",
		right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Qaaxo Mitaines",left_ring="Rajas Ring",
		right_ring="Cho'j Band",back="Vespid Mantle",waist="Prosilio Belt",
		legs="Manibozho brais",feet="Assim. Charuqs" }
		
	sets.WS['Chant du Cygne'] = set_combine(sets.WS.Base,{neck="Light Gorget"})
	
	sets.WS['Requiescat'] = set_combine(sets.WS.Base,{neck="Shadow Gorget",left_ring="Solemn Ring",
		legs="Quiahuiz Trousers"})
		
	--sets.precast['Vorpal Blade']
	
	--sets.precast['Expiacion']
	
	sets.WS['Sanguine Blade'] = {head="Uk'uxkaj Cap",neck="Tlamiztli Collar",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",--[[left_ear="Hecate's earring",right_ear="Friomisi Earring",]]
		body="Hagondes Coat +1",hands="Weath. Cuffs +1",left_ring="Icesoul Ring",
		right_ring="Spiral Ring",back="Refraction Cape",waist="Caudata Belt",
		legs="Mes'yohi Slacks",feet="Hag. Sabots +1" }
	
	--sets.precast['Savage Blade']
	
	
--Blue Magic Spell Stat sets--
	sets.midcast = {}
	sets.midcast.BaseStat = {head="Uk'uxkaj Cap",neck="Tjukurrpa Medal",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",body="Assim. Jubbah",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Spiral Ring",back="Cornflower Cape",waist="Prosilio Belt",
		legs="Iuitl Tights",feet="Qaaxo Leggings"} --relic119 legs here
	
	sets.midcast.STR = set_combine(sets.midcast.BaseSet,{head="Whirlpool Mask",back="Buquwik Cape"})
	
	sets.midcast.STRDEX = set_combine(sets.midcast.BaseSet,{legs="Manibozho Brais"})
	
	sets.midcast.STRVIT = set_combine(sets.midcast.BaseSet,{legs="Quiahuiz Trousers"})
	
	sets.midcast.STRMND = set_combine(sets.midcast.BaseSet,{legs="Quiahuiz Trousers"})
	
	sets.midcast.AGI = set_combine(sets.midcast.BaseSet,{body="Iuitl Vest",legs="Kaabnax Trousers"})
	
	sets.midcast.INT = {head="Hagondes Hat",neck="Stoicheion Medal",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",body="Hagondes Coat +1",hands="Hagondes Cuffs",left_ring="Icesoul Ring",
		right_ring="Spiral Ring",back="Cornflower Cape",waist="Witful Belt",
		legs="Mes'yohi Slacks",feet="Hag. Sabots +1"}

	sets.midcast.Cure = {head="Uk'uxkaj Cap",neck="Tjukurrpa Medal",left_ear="Loquac. Earring",
		right_ear="Lifestorm Earring",body="Hagondes Coat +1",hands="Weath. Cuffs +1",left_ring="Sirona's Ring",
		right_ring="Solemn Ring",back="Pahtli Cape",waist="Witful Belt",
		legs="Mes'yohi Slacks",feet="Weath. Souliers +1"}
	
	sets.midcast.mAccuracy = {head="Assim. Keffiyeh",neck="Stoicheion Medal",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",body="Assim. Jubbah",hands="Hagondes Cuffs",left_ring="Sangoma Ring",
		right_ring="Perception Ring",back="Cornflower Cape",waist="Aswang Sash",
		legs="Mes'yohi Slacks",feet="Hagondes Sabots"}
	
	sets.midcast.Stun = {head="Assim. Keffiyeh",neck="Stoicheion Medal",left_ear="Psystorm earring",
		right_ear="Lifestorm Earring",body="Assim. Jubbah",hands="Mv. Bazubands +2",left_ring="Sangoma Ring",
		right_ring="Perception Ring",back="Cornflower Cape",waist="Witful Belt",
		legs="Mes'yohi Slacks",feet="Hagondes Sabots"} --25% Haste, 5% Fast Cast, -12% Blue Magic recast
		
	sets.midcast.Breath = {head="Luhlaza Keffiyeh",neck="Stoicheion Medal",left_ear="Psystorm earring",
		right_ear="Lifestorm Earring",body="Assim. Jubbah",hands="Hagondes Cuffs",left_ring="Prolix Ring",
		back="Cornflower Cape",waist="Aswang Sash",
		legs="Iuitl Tights",feet="Hagondes Sabots"}
	
	sets.midcast.BlueMagic = set_combine(sets.precast.FastCast,{
		ammo="Mavi Tathlum", head="Luhlaza Keffiyeh",neck="Mavi Scarf",
		body="Assim. Jubbah",hands="Symbios Gloves",
		back="Cornflower Cape",
		legs="Mavi Tayt +2",feet="Luhlaza Charuqs"}) --All blue magic, some fast cast
	
	sets.midcast.FastCast = sets.precast.FastCast -- for spells that don't need stats
	
--TP Sets--
	sets.TP = {}
	sets.TP.DD = {head="Whirlpool Mask",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",left_ring="Rajas Ring",
		right_ring="Epona's Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Trousers",feet="Qaaxo Leggings" }
		
	sets.TP.Acc = {head="Whirlpool Mask",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Qaaxo Harness",hands="Qaaxo Mitaines",left_ring="Rajas Ring",
		right_ring="Epona's Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Trousers",feet="Assim. Charuqs" }
	
	sets.TP.Learning = set_combine(sets.TP.DD,{head="Uk'uxkaj Cap", body="Assim. Jubbah", hands="Assim. Bazu.",
		legs="Mavi Tayt +2"})
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	--sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 16;wait .1;input /macro set 1')
	
	sets.DontForget = {main="Claidheamh Soluis", sub="Buramenk'ah", left_ear="Reraise Earring", 
		right_ear = "Linkpearl"} --not working for Soluis???
	sets.DontForget2 = {main="Tamaxchi", sub="Nehushtan"}
		
end

function precast(spell)
	--windower.add_to_chat(9, 'Precast: spell type= ' ..spell.type.. ' || spell.prefix= ' ..spell.prefix)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		--windower.add_to_chat(9, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)
	
	elseif spell.type == "WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS.Base)
		end
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end
	
	elseif spell.prefix == "/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif spell.type == "Step" then 
			equip(sets.precast.Step)
		elseif spell.english == "Violent Flourish" then
			equip(sets.midcast.mAccuracy)
		end
	end

end

function midcast(spell)
	if spell.prefix == '/jobability' or spell.type == 'WeaponSkill' then
	--midcast doesn't exist for JA or WS so cancel the processing of this function
		--windower.add_to_chat(9, 'JobAbility or WeaponSkill; Midcast cancelled')
		return
	end
	
	if spell.type == 'BlueMagic' then
		if sets.midcast[BlueMageSpell[spell.english]] then
			equip(sets.midcast[BlueMageSpell[spell.english]])
			--windower.add_to_chat(9, 'MIDset: ' ..BlueMageSpell[spell.english].. ' for ' ..spell.english.. '.')
		else
		windower.add_to_chat(9, '~~!! No Set found for ' ..spell.english.. ' !!~~')
		end
	end
	
	if spell.element == 'Earth' and spell.target == 'Enemy' then
			equip({neck="Quanpur Necklace"})
	end
end

function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.aftercast.TP)
	else
		equip(sets.precast.Idle)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function status_change(new,old)
	if new == 'Idle' then
		equip(sets.precast.Idle)
	elseif new == 'Resting' then
		equip(sets.precast.Rest)
	elseif new == 'Engaged' then
		equip(sets.aftercast.TP)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

--[[Relic augments:
Head: Luhlaza Keffiyeh: Convergence
Body: Luhlaza Jubbah: Enchainment
Hands: Luhlaza Bazubands: Azure Lore
Legs: Luhlaza Shalwar: Assimilation
Feet: Luhlaza Charuqs: Diffusion
]]

function buff_change(buff_name,gain) --gain = True if gained, False if lost
	if buff_name=='Efflux' then
		if gain then
			equip(sets.JA[buff_name])
			send_command('@wait 0.5; gs disable legs;')
			send_command('@input /echo Efflux ON, legs disabled')
		else
			enable('legs')
			send_command('@input /echo Efflux off, legs enabled')
		end
	elseif buff_name=='Chain Affinity' then
		if gain then
			equip(sets.JA[buff_name])
			send_command('@wait 0.5; gs disable head feet;')
			send_command('@input /echo Chain Affinity ON, head,feet disabled')
		else
			enable('head','feet')
			send_command('@input /echo Chain Affinity off, head,feet enabled')
		end
	elseif buff_name=='Burst Affinity' then
		if gain then
			equip(sets.JA[buff_name])
			send_command('@wait 0.5; gs disable legs feet;')
			send_command('@input /echo Burst Affinity ON, legs,feet disabled')
		else
			enable('legs', 'feet')
			send_command('@input /echo Burst Affinity off, legs,feet enabled')
		end
	elseif buff_name=='Diffusion' then
		if gain then
			equip(sets.JA[buff_name])
			send_command('@wait 0.5; gs disable feet;')
			send_command('@input /echo Diffusion ON, feet disabled')
		else
			enable('feet')
			send_command('@input /echo Diffusion off, feet enabled')
		end
	end
	
end

function self_command(command)
	if command == 'DD' then
		sets.aftercast.TP = sets.TP.DD
		--sets.aftercast.Idle = sets.TP.DD
		sets.precast.Idle = set_combine(sets.precast.Idle, {back="Repulse Mantle"})
		--equip(sets.aftercast.TP)
		status_change(player.status)
		send_command('@input /echo DD SET')
	elseif command == 'Cap' then
		sets.aftercast.TP = set_combine(sets.TP.DD, {back="Mecisto. Mantle"})
		sets.precast.Idle = set_combine(sets.precast.Idle, {back="Mecisto. Mantle"})
		--sets.precast.
		status_change(player.status)
		--equip(sets.aftercast.TP)
		send_command('@input /echo Capacity SET')
	elseif command == 'Acc' then
		sets.aftercast.TP = sets.TP.Acc
		--sets.aftercast.Idle = sets.TP.Learn
		--equip(sets.aftercast.TP)
		status_change(player.status)
		send_command('@input /echo Accuracy set')
	elseif command == 'LearningOn' then
		sets.aftercast.TP = sets.TP.Learning
		--sets.aftercast.Idle = sets.aftercast.TP
		equip({body="Assim. Jubbah", hands="Assim. Bazu.", legs="Mavi Tayt +2"})
		disable('body', 'hands', 'legs')
		--send_command('@wait 0.5; gs disable body hands legs;')
		--send_command('gs disable body hands legs;')
		send_command('@input /echo Learning Body, Hands, Legs Locked')
		--equip(sets.aftercast.TP)
		--status_change(player.status)
		send_command('@input /echo Learning set')
	elseif command == 'LearningOff' then
		sets.aftercast.TP = sets.TP.DD
		--sets.aftercast.Idle = sets.TP.Learn
		--equip({hands="Assim. Bazu."})
		enable('body', 'hands', 'legs')
		send_command('@input /echo Learning Body, Hands, Legs Unlocked')
		status_change(player.status)
	--[[
	elseif command == 'DT' then
		sets.aftercast.TP = sets.DT
		sets.aftercast.Idle = sets.DT
		equip(sets.aftercast.TP)
		send_command('@input /echo DT SET')
	]]
	end
end

--[[ Gear collection
Slip#		Head	Body	Hands	Legs	Feet	Accessory
=====		====================================================
 2									Crimson			Loq.Earring


 6			Yes		NO		NO		NO		NO
 
 8													Scarf
10			Yes		Yes		Yes		Yes		NO
 
15			Yes		Yes		Learn	NO		Yes

Iuitl		DA		Yes		NO		Yes		Yes
Hagondes	Yes		Yes		Yes		Yes		Yes

]]