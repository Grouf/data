--[[
		=========================
		|   B L U E   M A G E   |
		=========================
]]

--[[	Weapons:

Tizona - mythic lol

main hands: Naegling
			Maxentius
		both from Ambuscade

off hand:	Thibron w/ 1000 TP bonus  - Magian trial
			Colada possible - from reisenjima Irongiant, augmentable

]]


include('Obi_Check')

function get_sets()

	BlueMageSpell = {
	--STR
		['Asuran Claws']='STR',['Battle Dance']='STR',['Bloodrake']='STR',['Bludgeon']='STR',['Body Slam']='STR',
		['Death Scissors']='STR',['Dimensional Death']='STR',['Empty Thrash']='STR',['Heavy Strike']='STR',
		['Mandibular Bite']='STR',['Power Attack']='STR',['Quadrastrike']='STR',['Screwdriver']='STR',
		['Sickle Slash']='STR',['Smite of Rage']='STR',['Spinal Cleave']='STR',['Terror Touch']='STR',
		['Thrashing Assault']='STR',['Uppercut']='STR',['Vertical Cleave']='STR',

	--STRDEX
		['Claw Cyclone']='STRDEX',['Disseverment']='STRDEX',['Foot Kick']='STRDEX',['Frenetic Rip']='STRDEX',
		['Goblin Rush']='STRDEX',['Hysteric Barrage']='STRDEX',['Paralyzing Triad']='STRDEX',['Seedspray']='STRDEX',
		['Sinker Drill']='STRDEX',['Vanity Dive']='STRDEX',

	--STRVIT
		['Cannonball']='STRVIT',['Delta Thrust']='STRVIT',['Glutinous Dart']='STRVIT',['Grand Slam']='STRVIT',
		['Quad. Continuum']='STRVIT',['Sprout Smack']='STRVIT',

	--STRMND
		['Ram Charge']='STRMND',
		['Whirl of Rage']='STRMND', --AoE Stun

	--AGI
		['Benthic Typhoon']='AGI',['Final Sting']='AGI',['Helldive']='AGI',['Hydro Shot']='AGI',['Jet Stream']='AGI',
		['Pinecone Bomb']='AGI',['Spiral Spin']='AGI',['Wild Oats']='AGI',

	--INT
		['Blazing Bound']='INT',['Corrosive Ooze']='INT',['Foul Waters']='INT',['Ice break']='INT',
		['Thunderbolt']='INT',['Uproot']='INT',['Water Bomb']='INT',['Crashing Thunder']='INT',['Rail Cannon']='INT',
		['Acrid Stream']='INT',['Bilgestorm']='INT',['Blastbomb']='INT',['Bomb Toss']='INT',['Cursed Sphere']='INT',
		['Dark Orb']='INT',['Death Ray']='INT',['Droning Whirlwind']='INT',['Embalming Earth']='INT',
		['Evryone. Grudge']='INT',['Eyes On Me']='INT',['Feather storm']='INT',['Firespit']='INT',
		['Gates of Hades']='INT',['Leafstorm']='INT',['Maelstrom']='INT',['Magic Hammer']='INT',
		['Mysterious Light']='INT',['Polar Roar']='INT',['Queasyshroom']='INT',['Regurgitation']='INT',
		['Rending Deluge']='INT',['Sandspin']='INT',['Subduction']='INT',['Tem. Upheaval']='INT',
		['Thermal Pulse']='INT',['Vapor Spray']='INT',['Water Bomb']='INT',['Nectarous Deluge']='INT',
		['Searing Tempest']='INT',['Blinding Fulgor']='INT',['Spectral Floe']='INT',['Scouring Spate']='INT',
		['Anvil Lightning']='INT',['Silent Storm']='INT',['Entomb']='INT',['Tenebral Crush']='INT',
		['Palling Salvo']='INT',['Cruel Joke']='INT',['Cesspool']='INT',['Tearing Gust']='INT',

	--DEXINT
		['Amorphic Spikes']='DEXINT',--DEX&INT 20%
		['Charged whisker']='DEXINT',--DEX50%, dINTx2.0
		['Charged whisker']='DEXINT',--DEX50%, dINTx2.0

	--Cures
		['Healing Breeze']='Cure',['Magic Fruit']='Cure',['Plenilune Embrace']='Cure',['Pollen']='Cure',
		['Restoral']='Cure',['White Wind']='Cure',['Wild Carrot']='Cure',

	--Stun
		['Frypan']='Stun',['Head Butt']='Stun',['Sudden Lunge']='Stun',['Tail Slap']='Stun', --Physical
		['Blitzstrahl']='Stun',['Temporal Shift']='Stun',--Magic

	--Magic Accuracy
		['1000 Needles']='mAccuracy',['Absolute Terror']='mAccuracy',['Actinic Burst']='mAccuracy',
		['Auroral Drape']='mAccuracy',['Awful Eye']='mAccuracy',['Barbed Crescent']='mAccuracy',
		['Blank Gaze']='mAccuracy',['Blistering Roar']='mAccuracy',['Chaotic Eye']='mAccuracy',
		['Cimicine Discharge']='mAccuracy',['Cold Wave']='mAccuracy',['Demoralizing Roar']='mAccuracy',
		['Dream Flower']='mAccuracy',['Enervation']='mAccuracy',['Feather Tickle']='mAccuracy',
		['Filamented Hold']='mAccuracy',['Frightful Roar']='mAccuracy',['Geist Wall']='mAccuracy',
		['Hecatomb Wave']='mAccuracy',['Infrasonics']='mAccuracy',['Jettatura']='mAccuracy',
		['Light of Penance']='mAccuracy',['Lowing']='mAccuracy',['Mind Blast']='mAccuracy',['Mortal Ray']='mAccuracy',
		['Reaving Wind']='mAccuracy',['Sandspray']='mAccuracy',['Sheep Song']='mAccuracy',['Soporific']='mAccuracy',
		['Sound Blast']='mAccuracy',['Stinking Gas']='mAccuracy',['Sub-zero Smash']='mAccuracy',
		['Tourbillion']='mAccuracy',['Triumphant Roar']='mAccuracy',['Venom Shell']='mAccuracy',
		['Voracious Trunk']='mAccuracy',['Yawn']='mAccuracy',

	--Blue Magic Skill, Fast Cast (precast=Fast Cast, midcast=Blue Magic Skill)
		--uses sets.precast.FastCast and sets.midcast.BlueMagic
		['Blood Drain']='BlueMagic',['Blood Saber']='BlueMagic',['Carcharian Verve']='BlueMagic',
		['Diamondhide']='BlueMagic',['Digest']='BlueMagic',['Magic Barrier']='BlueMagic',['Metallic Body']='BlueMagic',
		['MP Drainkiss']='BlueMagic',['Occultation']='BlueMagic',['Osmosis']='BlueMagic',

	-- Breath spells
		['Bad Breath']='Breath',['Diffusion Ray']='Breath',['Flying Hip Press']='Breath',['Frost Breath']='Breath',
		['Heat Breath']='Breath',['Magnetite Cloud']='Breath',['Poison Breath']='Breath',['Radiant Breath']='Breath',
		['Self Destruct']='Breath',['Thunder Breath']='Breath',['Wind Breath']='Breath',

	--FastCast
		['Amplification']='FastCast',['Animating Wail']='FastCast',['Barrier Tusk']='FastCast',
		['Battery Charge']='FastCast',['Cocoon']='FastCast',['Erratic Flutter']='FastCast',['Exuviation']='FastCast',
		['Fantod']='FastCast',['Feather Barrier']='FastCast',['Harden Shell']='FastCast',['Memento Mori']='FastCast',
		['Nat. Meditation']='FastCast',['Orcish Counterstance']='FastCast',['Plasma Charge']='FastCast',
		['Pyric Bulwark']='FastCast',['Reactor Cool']='FastCast',['Refueling']='FastCast',['Regeneration']='FastCast',
		['Retinal Glare']='FastCast',['Saline Coat']='FastCast',['Warm-Up']='FastCast',	['Winds of Promy.']='FastCast',
		['Zephyr Mantle']='FastCast',['Mighty Guard']='FastCast'

	}

