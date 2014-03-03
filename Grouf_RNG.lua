--[[
		=====================
		|    R A N G E R    | 
		=====================
]]

function get_sets()				
	sets.precast = {}
	sets.precast.Barrage = {hands="Orion Bracers"}
	sets.precast.Sharpshot = {legs="Orion Braccae"}
	sets.precast['Double Shot'] = {head="Sylvan Gapette +2"}
	sets.precast['Velocity Shot'] = {body="Sylvan Caban +2"}
	sets.precast['Bounty Shot'] = {hands="Syl. Glvltte. +2"}
	sets.precast['Unlimited Shot'] = {feet="Sylvan Bottln. +2"} --Don't need since it shares timer with Double Shot
	sets.precast.Scavenge = {feet="Orion Socks"}
	sets.precast.Camouflage = {body="Orion Jerkin"}
	sets.precast.Shadowbind = {hands="Orion Bracers"}
	
	sets.precast.WS = {head="Orion Beret",neck="Ocachi Gorget",left_ear="Clearview Earring",
		right_ear="Volley Earring",body="Orion Jerkin",hands="Buremte Gloves",left_ring="Jalzahn's Ring",
		right_ring="Paqichikaji Ring",back="Lutian Cape",waist="Scout's Belt",
		legs="Thur. Tights +1",feet="Orion Socks"}
	
	--sets.precast.Jishnu = set_combine(sets.precast.WS,{waist="Light Belt"})
	sets.precast["Jishnu's Radiance"] = set_combine(sets.precast.WS,{waist="Light Belt"})
	
	sets.precast.WSMelee = {head="Uk'uxkaj Cap",neck="Light Gorget",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Iuitl Wristbands",left_ring="Spiral Ring",
		right_ring="Rajas Ring",back="Buquwik Cape",waist="Prosilio Belt",
		legs="Manibozho Brais",feet="Iuitl Gaiters"}
	
	sets.precast.Utsusemi = set_combine(sets.precast.WS,{neck="Magoraga Beads",left_ear='Loquac. Earring',
		left_ring="Prolix Ring",waist="Phasmida Belt",legs="Orion Braccae",feet="Thur. Boots +1"})
		--Gear Haste: 30%, Fast Cast: 4%
	
	sets.TP = {}
	sets.TP.Ranged = {head="Orion Beret",neck="Ocachi Gorget",left_ear="Clearview Earring",
		right_ear="Volley Earring",body="Orion Jerkin",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Paqichikaji Ring",back="Lutian Cape",waist="Scout's Belt",
		legs="Thur. Tights +1",feet="Orion Socks"}
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.Ranged
	sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Fajin Boots"})
	send_command('input /macro book 11;wait .1;input /macro set 1')
	
	end --End Sets

function precast(spell)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif string.find(spell.english,'Utsusemi') then
		equip(sets.precast.Utsusemi)
	elseif spell.type=="WeaponSkill" then
	--[[
		if string.find(spell.english,'Jishnu') then
			equip(sets.precast.Jishnu)
		else
	]]
		equip(sets.precast.WS)
		--end
	end
end

function midcast(spell)
end

function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.aftercast.TP)
	else
		equip(sets.aftercast.Idle)
	end
end

function status_change(new,old)
	if T{'Idle','Resting'}:contains(new) then
		equip(sets.aftercast.Idle)
	elseif new == 'Engaged' then
		equip(sets.aftercast.TP)
	end
end

function buff_change(buff_name,gain)
end
