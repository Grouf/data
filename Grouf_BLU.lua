--[[
		=========================
		|   B L U E   M A G E   | 
		=========================
]]

 
 --[[ Spells that have static effects, not modified by skill or stats
    blue_no_skill_spell_list = S{'Cocoon','Harden Shell','Refueling','Zephyr Mantle','Regeneration','Animating Wail',
		'Battery Charge','Winds of Promy.','Feather Barrier','Memento mori','Saline Coat','Warm-Up','Amplification',
		'Exuviation','Fantod'}
		
]]

-- if spell.type == 'BlueMagic' then


function get_sets()				
	sets.precast = {}
	
	sets.precast.Efflux = {legs="Mavi Tyat +2}
	
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
		legs="Manibozho brais",feet="Manibozho Boots"}  --[[30% STR/MND with INT for stat]]
	
	sets.precast['True Strike'] = set_combine(sets.precast.WS,{head="Uk'uxkaj Cap",neck="Tjukurrpa Medal",
		left_ear="Steelflash Earring",right_ear="Heartseeker Earring",body="Manibozho Jerkin",
		hands="Iuitl Wristbands",right_ring="Spiral ring",left_ring="Rajas ring",back="Atheling mantle",
		waist="Caudata Belt",legs="Quiahuiz Leggings",feet="Manibozho Boots"}
		
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
		
	sets.precast.MNDCures = {head="Uk'uxkaj Cap",neck="Mavi Scarf",left_ear="Loquac. Earring",
		right_ear="Lifestorm Earring",body="Hagondes Coat",hands="Weather. Cuffs",left_ring="Sirona's Ring",
		right_ring="Solemn Ring",back="Pahtli Cape",waist="Witful Belt",
		legs="Quiahuiz Leggings",feet="Hagondes Sabots"}
		
	sets.precast.MNDNukes = {head="Hagondes Hat",neck="Stoicheion Medal",left_ear="Hecate's Earring",
		right_ear="Friomisi Earring",body="Hagondes Coat",hands="Mv. Bazubands +2",left_ring="Sirona's Ring",
		right_ring="Solemn Ring",back="Cornflower Cape",waist="Aswang Sash",
		legs="Hagondes Pants",feet="Hagondes Sabots"}
		
	sets.precast.MNDDebuffs = {head="Hagondes Hat",neck="Stoicheion Medal",left_ear="Psystorm Earring",
		right_ear="Lifestorm Earring",body="Assim. Jubbah",hands="Hagondes Cuffs",left_ring="Sirona's Ring",
		right_ring="Solemn Ring",back="Cornflower Cape",waist="Aswang Sash",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
		
	sets.precast.INT = {head="Hagondes Hat",neck="Stoicheion Medal",left_ear="Hecate's Earring",
		right_ear="Friomisi Earring",body="Hagondes Coat",hands="Mv. Bazubands +2",left_ring="Spiral Ring",
		right_ring="Icesoul Ring",back="Cornflower Cape",waist="Phasmida Belt",
		legs="Hagondes Pants",feet="Hagondes Sabots"}
		
	--[[Specific spells]]
	
	sets.precast['Head Butt'] = {head="Uk'uxkaj Cap",neck="Stoicheion Medal",left_ear="Psystorm earring",
		right_ear="Lifestorm earring",body="Assim. Jubbah",hands="Mv. Bazubands +2",left_ring="Spiral Ring",
		right_ring="Icesoul Ring",back="Cornflower Cape",waist="Phasmida Belt",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
	
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
		
	sets.precast.Breaths = {head="Assim. Keffiyeh",neck="Stoicheion Medal",left_ear="Psystorm earring",
		right_ear="Lifestorm earring",body="Assim. Jubbah",hands="Hagondes Cuffs",
		back="Cornflower Cape",waist="Aswang Sash",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
		
	sets.precast.Drainkiss = {head="Hagondes Hat",neck="Stoicheion Medal",left_ear="Psystorm earring",
		right_ear="Lifestorm earring",body="Assim. Jubbah",hands="Hagondes Cuffs",left_ring="Spiral Ring",
		right_ring="Icesoul Ring",back="Cornflower Cape",waist="Aswang Sash",
		legs="Iuitl Tights",feet="Hagondes Sabots"}
		
	sets.precast['Amorphic Spikes'] = {head="Iuitl Headgear",neck="Tjukurrpa Medal",left_ear="Lifestorm Earring",	
		right_ear="Psystorm Earring",body="Assim. Jubbah",hands="Hagondes Cuffs",left_ring="Rajas Ring",
		right_ring="Spiral Ring",back="Cornflower Cape",waist="Prosilio Belt",
		legs="Manibozho Brais",feet="Iuitl Gaiters"}
		
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
	
	sets.precast.Steps = {head="Uk'uxkaj Cap",neck="Asperity Necklace",left_ear="Steelflash earring",
		right_ear="Heartseeker earring",body="Manibozho Jerkin",hands="Iuitl Wristbands",left_ring="Epona's Ring",
		right_ring="Rajas Ring",back="Atheling Mantle",waist="Phasmida Belt",
		legs="Manibozho Brais",feet="Iuitl Gaiters"}
	
	sets.precast['Magic Accuracy'] = {head="Uk'uxkaj Cap",neck="Stoicheion Medal",left_ear="Lifestorm earring",
		right_ear="Psystorm earring",body="Assim. Jubbah",hands="Hagondes Cuffs",left_ring="Sangoma Ring",
		right_ring="Omega Ring",back="Cornflower Cape",waist="Aswang Sash",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
	
	--[[Next 5 sets need work]]
	sets.precast.BlueMagic = {head="Mirage Keffiyeh",neck="Mavi scarf",left_ear="Loquacious earring",
		body="Assim. Jubbah",hands="Symbios Gloves",left_ring="Prolix Ring",
		back="Cornflower Cape",waist="Witful belt",
		legs="Mavi Tayt +2",feet="Mirage Charuqs +2"}
	
	sets.precast.FastCast = {head="Uk'uxkaj Cap",left_ear="Loquacious earring",
		body="Hagondes Coat",hands="Thaumas Gloves",left_ring="Prolix Ring",
		back="Swith cape",waist="Witful belt",
		legs="Orvail Pants +1",feet="Iuitl Gaiters"}
	
	sets.precast.BlueMagicFastCast = {head="Uk'uxkaj Cap",left_ear="Loquacious earring",
		body="Mavi Mintan +2",hands="Mv. Bazubands +2",left_ring="Prolix Ring",
		back="Swith cape",waist="Witful belt",
		legs="Orvail Pants +1",feet="Iuitl Gaiters"}
		
	sets.precast.MaxHastehead= {"Uk'uxkaj Cap",left_ear="Loquacious earring",	
		body="Assim. Jubbah",hands="Iuitl Wristbands",left_ring="Prolix Ring",
		back="Swith cape",waist="Phasmida Belt",
		legs="Manibozho Brais",feet="Iuitl Gaiters"}
		
	sets.precast.BlueMagicMaxHastehead= {head="Uk'uxkaj Cap",left_ear="Loquacious earring",
		body="Assim. Jubbah",hands="Mv. Bazubands +2",left_ring="Prolix Ring",
		back="Swith cape",waist="Phasmida Belt",
		legs="Iuitl Tights",feet="Iuitl Gaiters"}
	--[[5 above need work]]
	
	sets.TP = {}
	sets.TP.DA = {head="Iuitl Headgear",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Thaumas coat",hands="Iuitl Wristbands",left_ring="Epona's Ring",
		right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Iuitl Tights",feet="Iuitl Gaiters" }
		
	sets.TP.SOLO = set_combine(sets.TP.DA,{body="Iuitl Vest"})
	
	sets.TP.Learning set_combine(sets.TP.DA,{body="Assim. Jubbah",hands="Magus Bazubands",legs="Mavi Tayt +2"})
		
end

function precast(spell)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.skill == 'BlueMage' then
		if spell.element == 'Earth' and spell.target == 'Enemy' then
			equip({neck="Quanpur Necklace"})
		end
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
end

--[[Relic augments:
Head: Luhlaza Keffiyeh: aug
Body: Luhlaza Jubbah: aug
Hands: Luhlaza Bazubands: aug
Legs: Luhlaza Shalwar: aug
Feet: Luhlaza Charuqs: aug
]]

function midcast(spell)
end

function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.precast.TP)
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
		equip(sets.TP.Engage)
	end
end

function buff_change(buff_name,gain) --gain = True if gained, False if lost
	if gain then -- something was gained
		if buff_name=='Collimated Fervor' then
			disable('head')
			send_command('@input /echo Collimated Fervor ON, head disabled')
		elseif buff_name=='Bolster' then 
			disable('body')
			send_command('@input /echo Bolster ON, body disabled')
		elseif buff_name=='Full Circle' then
			disable('hands')
			send_command('@input /echo Full Circle ON, hands disabled')
		elseif buff_name=='Mending Halation' then
			disable('legs')
			send_command('@input /echo Full Circle ON, hands disabled')
		elseif buff_name=='Radial Arcana' then
			disable('feet')
			send_command('@input /echo Full Circle ON, hands disabled')
		end
	
	elseif not gain then -- something lost
		if buff_name=='Collimated Fervor' then
			enable('head')
			send_command('@input /echo Collimated Fervor off, head enabled')
		elseif buff_name=='Bolster' then 
			enable('body')
			send_command('@input /echo Bolster off, body enabled')
		elseif buff_name=='Full Circle' then
			enable('hands')
			send_command('@input /echo Full Circle off, hands enabled')
		elseif buff_name=='Mending Halation' then
			enable('legs')
			send_command('@input /echo Full Circle off, hands enabled')
		elseif buff_name=='Radial Arcana' then
			enable('feet')
			send_command('@input /echo Full Circle off, hands enabled')
		end
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

--[[ Weaponskill Rules ]]
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

--[[ Buff Rules ]]
	--[[Job Ability ]]
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
			--[[<action type="equip" when="midcast">
				back="Repulse Mantle",
			</action>]]
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