--Job Ability--
	sets.JA = {}
	sets.JA['Azure Lore'] = {hands="Luh. Bazubands +1"}
	sets.JA.Efflux = {legs="Hashishin Tayt +1"}
	sets.JA['Chain Affinity'] = {head="Hashishin Kavuk +1",feet="Assim. Charuqs +1"}
	sets.JA['Burst Affinity'] = {legs="Assim. Shalwar +1",feet="Hashi. Basmak +1"}
	sets.JA.Diffusion = {feet="Luhlaza Charuqs +1"}

--Precast--
	sets.precast = {}
	sets.precast.Idle = {head="Rawhide Mask", neck="Asperity Necklace", left_ear="Telos Earring", right_ear="Digni. Earring",
		body="Jhakri Robe +2", hands="Serpentes Cuffs", left_ring="Hetairoi Ring", right_ring="Epona's Ring",
		back="Mecisto. Mantle", waist="Flume Belt", legs="Carmine Cuisses +1", feet="Serpentes Sabots" }

	sets.precast.Rest = sets.precast.Idle

	sets.precast.FastCast = {head="Haruspex Hat",left_ear="Loquacious earring",
		body="Hashishin Mintan +1",hands="Hashi. Bazu. +1",left_ring="Weather. Ring", right_ring="Prolix Ring",
		back="Swith cape",waist="Witful belt",
		legs="Assim. Shalwar +1",feet="Assim. Charuqs +1"}--23% Fast Cast, 16% Haste, Blue Magic Casting time -12%

	sets.precast.Step = {head="Jhakri Coronal +2", neck="Iqabi Necklace", left_ear="Telos earring",
		right_ear="Zennaroi Earring", body="Jhakri Robe +2", hands="Buremte Gloves",left_ring="Hetairoi Ring",
		right_ring="Beeline Ring", back="Letalis Mantle", waist="Olseni Belt",
		legs="Feast Hose", feet="Assim. Charuqs +1"}

