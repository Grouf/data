--[[
		=========================
		|   B L U E   M A G E   | 
		=========================
]]

function get_sets()
	
	--[[Option 1 
	BlueMagicSpells = {}
	BlueMagicSpells.STR = {'Vertical Cleave','Death Scissors','Empty Thrash','Dimensional Death','Quadrastrike',
		'Bloodrake'}
	
	BlueMagicSpells.STRDEX = {'Disseverment','Hysteric Barrage','Frenetic Rip','Seedspray','Vanity Dive',
		'Goblin Rush','Paralyzing Triad'
	]]
	
	BlueMageSpell = {
        --STR
		['Vertical Cleave']='STR',['Death Scissors']='STR',['Empty Thrash']='STR', ['Dimensional Death']='STR',
		['Quadrastrike']='STR',['Bloodrake']='Physical',['Power Attack']='STR',['Smite of Rage']='STR',
		['Heavy Strike']='Physical',--Accuracy Penalty
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
		['Metallic Body']='BlueMagic',['Retinal Glare']='BlueMagic',
		['Reactor Cool']='BlueMagic',['Plasma Charge']='BlueMagic',
		['Barrier Tusk']='BlueMagic',['Orcish Counterstance']='BlueMagic',['Pyric Bulwark']='BlueMagic',
		['Nature\'s Meditation']='BlueMagic',['Carcharian Verve']='BlueMagic',
		
        -- Breath spells
        ['Poison Breath']='Breath',['Magnetite Cloud']='Breath',['Self Destruct']='Breath',['Radiant Breath']='Breath',
        ['Flying Hip Press']='Breath',['Bad Breath']='Breath',['Frost Breath']='Breath',['Heat Breath']='Breath',
        ['Thunder Breath']='Breath',['Wind Breath']='Breath',
		
		--FastCast
		['Cocoon']='FastCast',['Harden Shell']='FastCast',['Refueling']='FastCast',['Zephyr Mantle']='FastCast',
		['Regeneration']='FastCast',['Animating Wail']='FastCast',['Battery Charge']='FastCast',['Winds of Promy.']='FastCast',
		['Feather Barrier']='FastCast',['Memento mori']='FastCast',['Saline Coat']='FastCast',['Warm-Up']='FastCast',
		['Amplification']='FastCast',['Exuviation']='FastCast',['Fantod']='FastCast'
		
	}
	
	sets.precast = {}
	
	--Job Ability--
	sets.precast.Efflux = {legs="Mavi Tyat +2"}
	sets.precast['Chain Affinity'] = {head="Mavi Kavuk +2"}
	sets.precast['Burst Affinity'] = {feet="Mavi Basmak +2"}
	
	sets.precast.Idle = {head="Uk'uxkaj Cap",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Assim. Jubbah",hands="Serpentes Cuffs",left_ring="Epona's Ring",
		right_ring="Rajas Ring",back="Cornflower Cape",waist="Flume Belt",
		legs="Crimson Cuisses",feet="Serpentes Sabots" }
	
	sets.precast.Rest = sets.precast.Idle
	
	sets.precast.WS = {head="Uk'uxkaj Cap",neck="Tlamiztli Collar",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Iuitl Wristbands",left_ring="Rajas Ring",
		right_ring="Spiral Ring",back="Atheling Mantle",waist="Prosilio Belt",
		legs="Manibozho brais",feet="Iuitl Gaiters" }
		
	--[[Sword Weapon Skills]]
	sets.precast['Chant du Cygne'] = set_combine(sets.precast.WS,{neck="Light Gorget"})
	
	sets.precast['Requiescat'] = set_combine(sets.precast.WS,{neck="Shadow Gorget",left_ring="Solemn Ring",
		legs="Quiahuiz Leggings"})
		
	--sets.precast['Vorpal Blade']
	
	--sets.precast['Expiacion']
	
	sets.precast['Sanguine Blade'] = {head="Hagondes Hat",neck="Stoicheion Medal",left_ear="Hecate's earring",
		right_ear="Friomisi Earring",body="Hagondes Coat",hands="Hagondes Cuffs",left_ring="Icesoul Ring",
		right_ring="Spiral Ring",back="Refraction Cape",waist="Aswang Sash",
		legs="Hagondes Pants",feet="Hagondes Sabots" }
	
	--sets.precast['Savage Blade']
	
	--[[Club Weapon Skills  ~~ need work (or removal?) ~~]]
	
	sets.precast['Realmrazer'] = set_combine(sets.precast.WS,{neck="Light Gorget",waist="Light Belt",
		legs="Quiahuiz Leggings"})
		
	sets.precast['Flash Nova'] = set_combine(sets.precast.WS,{neck="Tjukurrpa Medal",left_ear="Friomisi Earring",
		body="Hagondes Coat",hands="Buremte Gloves",left_ring="Flame Ring",right_ring="Spiral Ring",
		--[[right_ring="Aquasoul Ring",]]waist="Caudata Belt",
		legs="Manibozho brais",feet="Manibozho Boots"})  --[[30% STR/MND with INT for stat]]
	
	sets.precast['True Strike'] = set_combine(sets.precast.WS,{head="Uk'uxkaj Cap",neck="Tjukurrpa Medal",
		left_ear="Steelflash Earring",right_ear="Heartseeker Earring",body="Manibozho Jerkin",
		hands="Iuitl Wristbands",right_ring="Spiral ring",left_ring="Rajas ring",back="Atheling mantle",
		waist="Caudata Belt",legs="Quiahuiz Leggings",feet="Manibozho Boots"})
		
	--[[Stat sets]]
	
	sets.precast.STR = {head="Uk'uxkaj Cap",neck="Tjukurrpa Medal",left_ear="Steelflash Earring",
		right_ear="Heartseeker Earring",body="Assim. Jubbah",hands="Iuitl Wristbands",left_ring="Rajas Ring",
		right_ring="Spiral Ring",back="Buquwik Cape",waist="Prosilio Belt",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
		
	sets.precast.STRDEX = {head="Uk'uxkaj Cap",neck="Tjukurrpa Medal",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",body="Assim. Jubbah",hands="Iuitl Wristbands",left_ring="Rajas Ring",
		right_ring="Spiral Ring",back="Cornflower Cape",waist="Prosilio Belt",
		legs="Manibozho Brais",feet="Iuitl Gaiters"}
		
	sets.precast.STRVIT = {head="Uk'uxkaj Cap",neck="Tjukurrpa Medal",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",body="Assim. Jubbah",hands="Iuitl Wristbands",left_ring="Rajas Ring",
		right_ring="Spiral ring",back="Cornflower Cape",waist="Prosilio Belt",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
		
	sets.precast.STRMND = { }
	
	sets.precast.AGI = { }
	
	sets.precast.INT = {head="Hagondes Hat",neck="Stoicheion Medal",left_ear="Hecate's Earring",
		right_ear="Friomisi Earring",body="Hagondes Coat",hands="Mv. Bazubands +2",left_ring="Spiral Ring",
		right_ring="Icesoul Ring",back="Cornflower Cape",waist="Phasmida Belt",
		legs="Hagondes Pants",feet="Hagondes Sabots"}	

	sets.precast.Cure = {head="Uk'uxkaj Cap",neck="Mavi Scarf",left_ear="Loquac. Earring",
		right_ear="Lifestorm Earring",body="Hagondes Coat",hands="Weather. Cuffs",left_ring="Sirona's Ring",
		right_ring="Solemn Ring",back="Pahtli Cape",waist="Witful Belt",
		legs="Quiahuiz Leggings",feet="Hagondes Sabots"}
	
	sets.precast.mAccuracy = {head="Uk'uxkaj Cap",neck="Stoicheion Medal",left_ear="Lifestorm earring",
		right_ear="Psystorm earring",body="Assim. Jubbah",hands="Hagondes Cuffs",left_ring="Sangoma Ring",
		right_ring="Omega Ring",back="Cornflower Cape",waist="Aswang Sash",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
	
	sets.precast.Stun = {head="Uk'uxkaj Cap",neck="Stoicheion Medal",left_ear="Psystorm earring",
		right_ear="Lifestorm earring",body="Assim. Jubbah",hands="Mv. Bazubands +2",left_ring="Spiral Ring",
		right_ring="Icesoul Ring",back="Cornflower Cape",waist="Phasmida Belt",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
		
	sets.precast.Breath = {head="Assim. Keffiyeh",neck="Stoicheion Medal",left_ear="Psystorm earring",
		right_ear="Lifestorm earring",body="Assim. Jubbah",hands="Hagondes Cuffs",
		back="Cornflower Cape",waist="Aswang Sash",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
	
	
	--[[ Don't need, keep for now till testing
	sets.precast.MNDNukes = {head="Hagondes Hat",neck="Stoicheion Medal",left_ear="Hecate's Earring",
		right_ear="Friomisi Earring",body="Hagondes Coat",hands="Mv. Bazubands +2",left_ring="Sirona's Ring",
		right_ring="Solemn Ring",back="Cornflower Cape",waist="Aswang Sash",
		legs="Hagondes Pants",feet="Hagondes Sabots"}
	]]
	
	--[[Don't need, keep for now..Use M.Acc
	sets.precast.MNDDebuffs = {head="Hagondes Hat",neck="Stoicheion Medal",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",body="Assim. Jubbah",hands="Hagondes Cuffs",left_ring="Sirona's Ring",
		right_ring="Solemn Ring",back="Cornflower Cape",waist="Aswang Sash",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
	]]
		
	--[[Specific spells]]
	
	--[[Don't need, rolled into Stat sets, keep till testing done
	sets.precast['Charged Whisker'] = {head="Hagondes Hat",neck="Stoicheion Medal",left_ear="Hecate's earring",
		right_ear="Friomisi earring",body="Hagondes Coat",hands="Hagondes Cuffs",left_ring="Spiral Ring",
		right_ring="Icesoul Ring",back="Cornflower Cape",waist="Aswang Sash",
		legs="Hagondes Pants",feet="Hagondes Sabots"}
		
	sets.precast['Heavy Strike'] = {head="Uk'uxkaj Cap",neck="Tjukurrpa Medal",left_ear="Heartseeker Earring",
		right_ear="Steelflash Earring",	body="Assim. Jubbah",hands="Iuitl Wristbands",left_ring="Rajas Ring",
		right_ring="Spiral ring",back="Cornflower Cape",waist="Prosilio Belt",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
		
	sets.precast.Tourbillion = {head="Iuitl Headgear",neck="Stoicheion Medal",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",body="Assim. Jubbah",hands="Hagondes Cuffs",left_ring="Rajas Ring",
		right_ring="Spiral Ring",back="Cornflower Cape",waist="Prosilio Belt",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
		
	sets.precast['Reaving Wind'] = {head="Mirage Keffiyeh +2",neck="Mavi scarf",
		body="Mavi mintan +2",hands="Mavi Bazuband +2",
		back="Cornflower Cape",
		legs="Mavi Tayt +2",feet="Mavi Bamask +2"}
		
	sets.precast['White Wind'] = {head="Mirage keffiyeh +2",neck="Mavi Scarf",left_ear="Lifestorm Earring",
		right_ear="Loquac. Earring",body="Assim. Jubbah",hands="Weather. Cuffs",
		back="Pahtli Cape",waist="Phasmida Belt",
		legs="Quiahuiz Leggings",feet="Hagondes Sabots"}
		
	sets.precast.Drainkiss = {head="Hagondes Hat",neck="Stoicheion Medal",left_ear="Psystorm earring",
		right_ear="Lifestorm earring",body="Assim. Jubbah",hands="Hagondes Cuffs",left_ring="Spiral Ring",
		right_ring="Icesoul Ring",back="Cornflower Cape",waist="Aswang Sash",
		legs="Iuitl Tights",feet="Hagondes Sabots"}
		
	sets.precast['Amorphic Spikes'] = {head="Iuitl Headgear",neck="Tjukurrpa Medal",left_ear="Lifestorm Earring",	
		right_ear="Psystorm Earring",body="Assim. Jubbah",hands="Hagondes Cuffs",left_ring="Rajas Ring",
		right_ring="Spiral Ring",back="Cornflower Cape",waist="Prosilio Belt",
		legs="Manibozho Brais",feet="Iuitl Gaiters"}
	]]
		
	--[[ Buff Sets ]]
	
	sets.precast.Stoneskin = {head="Hagondes Hat",left_ear="Loquac. Earring",
		body="Hagondes Coat",hands="Hagondes Cuffs",left_ring="Sangoma Ring",
		right_ring="Aquasoul Ring",
		waist="Hurch'lan Sash",
		legs="Hagondes Pants",feet="Hagondes Sabots"}
	
	sets.precast.Phalanx = {head="Uk'uxkaj Cap",left_ear="Loquac. Earring",
		body="Hagondes Coat",hands="Hagondes Cuffs",
		back="Cornflower Cape",waist="Witful belt",
		legs="Quiahuiz Leggings",feet="Hagondes Sabots" }
		
	--[[ Utility Sets ]]
	
	sets.precast.Step = {head="Uk'uxkaj Cap",neck="Asperity Necklace",left_ear="Steelflash earring",
		right_ear="Heartseeker earring",body="Manibozho Jerkin",hands="Iuitl Wristbands",left_ring="Epona's Ring",
		right_ring="Rajas Ring",back="Atheling Mantle",waist="Phasmida Belt",
		legs="Manibozho Brais",feet="Iuitl Gaiters"}
	

	
	--[[Next 5 sets need work]]
	sets.precast.BlueMagic = {head="Uk'uxkaj Cap",neck="Mavi scarf",left_ear="Loquacious earring",
		body="Mavi Mintan +2",hands="Mv. Bazubands +2",left_ring="Prolix Ring",
		back="Swith cape",waist="Witful belt",
		legs="Orvail Pants +1",feet="Iuitl Gaiters"} --some blue magic, all fast cast, re-check FC items
	
	--[[original
	sets.precast.BlueMagicFastCast = {head="Uk'uxkaj Cap",neck="Mavi scarf",left_ear="Loquacious earring",
		body="Mavi Mintan +2",hands="Mv. Bazubands +2",left_ring="Prolix Ring",
		back="Swith cape",waist="Witful belt",
		legs="Orvail Pants +1",feet="Iuitl Gaiters"}
	]]
	
	sets.precast.FastCast = {head="Uk'uxkaj Cap",left_ear="Loquacious earring",
		body="Hagondes Coat",hands="Thaumas Gloves",left_ring="Prolix Ring",
		back="Swith cape",waist="Witful belt",
		legs="Orvail Pants +1",feet="Iuitl Gaiters"}--Check to make sure full Fast Cast
	
	--[[Don't need?  
	sets.precast.MaxHastehead= {"Uk'uxkaj Cap",left_ear="Loquacious earring",	
		body="Assim. Jubbah",hands="Iuitl Wristbands",left_ring="Prolix Ring",
		back="Swith cape",waist="Phasmida Belt",
		legs="Manibozho Brais",feet="Iuitl Gaiters"}
		
	sets.precast.BlueMagicMaxHastehead= {head="Uk'uxkaj Cap",left_ear="Loquacious earring",
		body="Assim. Jubbah",hands="Mv. Bazubands +2",left_ring="Prolix Ring",
		back="Swith cape",waist="Phasmida Belt",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
	]]
		
	sets.midcast = {}
	sets.midcast.BlueMagic = {head="Mirage Keffiyeh",neck="Mavi scarf",left_ear="Loquacious earring",
		body="Assim. Jubbah",hands="Symbios Gloves",left_ring="Prolix Ring",
		back="Cornflower Cape",waist="Witful belt",
		legs="Mavi Tayt +2",feet="Mirage Charuqs +2"}--Full Blue Magic Skill, fast cast as it fits
	--[[5 above need work]]
	
	sets.TP = {}
	sets.TP.DA = {head="Iuitl Headgear",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Thaumas coat",hands="Iuitl Wristbands",left_ring="Epona's Ring",
		right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Iuitl Tights",feet="Iuitl Gaiters" }
		
	sets.TP.SOLO = set_combine(sets.TP.DA,{body="Iuitl Vest"})
	
	sets.TP.Learning = set_combine(sets.TP.DA,{body="Assim. Jubbah",hands="Magus Bazubands",legs="Mavi Tayt +2"})
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DA
	--sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 16;wait .1;input /macro set 1')
		
end

function precast(spell)

	--[[Option 2
	if spell.english == 'Vertical Cleave' or spell.english == 'Death Scissors' or spell.english == 'Empty Thrash' or
		spell.english == 'Dimensional Death' or spell.english == 'Quadrastrike' or spell.english == 'Bloodrake' or  then
		equip(sets.BlueMagic.STR)
	end
		
	if spell.english == 'Disseverment' or spell.english == 'Hysteric Barrage' or spell.english == 'Frenetic Rip' or 
		spell.english == 'Seedspray' or spell.english == 'Vanity Dive' or spell.english == 'Goblin Rush' or 
		spell.english == 'Paralyzing Triad' then
		equip(sets.BlueMagic.STRDEX)
	end
	
	if spell.english == 'Quad. Continuum' or spell.english == 'Delta Thrust' or spell.english == 'Cannonball' or 
		spell.english == 'Glutinous Dart' then
		equip(sets.BlueMagic.STRVIT)
	end
	
	if spell.english == 'Whirl of Rage' then
		equip(sets.BlueMagic.STRMND)
	end
	
	if spell.english == 'Benthic Typhoon' or spell.english == 'Final Sting' or spell.english == 'Spiral Spin' then
		equip(sets.BlueMagic.AGI)
	end
	
	if spell.english == 'Gates of Hades' or spell.english == 'Leafstorm' or spell.english == 'Firespit' or 
		spell.english == 'Acrid Stream' or spell.english == 'Regurgitation' or spell.english == 'Corrosive Ooze' or 
		spell.english == 'Thermal Pulse' or spell.english == 'Magic Hammer' or spell.english == 'Evryone. Grudge' or 
		spell.english == 'Water Bomb' or spell.english == 'Dark Orb' or spell.english == 'Thunderbolt' or 
		spell.english == 'Tem. Upheaval' or spell.english == 'Embalming Earth' or spell.english == 'Foul Waters' or 
		spell.english == 'Rending Deluge' or spell.english == 'Droning Whirlwind' then
		equip(sets.BlueMagic.INT)
	end
	
	if spell.english == 'Magic Fruit' or spell.english == 'Plenilune Embrace' or spell.english == 'Wild Carrot' or 
		spell.english == 'Pollen' then
		equip(sets.BlueMagic.Cures)
	end
	
	if spell.english == 'Head Butt' or spell.english == 'Sudden Lunge' or spell.english == 'Blitzstrahl' then
		equip(sets.BlueMagic.Stun)
	end
	
	if spell.english == 'Heavy Strike' then
		equip(sets.BlueMagic.HeavyStrike)
	end
	
	if spell.english == 'Charged Whisker' then
		equip(sets.BlueMagic.ChargedWhisker)
	end
	
	if spell.english == 'Frightful Roar' or spell.english == 'Infrasonics' or spell.english == 'Barbed Crescent' or 
		spell.english == 'Tourbillion' or spell.english == 'Cimicine Discharge' or spell.english == 'Sub-zero smash' or 
		spell.english == 'Filamented Hold' or spell.english == 'Mind Blast' or spell.english == 'Sandspin' or 
		spell.english == 'Hecatomb Wave' or spell.english == 'Cold Wave' then
		equip(sets.BlueMagic.MagicAccuracy)
	end
	
	if spell.english == 'MP Drainkiss' or spell.english == 'Digest' or spell.english == 'Blood Saber' or 
		spell.english == 'Blood Drain' or spell.english == 'Osmosis' or spell.english == 'Occultation' or 
		spell.english == 'Magic Barrier' or spell.english == 'Diamondhide' or spell.english == 'Metallic Body' or 
		spell.english == 'Retinal Glare' then
		equip(sets.BlueMagic.SkillRecast)
	end
	
	]]
	
	if spell.type == 'BlueMagic' then --don't need because I'm only listing BLU spells in the BMS structure..?
		if sets.precast[BlueMageSpell[spell.english]] then
			equip(sets.precast[BlueMageSpell[spell.english]])
		else
			send_command('@input /echo ~~!! No Set found for ' ..spell.english.. ' !!~~')
		end
	--elseif --[[other magic types here]] then
		
	elseif string.find(spell.english,'Step') or string.find(spell.english,'Violent Flourish') then
		equip(sets.precast.Step)
	
	elseif spell.type=='WeaponSkill' then
		equip(sets.TP.WS)
	end

	--[[copy from GEO
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.skill == 'BlueMage' then
		equip(sets.precast.BlueMagic)
	elseif spell.skill == 'EnhancingMagic' then
		if spell.english == 'Stoneskin' or spell.english == 'Blink' or 
		spell.english == 'Aquaveil' or spell.english == 'Phalanx' then
			equip(sets.precast.Enhancing)
		else
			equip(sets.precast.FastCast)
			send_command('@input /echo FastCast set on')
		end
	elseif spell.skill == 'ElementalMagic' then
		equip(sets.precast.ElementalMagic)

	elseif spell.skill == 'DarkMagic' then
		equip(sets.precast.DarkMagic)
	elseif spell.skill == 'EnfeeblingMagic' then
		equip(sets.precast.Enfeeble)
	elseif spell.skill == 'HealingMagic' then
		equip(sets.precast.Cure)
	elseif spell.type=='WeaponSkill' then
		equip(sets.TP.WS)
	end
	]]
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
			disable('head')
			send_command('@input /echo Chain Affinity ON, head disabled')
		elseif buff_name=='Burst Affinity' then
			disable('feet')
			send_command('@input /echo Burst Affinity ON, feet disabled')
		end
	
	elseif not gain then -- something lost
		if buff_name=='Efflux' then
			enable('legs')
			send_command('@input /echo Efflux off, legs enabled')
		elseif buff_name=='Chain Affinity' then 
			enable('head')
			send_command('@input /echo Chain Affinity off, head enabled')
		elseif buff_name=='Burst Affinity' then
			enable('feet')
			send_command('@input /echo Burst Affinity off, feet enabled')
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
		
	elseif command == 'LEARNING' then
		sets.aftercast.TP = sets.TP.Learning
		--sets.aftercast.Idle = sets.TP.Learn
		equip(sets.aftercast.TP)
		send_command('@input /echo SOLO SET')
	--[[
	elseif command == 'DT' then
		sets.aftercast.TP = sets.DT
		sets.aftercast.Idle = sets.DT
		equip(sets.aftercast.TP)
		send_command('@input /echo DT SET')
	]]
	end
end


--[[
<if Skill="BlueMagic">
		<if spell="Vertical Cleave|Death Scissors|Empty Thrash|Whirl of Rage|Dimensional Death|Quadrastrike|Bloodrake|
			Tourbillion">
			<action type="equip" when="precast" set="STR" />
		</if>

		<elseif spell="Heavy Strike|Bilgestorm|Paralyzing Triad">
			<action type="equip" when="precast" set="Heavy Strike" />
		</elseif>

		<elseif spell="Disseverment|Hysteric Barrage|Frenetic Rip|Seedspray|Vanity Dive|Goblin Rush|Barbed Crescent|
			Claw Cyclone">
			<action type="equip" when="precast" set="STRDEX" />
		</elseif>
		
		<elseif spell="Amorphic Spikes">
			<action type="equip" when="precast" set="Amorphic Spikes" />
		</elseif>

		<elseif spell="Gates of Hades">
			<action type="equip" when="precast" set="Gates of Hades" />
		</elseif>

		<elseif spell="Quad. Continuum|Delta Thrust|Cannonball|Glutinous Dart|Asuran Claws">
			<action type="equip" when="precast" set="STR" />
		</elseif>

		<elseif spell="Benthic Typhoon|Final Sting|Spiral Spin">
			<action type="equip" when="precast" set="AGI" />
		</elseif>

		<elseif spell="Pollen|Wild Carrot|Magic Fruit|Plenilune Embrace|Healing Breeze|Cure*">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="MNDCures" />
		</elseif>

		<elseif spell="Sub-zero smash|Filamented Hold|Cimicine Discharge">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="MNDDebuffs" />
		</elseif>

		<elseif spell="Mind Blast|Magic Hammer">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="MNDNukes" />
		</elseif>

		<elseif spell="Leafstorm|Firespit|Regurgitation|Corrosive Ooze|Acrid Stream|Blazing Bound|Thermal Pulse
			|Reactor Cool|Plasma Charge|Evryone. Grudge|Water Bomb|Dark Orb|Thunderbolt|Tem. Upheaval">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="INT" />
		</elseif>

		<elseif spell="Eyes on Me">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="CHR" />
		</elseif>

		<elseif spell="Head Butt|Sudden Lunge">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="Head Butt" />
		</elseif>

		<elseif spell="Charged Whisker">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="Charged Whisker" />
		</elseif>
		
		<elseif spell="Digest|Blood Saber|Blood Drain|Osmosis|Diamondhide|Metallic Body|O. Counterstance|Mortal Ray">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="Blue Magic Skill" />
		</elseif>

		<elseif spell="Cold Wave">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="Blue Magic Skill" />
		</elseif>
		
		<elseif spell="MP Drainkiss|Osmosis|Absolute Terror">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="Drainkiss" />
		</elseif>

		<elseif spell="Occultation|Magic Barrier">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="Blue Magic Skill" />
		</elseif>

		<elseif spell="Sandspin">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="Magic Accuracy" />
		</elseif>

		<elseif spell="Triumphant Roar|Cocoon|Dream Flower|Yawn|Blank Gaze|Sheep Song|Soporific|Winds of Promy.|
			Regeneration|Battery Charge|Actinic Burst|Saline Coat|Demoralizing Roar|Amplification|Warm-Up|Auroral Drape|
			Animating Wail|Zephyr Mantle|Frightful Roar|Chaotic Eye|Infrasonics|Fantod|Temporal Shift|Barrier Tusk|
			Retinal Glare">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="Blue Magic Max Haste" />
		</elseif>

		<elseif spell="Reaving Wind">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="Reaving Wind" />
		</elseif>

		<elseif spell="White Wind">
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="White Wind" />
		</elseif>

		<elseif spell="Frost Breath|Heat Breath|Magnetite Cloud|Poison Breath|Bad Breath|Hecatomb Wave|Flying Hip press|
			Thunder Breath|Wind Breath|Vapor Spray">	
			<action type="equip" when="precast" set="Blue Magic Fast Cast" />
			<action type="equip" when="midcast" set="Breaths" />
		</elseif>
</if>

-- Weaponskill Rules 
<if type="WeaponSkill">
		<if spell="Chant du Cygne">
			<action type="equip" when="precast" set="Chant du Cygne" />
		</if>

		<elseif spell="Requiescat">
			<action type="equip" when="precast" set="Requiescat" />
		</elseif>
		
		<elseif spell="Expiacion">
			<action type="equip" when="precast" set="Expiacion" />
		</elseif>
		
		<elseif spell="Sanguine Blade">
			<action type="equip" when="precast" set="Sanguine Blade" />
		</elseif>
		
		<elseif spell="Vorpal Blade">
			<action type="equip" when="precast" set="Vorpal Blade" />
		</elseif>
 
		<elseif spell="Savage Blade">
			<action type="equip" when="precast" set="Savage Blade" />
		</elseif>

		<elseif spell="Realmrazer">
			<action type="equip" when="precast" set="Realmrazer" />
		</elseif>

		<elseif spell="True Strike">
			<action type="equip" when="precast" set="True Strike" />
		</elseif>
		
		<elseif spell="Judgment|Black Halo|Brainshaker">
			<action type="equip" when="precast" set="Black Halo" />
		</elseif>

		<elseif spell="Flash Nova">
			<action type="equip" when="precast" set="Flash Nova" />
		</elseif>
</if>

-- Buff Rules 
	--Job Ability 
		<if spell="Efflux">
			<equip when="precast|aftercast">
				legs="Mavi Tayt +2",
			</equip>
		</if>
		
		<if BuffActive="Efflux">
			<equip when="idle|engaged|resting|precast|midcast|aftercast">
				<legs lock="t">Mavi Tayt +2",
			</equip>
		</if>
		
		<if spell="Chain Affinity">
			<equip when="precast|aftercast">
				legs="Mavi Kavuk +2",
			</equip>
		</if>
		
		<if BuffActive="Chain Affinity">
			<equip when="idle|engaged|resting|precast|midcast|aftercast">
				<legs lock="t">Mavi Kavuk +2",
			</equip>
		</if>

		<if spell="Burst Affinity">
			<equip when="precast|aftercast">
				legs="Mavi Basmak +2",
			</equip>
		</if>
		
		<if BuffActive="Burst Affinity">
			<equip when="idle|engaged|resting|precast|midcast|aftercast">
				<legs lock="t">Mavi Basmak +2",
			</equip>
		</if>

		<if spell="Stoneskin">	
			<action type="equip" when="precast" set="Fast Cast" />
			<action type="equip" when="midcast" set="Stoneskin" />
		</if>	

		<elseif spell="Utsusemi*|En*|Aquaveil|Blink|Refresh|Haste">
			<action type=aftercastdelay delay=".5" />
			<action type="equip" when="precast" set="Fast Cast" />
			<action type="equip" when="midcast" set="Max Haste" />
			--<action type="equip" when="midcast">
			--	back="Repulse Mantle",
			--</action>
		</elseif>

		<elseif spell="*Spikes">
			<action type="equip" when="precast" set="Fast Cast" />
			<action type="equip" when="midcast" set="INT" />
		</elseif>

		<elseif spell="Phalanx">
			<action type="equip" when="precast" set="Fast Cast" />
			<action type="equip" when="midcast" set="Phalanx" />
		</elseif>

		<elseif spell="Bar*">
			<action type="equip" when="precast" set="Phalanx" />
		</elseif>

		<elseif spell="*Step|*Flourish">		
			<action type="equip" when="precast" set="Steps" />
		</elseif>

</rules>
</spellcast>
]]
