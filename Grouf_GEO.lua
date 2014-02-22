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
		
	--sets.precast.FastCast = {main="Plenitas Virga",sub="Arbuda Grip",ammo="Impatiens",head="Nares Cap",
	--	neck="Orunmila's Torque",left_ear="Loquac. Earring",body="Anhur Robe",
	--	hands="Bokwus Gloves",back="Lifestream Cape",
	--	waist="Witful Belt",legs="Geomancy Pants",feet="Augur's Gaiters"}
	
	sets.precast.Geomancy = {main="Dowser's Wand",sub="Genbu's Shield",range="Filiae Bell",head="Geomancy Galero",
		neck="Morgana's Choker",left_ear="Loquac. Earring",body="Geomancy Tunic",
		hands="Geomancy Mitaines",back="Lifestream Cape",
		waist="Witch Sash",legs="Geomancy Pants",feet="Geomancy Sandals"}
		
	--Enhancing needs work
	sets.precast.Enhancing = {body="Anhur Robe",neck="Stone Gorget",hands="Ayao's Gages",
		left_ear="Loquac. Earring",left_ring="Sangoma Ring",right_ring="Omega Ring",
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
		equip(sets.precast.Enhancing)
	elseif spell.skill == 'ElementalMagic' then
		equip(sets.precast.ElementalMagic)
	elseif spell.skill == 'DarkMagic' then
		equip(sets.precast.DarkMagic)
	elseif spell.skill == 'EnfeeblingMagic' then
		equip(sets.precast.Enfeeble)
	elseif spell.skill == 'HealingMagic' then
		equip(sets.precast.Cure)
	elseif spell.type=="WeaponSkill" then
		equip(sets.TP.WS)
	end
end

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

function buff_change(status,gain_or_loss)
end