--Weapon Skills--
	sets.WS = {}
	sets.WS.Base = {head="Jhakri Coronal +2", neck="Fotia Gorget", left_ear="Moonshade Earring",
		right_ear="Digni. Earring", body="Jhakri Robe +2", hands="Jhakri Cuffs +2", left_ring="Hetairoi Ring",
		right_ring="Cho'j Band", back="Vespid Mantle", waist="Prosilio Belt +1",
		legs="Jhakri Slops +2", feet="Assim. Charuqs +1" }

	--sets.WS['Chant du Cygne'] = set_combine(sets.WS.Base,{neck="Light Gorget"})

	sets.WS['Requiescat'] = set_combine(sets.WS.Base,{left_ring="Solemn Ring", legs="Jhakri Slops +2"})

	--sets.precast['Vorpal Blade']

	--sets.precast['Expiacion']

	sets.WS['Sanguine Blade'] = {head="Jhakri Coronal +2",neck="Fotia Gorget",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",--[[left_ear="Hecate's earring",right_ear="Friomisi Earring",]]
		body="Jhakri Robe +2",hands="Weath. Cuffs +1",left_ring="Icesoul Ring",
		right_ring="Spiral Ring",back="Refraction Cape",waist="Caudata Belt",
		legs="Psycloth Lappas",feet="Jhakri Pigaches +2" }

	--sets.precast['Savage Blade']


