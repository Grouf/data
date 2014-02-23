--[[
		=========================
		|   G E O M A N C E R   | 
		=========================
]]

function get_sets()				
	sets.precast = {}
	
	sets.precast.Idle = {main="Dowser's Wand",sub="Genbu's Shield",range="Filiae Bell",head="Geomancy Galero",
		neck="Morgana's Choker",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat",
		hands="Bagua Mitaines",left_ring="Irrwisch Ring",right_ring="Prolix Ring",back="Lifestream Cape",
		waist="Aswang Sash",legs="Nares Trews",feet="Geomancy Sandals"}
	
	sets.precast.Rest = set_combine(sets.precast.Idle,{main="Chatoyant Staff",sub="Elder's Grip"})
	
	sets.precast.Cure = {main="Tamaxchi",sub="Genbu's Shield",ammo="Oreiad's Tathlum",head="Kaabanax Hat",
		neck="Morgana's Choker",left_ear="Loquac. Earring",right_ear="Lifestorm Earring",body="Geomancy Tunic",
		hands="Weather. Cuffs",left_ring="Sirona's Ring",right_ring="Solemn Ring",back="Pahtli Cape",
		waist="Witch Sash",legs="Nares Trews",feet="Orvail Souliers +1"}
		
	sets.precast.Enfeeble = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabanax Hat",
		neck="Stoicheion Medal",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Irrwisch Ring",right_ring="Omega Ring",back="Refraction Cape",
		waist="Aswang Sash",legs="Orvail Pants +1",feet="Hagondes Sabots"}
		
	sets.precast.FastCast = {main="Lehbrailg +2",sub="Elder's Grip",head="Hagondes Hat",
		left_ear="Loquac. Earring",body="Anhur Robe",
		hands="Hagondes Cuffs",back="Swith Cape",
		waist="Witful Belt",legs="Geomancy Pants",feet="Hagondes Sabots"}  --Geo. Pants = 11%
	
	sets.precast.Geomancy = {main="Dowser's Wand",sub="Genbu's Shield",range="Filiae Bell",head="Geomancy Galero",
		neck="Morgana's Choker",left_ear="Loquac. Earring",body="Geomancy Tunic",
		hands="Geomancy Mitaines",back="Lifestream Cape",
		waist="Witch Sash",legs="Geomancy Pants",feet="Geomancy Sandals"}
		
	--Enhancing needs work
	sets.precast.Enhancing = {body="Anhur Robe",neck="Stone Gorget",hands="Augur's Gloves",
		left_ear="Loquac. Earring",
		waist="Siegel Sash",legs="Shedir Seraweels",feet="Geomancy Sandals"}
		
	sets.precast.ElementalMagic = {main="Lehbrailg +2",sub="Elder's Grip",ammo="Witchstone",head="Hagondes Hat",
		neck="Stoicheion Medal",left_ear="Hecate's Earring",right_ear="Friomisi Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Icesoul Ring",right_ring="Strendu ring",back="Toro Cape",
		waist="Aswang Sash",legs="Hagondes Pants",feet="Hagondes Sabots"}
		
	sets.precast.DarkMagic = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Kalboron Stone",head="Kaabanax Hat",
		neck="Stoicheion Medal",left_ear="Psystorm Earring",right_ear="Lifestorm Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Icesoul Ring",right_ring="Omega Ring",back="Refraction Cape",
		waist="Witch Sash",legs="Hagondes Pants",feet="Hagondes Sabots"}
	
		
	sets.TP = {}
	sets.TP.Engage = {main="Dowser's Wand",sub="Genbu's Shield",range="Filiae Bell",head="Kaabanax Hat",
		neck="Asperity Necklace",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Rajas Ring",right_ring="Mars's Ring",back="Buquwik Cape",
		waist="Aswang",legs="Hagondes Pants",feet="Hagondes Sabots"}
		
	sets.TP.WS = {head="Hagondes Hat",
		neck="Tlamiztli Collar",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Hagondes Coat",
		hands="Hagondes Cuffs",left_ring="Rajas Ring",right_ring="Flame Ring",back="Buquwik Cape"
		waist="Prosilio Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}
	

	--sets.aftercast = {}

	send_command('input /macro book 20;wait .1;input /macro set 1')
	
end

function precast(spell)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.skill == 'Geomancy' then
		equip(sets.precast.Geomancy)
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
		if spell.element == 'Earth' then
			equip({neck="Quanpur Necklace"})
		end
	elseif spell.skill == 'DarkMagic' then
		equip(sets.precast.DarkMagic)
	elseif spell.skill == 'EnfeeblingMagic' then
		equip(sets.precast.Enfeeble)
	elseif spell.skill == 'HealingMagic' then
		equip(sets.precast.Cure)
	elseif spell.type=='WeaponSkill' then
		equip(sets.TP.WS)
	elseif spell.type=='JobAbility' then
		--[[ R E L I C ]]--
		if spell.english=="Collimated Fervor" then
			equip({head="Bagua Galero"})
			disable('head')
			send_command('@input /echo Relic head on, head disable')
		elseif spell.english=="Bolster" then
			equip({body="Bagua Tunic"})
			disable('body')
			send_command('@input /echo Relic body on, body disable')
		elseif spell.english=="Full Circle" then
			equip({hands="Bagua Mitaines"})
			disable('hands')
			send_command('@input /echo Relic hands on, hands disable')
		elseif spell.english=="Mending Halation" then
			equip({legs="Bagua Pants"})
			disable('legs')
			send_command('@input /echo Relic legs on, legs disable')
		elseif spell.english=="Radial Arcana" then
			equip({feet="Bagua Sandals"})
			disable('feet')
			send_command('@input /echo Relic feet on, feet disable')
		end
	end
end

--[[Relic augments:
Head: Bagua Galero: Primeval Zeal
Body: Bagua Tunic: Bolster
Hands: Bagua Mitaines: Curative Recantation
Legs: Bagua Pants: Mending Halation
Feet: Bagua Sandals: Radial Arcana
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
	elseif new == 'Rest' then
		equip(sets.precast.Resting)
	elseif new == 'Engaged' then
		equip(sets.TP.Engage)
	end
end

function buff_change(status,gain_or_loss) --gain_or_loss = True if gained, False if lost
	if status=='Collimated Fervor' and not gain_or_loss then
		enable('head')
		send_command('@input /echo Collimated Fervor off, head enabled')
	elseif status=='Bolster' and not gain_or_loss then --if buff 'Bolster' and not false (not false = true) bolster lost
		enable('body')
		send_command('@input /echo Bolster off, body enabled')
	elseif status=='Full Circle' and not gain_or_loss then
		enable('hands')
		send_command('@input /echo Full Circle off, hands enabled')
	elseif status=='Mending Halation' and not gain_or_loss then
		enable('legs')
		send_command('@input /echo Full Circle off, hands enabled')
	elseif status=='Radial Arcana' and not gain_or_loss then
		enable('feet')
		send_command('@input /echo Full Circle off, hands enabled')
	end
		
end
