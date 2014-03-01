--[[
		=========================
		|   B L U E   M A G E   | 
		=========================
]]

function get_sets()
	
	BlueMageSpell = {
        --STR
		['Vertical Cleave']='STR',['Death Scissors']='STR',['Empty Thrash']='STR', ['Dimensional Death']='STR',
		['Quadrastrike']='STR',['Bloodrake']='Physical',['Power Attack']='STR',['Smite of Rage']='STR',
		['Heavy Strike']='STR',--Accuracy Penalty
		['Terror Touch']='STR',['Sickle Slash']='STR',['Uppercut']='STR',['Mandibular Bite']='STR',
		['Spinal Cleave']='STR',['Asuran Claws']='STR',['Body Slam']='STR',['Battle Dance']='STR',['Bludgeon']='STR',
		['Screwdriver']='STR',
		
		--STRDEX
		['Foot Kick']='STRDEX',['Disseverment']='STRDEX',['Hysteric Barrage']='STRDEX',['Frenetic Rip']='STRDEX',
		['Vanity Dive']='STRDEX',['Seedspray']='Physical',['Goblin Rush']='STRDEX',['Paralyzing Triad']='STRDEX',
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
		['Queasyshroom']='INT',
		
		--Cures
		['Pollen']='Cure',['Healing Breeze']='Cure',['Wild Carrot']='Cure',['Magic Fruit']='Cure',
		['Plenilune Embrace']='Cure',['White Wind']='Cure',
		
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
		
		--Blue Magic Skill, Fast Cast (precast=Fast Cast, midcast=Blue Magic Skill)
			--uses sets.precast.BlueMagic and sets.midcast.BlueMagic
		['MP Drainkiss']='BlueMagic',['Digest']='BlueMagic',['Blood Saber']='BlueMagic',['Blood Drain']='BlueMagic',
		['Osmosis']='BlueMagic',['Occultation']='BlueMagic',['Magic Barrier']='BlueMagic',['Diamondhide']='BlueMagic',
		['Metallic Body']='BlueMagic',['Carcharian Verve']='BlueMagic',
		
        -- Breath spells
        ['Poison Breath']='Breath',['Magnetite Cloud']='Breath',['Self Destruct']='Breath',['Radiant Breath']='Breath',
        ['Flying Hip Press']='Breath',['Bad Breath']='Breath',['Frost Breath']='Breath',['Heat Breath']='Breath',
        ['Thunder Breath']='Breath',['Wind Breath']='Breath',
		
		--FastCast
		['Cocoon']='FastCast',['Harden Shell']='FastCast',['Refueling']='FastCast',['Zephyr Mantle']='FastCast',
		['Regeneration']='FastCast',['Animating Wail']='FastCast',['Battery Charge']='FastCast',['Winds of Promy.']='FastCast',
		['Feather Barrier']='FastCast',['Memento mori']='FastCast',['Saline Coat']='FastCast',['Warm-Up']='FastCast',
		['Amplification']='FastCast',['Exuviation']='FastCast',['Fantod']='FastCast',['Plasma Charge']='FastCast',
		['Reactor Cool']='FastCast',['Barrier Tusk']='FastCast',['Nat. Meditation']='FastCast',
		['Orcish Counterstance']='FastCast',['Pyric Bulwark']='FastCast',['Retinal Glare']='FastCast'
		
	}
	
	sets.precast = {}
	
	--Job Ability--
	sets.precast.Efflux = {legs="Mavi Tyat +2"}
	sets.precast['Chain Affinity'] = {head="Mavi Kavuk +2",feet="Assim. Charuqs"}
	sets.precast['Burst Affinity'] = {legs="Assim. Shalwar",feet="Mavi Basmak +2"}
	
	sets.precast.Idle = {head="Uk'uxkaj Cap",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Assim. Jubbah",hands="Serpentes Cuffs",left_ring="Rajas Ring",
		right_ring="Epona's Ring",back="Cornflower Cape",waist="Flume Belt",
		legs="Crimson Cuisses",feet="Serpentes Sabots" }
	
	sets.precast.Rest = sets.precast.Idle
	
	sets.precast.WS = {head="Ejekamal Mask",neck="Tlamiztli Collar",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Spiral Ring",back="Vassal's Mantle",waist="Prosilio Belt",
		legs="Manibozho brais",feet="Assim. Charuqs" } --Done
		
	--[[Sword Weapon Skills]]
	sets.precast['Chant du Cygne'] = set_combine(sets.precast.WS,{neck="Light Gorget"})
	
	sets.precast['Requiescat'] = set_combine(sets.precast.WS,{neck="Shadow Gorget",left_ring="Solemn Ring",
		legs="Quiahuiz Leggings"})
		
	--sets.precast['Vorpal Blade']
	
	--sets.precast['Expiacion']
	
	sets.precast['Sanguine Blade'] = {head="Uk'uxkaj Cap",neck="Tlamiztli Collar",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",--[[left_ear="Hecate's earring",right_ear="Friomisi Earring",]]
		body="Hagondes Coat",hands="Hagondes Cuffs",left_ring="Icesoul Ring",
		right_ring="Spiral Ring",back="Refraction Cape",waist="Prosilio Belt",
		legs="Hagondes Pants",feet="Hagondes Sabots" } --Done
	
	--sets.precast['Savage Blade']
	
	--[[Club Weapon Skills  ~~ need work (or removal?) ~~]]
	
	sets.precast['Realmrazer'] = set_combine(sets.precast.WS,{neck="Light Gorget",waist="Light Belt",
		legs="Quiahuiz Leggings"})
		
	sets.precast['Flash Nova'] = set_combine(sets.precast.WS,{neck="Tjukurrpa Medal",left_ear="Friomisi Earring",
		body="Hagondes Coat",hands="Buremte Gloves",left_ring="Flame Ring",right_ring="Spiral Ring",
		--[[right_ring="Aquasoul Ring",]]waist="Caudata Belt",
		legs="Manibozho brais",feet="Manibozho Boots"})  --[[30% STR/MND with INT for stat]]
	
	sets.precast['True Strike'] = set_combine(sets.precast.WS,{neck="Tjukurrpa Medal",
		left_ear="Steelflash Earring",right_ear="Heartseeker Earring",body="Manibozho Jerkin",
		hands="Iuitl Wristbands",left_ring="Rajas ring",right_ring="Spiral ring",back="Atheling mantle",
		waist="Caudata Belt",legs="Quiahuiz Leggings",feet="Manibozho Boots"})
		
	--[[Stat sets]]
	
	sets.precast.BaseStat = {head="Uk'uxkaj Cap",neck="Tjukurrpa Medal",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",body="Assim. Jubbah",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Spiral Ring",back="Cornflower Cape",waist="Prosilio Belt",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
	
	sets.precast.STR = set_combine(sets.precast.BaseSet,{head="Ejekamal Mask",back="Buquwik Cape"}) --Done
		
	sets.precast.STRDEX = set_combine(sets.precast.WS,{legs="Manibozho Brais"}) --Done
		
	sets.precast.STRVIT = set_combine(sets.precast.WS,{legs="Quiahuiz Leggings"}) --Done
		
	sets.precast.STRMND = set_combine(sets.precast.WS,{legs="Quiahuiz Leggings"})--Done
	
	sets.precast.AGI = set_combine(sets.precast.WS,{body="Iuitl Vest",legs="Kaabnax Trousers"}) --Done
	
	sets.precast.INT = {head="Hagondes Hat",neck="Stoicheion Medal",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",body="Hagondes Coat",hands="Hagondes Cuffs",left_ring="Icesoul Ring",
		right_ring="Spiral Ring",back="Cornflower Cape",waist="Witful Belt",
		legs="Hagondes Pants",feet="Hagondes Sabots"}--Done

	sets.precast.Cure = {head="Uk'uxkaj Cap",neck="Mavi Scarf",left_ear="Loquac. Earring",
		right_ear="Lifestorm Earring",body="Hagondes Coat",hands="Buremte Gloves",left_ring="Sirona's Ring",
		right_ring="Solemn Ring",back="Pahtli Cape",waist="Witful Belt",
		legs="Quiahuiz Leggings",feet="Hagondes Sabots"} --Done
	
	sets.precast.mAccuracy = {head="Assim. Keffiyeh",neck="Stoicheion Medal",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",body="Assim. Jubbah",hands="Hagondes Cuffs",left_ring="Prolix Ring",
		right_ring="Omega Ring",back="Cornflower Cape",waist="Aswang Sash",
		legs="Iuitl Tights",feet="Hagondes Sabots"} --Done
	
	sets.precast.Stun = {head="",neck="Stoicheion Medal",left_ear="Psystorm earring",
		right_ear="Lifestorm earring",body="Assim. Jubbah",hands="Mv. Bazubands +2",left_ring="Prolix Ring",
		right_ring="Spiral Ring",back="Cornflower Cape",waist="Witful Belt",
		legs="Iuitl Tights",feet="Hagondes Sabots"} --25% Haste, 5% Fast Cast, -12% Blue Magic recast
													--Done
		
	sets.precast.Breath = {head="Mirage Keffiyeh",neck="Stoicheion Medal",left_ear="Psystorm earring",
		right_ear="Lifestorm earring",body="Assim. Jubbah",hands="Hagondes Cuffs",left_ring="Prolix Ring",
		back="Cornflower Cape",waist="Aswang Sash",
		legs="Iuitl Tights",feet="Hagondes Sabots"} --Done
	
	sets.precast.FastCast = {head="Ejekamal Mask",left_ear="Loquacious earring",
		body="Mavi Mintan +2",hands="Mv. Bazubands +2",left_ring="Prolix Ring",
		back="Swith cape",waist="Witful belt",
		legs="Orvail Pants +1",feet="Iuitl Gaiters"}--Check to make sure full Fast Cast

	sets.precast.Step = {head="Ejekamal Mask",neck="Asperity Necklace",left_ear="Steelflash earring",
		right_ear="Heartseeker earring",body="Manibozho Jerkin",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Epona's Ring",back="Atheling Mantle",
		legs="Manibozho Brais",feet="Assimilator's Charuqs"} --Done
	
	sets.precast.BlueMagic = {head="Ejekamal Mask",neck="Mavi scarf",left_ear="Loquacious earring",
		body="Mavi Mintan +2",hands="Symbios Gloves",left_ring="Prolix Ring",
		back="Swith cape",waist="Witful belt",
		legs="Assim. Shalwar",feet="Iuitl Gaiters"} --some blue magic, all fast cast
													--25% Haste, Blue Magic Casting -12%, FastCast: 10%
		
	sets.midcast = {}
	sets.midcast.BlueMagic = set_combine(sets.precast.BlueMagic,{head="Mirage Keffiyeh",
		body="Assim. Jubbah",
		back="Cornflower Cape",
		legs="Mavi Tayt +2"})
	
	sets.TP = {}
	sets.TP.DA = {head="Iuitl Headgear",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Thaumas coat",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Epona's Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Leggings",feet="Iuitl Gaiters" }
		
	sets.TP.Acc = {head="Ejekamal Mask",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Thaumas coat",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Epona's Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Leggings",feet="Assim. Charuqs" }
		
	sets.TP.SOLO = set_combine(sets.TP.DA,{body="Iuitl Vest"})
	
	sets.TP.Learning = set_combine(sets.TP.DA,{body="Assim. Jubbah",hands="Magus Bazubands",legs="Mavi Tayt +2"})
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DA
	--sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 16;wait .1;input /macro set 1')
		
end

function precast(spell)
	
	if spell.type == 'BlueMagic' then
		--send_command('@input /echo precast: Found BlueMagic' )
		--send_command('@input /echo precast BMS: '..BlueMageSpell[spell.english])
		if sets.precast[BlueMageSpell[spell.english]] then
			equip(sets.precast[BlueMageSpell[spell.english]])
			--send_command('@input /echo PREset: ' ..BlueMageSpell[spell.english].. ' for ' ..spell.english.. '.')
		else
			send_command('@input /echo ~~!! No Set found for ' ..spell.english.. ' !!~~')
		end
		
	--elseif --[[other magic types here]] then
	
	elseif sets.precast[spell.english] then 
		equip(sets.precast[spell.english])
		
	elseif string.find(spell.english,'Step') or string.find(spell.english,'Violent Flourish') then
		equip(sets.precast.Step)
	
	elseif spell.type=='WeaponSkill' then
		equip(sets.TP.WS)
	end

end

--[[Relic augments:
Head: Luhlaza Keffiyeh: Convergence
Body: Luhlaza Jubbah: Enchainment
Hands: Luhlaza Bazubands: Azure Lore
Legs: Luhlaza Shalwar: Assimilation
Feet: Luhlaza Charuqs: Diffusion
]]

function midcast(spell)
	if spell.type == 'BlueMagic' then
		equip(sets.midcast[BlueMageSpell[spell.english]])
		--send_command('@input /echo MIDset: ' ..BlueMageSpell[spell.english].. ' for ' ..spell.english.. '.')
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
end

function status_change(new,old)
	if new == 'Idle' then
		equip(sets.precast.Idle)
	elseif new == 'Resting' then
		equip(sets.precast.Rest)
	elseif new == 'Engaged' then
		equip(sets.aftercast.TP)
	end
end

function buff_change(buff_name,gain) --gain = True if gained, False if lost
	if gain then -- something was gained
		equip(sets.precast[buff_name]) --here to make sure appropriate equipment is equipped before disable
		if buff_name=='Efflux' then
			disable('legs')
			send_command('@input /echo Efflux ON, legs disabled')
		elseif buff_name=='Chain Affinity' then 
			disable('head','feet')
			send_command('@input /echo Chain Affinity ON, head,feet disabled')
		elseif buff_name=='Burst Affinity' then
			disable('legs','feet')
			send_command('@input /echo Burst Affinity ON, legs,feet disabled')
		end
	
	elseif not gain then -- something lost
		if buff_name=='Efflux' then
			enable('legs')
			send_command('@input /echo Efflux off, legs enabled')
		elseif buff_name=='Chain Affinity' then 
			enable('head','feet')
			send_command('@input /echo Chain Affinity off, head,feet enabled')
		elseif buff_name=='Burst Affinity' then
			enable('legs','feet')
			send_command('@input /echo Burst Affinity off, legs, enabled')
		end
	end
		
end

function self_command(command)
	if command == 'DA' then
		sets.aftercast.TP = sets.TP.DA
		--sets.aftercast.Idle = sets.TP.DD
		equip(sets.aftercast.TP)
		send_command('@input /echo DA SET')
	--[[
	elseif command == 'Accuracy' then
		sets.aftercast.TP = sets.TP.Accuracy
		sets.aftercast.Idle = sets.TP.Accuracy
		equip(sets.aftercast.TP)
		send_command('@input /echo Accuracy SET')
	]]
	elseif command == 'SOLO' then
		sets.aftercast.TP = sets.TP.Solo
		--sets.aftercast.Idle = sets.TP.Solo
		equip(sets.aftercast.TP)
		send_command('@input /echo SOLO SET')
		
	elseif command == 'Acc' then
		sets.aftercast.TP = sets.TP.Acc
		--sets.aftercast.Idle = sets.TP.Learn
		equip(sets.aftercast.TP)
		send_command('@input /echo SOLO SET')
		
	elseif command == 'LEARNING' then
		sets.aftercast.TP = sets.TP.Learning
		--sets.aftercast.Idle = sets.TP.Learn
		equip(sets.aftercast.TP)
		send_command('@input /echo SOLO SET')
		
	elseif command == 'LearnHandsOn' then
		--sets.aftercast.TP = sets.TP.Learning
		--sets.aftercast.Idle = sets.TP.Learn
		equip({hands="Assim. Bazu."})
		send_command('@wait 0.5; gs disable hands;')
		--disable('hands')
		send_command('@input /echo Learning Hands Locked')
	elseif command == 'LearnHandsOff' then
		--sets.aftercast.TP = sets.TP.Learning
		--sets.aftercast.Idle = sets.TP.Learn
		--equip({hands="Assim. Bazu."})
		enable('hands')
		send_command('@input /echo Learning Hands Unlocked')
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
Slip#		Items
=====		=======================================


 6			Head

10			
 
15			All but hands, hands for learning


]]