--Blue Magic Spell Stat sets--
	sets.midcast = {}
	sets.midcast.BaseStat = {head="Uk'uxkaj Cap",neck="Hashishin Scarf",left_ear="Dudgeon Earring",
		right_ear="Digni. Earring",body="Jhakri Robe +2",hands="Buremte Gloves",left_ring="Hetairoi Ring",
		right_ring="Spiral Ring",back="Cornflower Cape",waist="Prosilio Belt +1",
		legs="Luhlaza Shalwar +1",feet="Jhakri Pigaches +2"} --relic119 legs here

	sets.midcast.STR = set_combine(sets.midcast.BaseSet,{head="Jhakri Coronal +2",back="Buquwik Cape"})

	sets.midcast.STRDEX = set_combine(sets.midcast.BaseSet,{legs="Jhakri Slops +2"})

	sets.midcast.STRVIT = set_combine(sets.midcast.BaseSet,{legs="Jhakri Slops +2"})

	sets.midcast.STRMND = set_combine(sets.midcast.BaseSet,{legs="Psycloth Lappas"})

	sets.midcast.AGI = set_combine(sets.midcast.BaseSet,{legs="Kaabnax Trousers"})

	sets.midcast.INT = {head="Jhakri Coronal +2",neck="Eddy Necklace",left_ear="Psystorm Earring",
		right_ear="Crematio Earring",body="Jhakri Robe +2",hands="Jhakri Cuffs +2",left_ring="Icesoul Ring",
		right_ring="Spiral Ring",back="Cornflower Cape",waist="Yamabuki-no-Obi",
		legs="Psycloth Lappas",feet="Jhakri Pigaches +2"}

	sets.midcast.Cure = {head="Uk'uxkaj Cap",neck="Imbodla Necklace",left_ear="Loquac. Earring",
		right_ear="Lifestorm Earring",body="Jhakri Robe +2",hands="Telchine Gloves",left_ring="Sirona's Ring",
		right_ring="Solemn Ring",back="Pahtli Cape",waist="Witful Belt",
		legs="Psycloth Lappas",feet="Weath. Souliers +1"}

	sets.midcast.mAccuracy = {head="Assim. Keffiyeh +1",neck="Eddy Necklace",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",body="Jhakri Robe +2",hands="Jhakri Cuffs +2",left_ring="Weather. Ring",
		right_ring="Sangoma Ring",back="Cornflower Cape",waist="Yamabuki-no-Obi",
		legs="Psycloth Lappas",feet="Medium's Sabots"}

	sets.midcast.Stun = {head="Assim. Keffiyeh +1",neck="Eddy Necklace",left_ear="Psystorm earring",
		right_ear="Lifestorm Earring",body="Jhakri Robe +2",hands="Hashi. Bazu. +1",left_ring="Weather. Ring",
		right_ring="Sangoma Ring",back="Cornflower Cape",waist="Witful Belt",
		legs="Psycloth Lappas",feet="Medium's Sabots"} --25% Haste, 5% Fast Cast, -12% Blue Magic recast

	sets.midcast.Breath = {head="Luh. Keffiyeh +1",neck="Eddy Necklace",left_ear="Psystorm earring",
		right_ear="Lifestorm Earring",body="Jhakri Robe +2",hands="Jhakri Cuffs +2",left_ring="Prolix Ring",
		back="Cornflower Cape",waist="Yamabuki-no-Obi",
		legs="Jhakri Slops +2",feet="Medium's Sabots"}

	sets.midcast.BlueMagic = set_combine(sets.precast.FastCast,{
		ammo="Mavi Tathlum", head="Luh. Keffiyeh +1",neck="Mavi Scarf",
		body="Assim. Jubbah +1",hands="Symbios Gloves",
		back="Cornflower Cape",
		legs="Hashishin Tayt +1",feet="Luhlaza Charuqs +1"}) --All blue magic, some fast cast

	sets.midcast.FastCast = sets.precast.FastCast -- for spells that don't need stats

--TP Sets--
	sets.TP = {}
	sets.TP.DD = {head="Jhakri Coronal +2",neck="Asperity Necklace",left_ear="Telos Earring",
		right_ear="Digni. Earring",body="Jhakri Robe +2",hands="Jhakri Cuffs +2",left_ring="Hetairoi Ring",
		right_ring="Epona's Ring",back="Bleating Mantle",waist="Windbuffet Belt",
		legs="Taeon Tights",feet="Jhakri Pigaches +2" }

	sets.TP.Acc = {head="Jhakri Coronal +2",neck="Asperity Necklace",left_ear="Telos Earring",
		right_ear="Digni. Earring",body="Jhakri Robe +2",hands="Jhakri Cuffs +2",left_ring="Hetairoi Ring",
		right_ring="Epona's Ring",back="Letalis Mantle",waist="Windbuffet Belt",
		legs="Taeon Tights",feet="Assim. Charuqs +1" }

	sets.TP.Learning = {head="Luh. Keffiyeh +1", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
		back="Cornflower Cape", legs="Hashishin Tayt +1", feet="Luhlaza Charuqs +1"} --skill = 500

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	--sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 16;wait .1;input /macro set 1')

	sets.DontForget = {main="Claidheamh Soluis", sub="Buramenk'ah", left_ear="Reraise Earring",
		}
	sets.DontForget2 = {main="Bolelabunga"}

end

function precast(spell)
	--add_to_chat(9, 'Precast: spell type= ' ..spell.type.. ' || spell.prefix= ' ..spell.prefix)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		--add_to_chat(9, 'not JobAbility or WeaponSkill so Fast Cast')
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
		--add_to_chat(9, 'JobAbility or WeaponSkill; Midcast cancelled')
		return
	end

	if spell.type == 'BlueMagic' then
		if sets.midcast[BlueMageSpell[spell.english]] then
			equip(sets.midcast[BlueMageSpell[spell.english]])
			--add_to_chat(9, 'MIDset: ' ..BlueMageSpell[spell.english].. ' for ' ..spell.english.. '.')
		else
		add_to_chat(9, '~~!! No Set found for ' ..spell.english.. ' !!~~')
		end
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
Head: Luh. Keffiyeh +1: Convergence
Body: Luhlaza Jubbah: Enchainment
Hands: Luh. Bazubands +1: Azure Lore
Legs: Luhlaza Shalwar: Assimilation
Feet: Luhlaza Charuqs +1: Diffusion
]]

function buff_change(buff_name,gain) --gain = True if gained, False if lost
	if buff_name == 'Efflux' then
		if gain then
			equip(sets.JA[buff_name])
			disable('legs')
			add_to_chat(9, 'Efflux ON, legs disabled')
		else
			enable('legs')
			add_to_chat(9, 'Efflux off, legs enabled')
		end
	elseif buff_name == 'Chain Affinity' then
		if gain then
			equip(sets.JA[buff_name])
			disable('head', 'feet')
			add_to_chat(9, 'Chain Affinity ON, head,feet disabled')
		else
			enable('head','feet')
			add_to_chat(9, 'Chain Affinity off, head,feet enabled')
		end
	elseif buff_name == 'Burst Affinity' then
		if gain then
			equip(sets.JA[buff_name])
			disable('legs', 'feet')
			add_to_chat(9, 'Burst Affinity ON, legs,feet disabled')
		else
			enable('legs', 'feet')
			add_to_chat(9, 'Burst Affinity off, legs,feet enabled')
		end
	elseif buff_name == 'Diffusion' then
		if gain then
			equip(sets.JA[buff_name])
			disable('feet')
			add_to_chat(9, 'Diffusion ON, feet disabled')
		else
			enable('feet')
			add_to_chat(9, 'Diffusion off, feet enabled')
		end
	elseif buff_name == 'Reive Mark' and gain then
		equip({neck="Ygnas's Resolve +1"})
	end

end

function self_command(command)
	if command == 'DD' then
		sets.aftercast.TP = sets.TP.DD
		--sets.aftercast.Idle = sets.TP.DD
		sets.precast.Idle = set_combine(sets.precast.Idle, {back="Repulse Mantle"})
		--equip(sets.aftercast.TP)
		status_change(player.status)
		add_to_chat(9, 'DD SET')
	elseif command == 'Cap' then
		sets.aftercast.TP = set_combine(sets.TP.DD, {back="Mecisto. Mantle"})
		sets.precast.Idle = set_combine(sets.precast.Idle, {back="Mecisto. Mantle"})
		--sets.precast.
		status_change(player.status)
		--equip(sets.aftercast.TP)
		add_to_chat(9, 'Capacity SET')
	elseif command == 'Acc' then
		sets.aftercast.TP = sets.TP.Acc
		--sets.aftercast.Idle = sets.TP.Learn
		--equip(sets.aftercast.TP)
		status_change(player.status)
		add_to_chat(9, 'Accuracy set')
	elseif command == 'LearningOn' then
		sets.aftercast.TP = sets.TP.Learning
		--sets.aftercast.Idle = sets.aftercast.TP
		--equip({body="Assim. Jubbah +1", hands="Assim. Bazu. +1", legs="Hashishin Tayt +1"})
		equip(sets.TP.Learning)
		disable('head', 'body', 'hands', 'back', 'legs', 'feet')
		--send_command('@wait 0.5; gs disable body hands legs;')
		--send_command('gs disable body hands legs;')
		--equip(sets.aftercast.TP)
		--status_change(player.status)
		add_to_chat(9, 'Learning Set  ON')
	elseif command == 'LearningOff' then
		sets.aftercast.TP = sets.TP.DD
		--sets.aftercast.Idle = sets.TP.Learn
		--equip({hands="Assim. Bazu. +1"})
		enable('head', 'body', 'hands', 'back', 'legs', 'feet')
		add_to_chat(9, 'Learning Set  OFF')
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
