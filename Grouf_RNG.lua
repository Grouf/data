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
	sets.precast['Unlimited Shot'] = {feet="Sylvan Bottln. +2"} --Don't need
	sets.precast.Scavenge = {feet="Orion Socks"}
	sets.precast.Camouflage = {body="Orion Jerkin"}
	sets.precast.Shadowbind = {hands="Orion Bracers"}
	
	sets.precast.WS = {head="Orion Beret", neck="Ocachi Gorget", left_ear="Clearview Earring", right_ear="Volley Earring", 
		body="Orion Jerkin", hands="Buremte Gloves", left_ring="Jalzahn's Ring", right_ring="Paqichikaji Ring", 
		back="Lutian Cape", waist="Scout's Belt", legs="Thur. Tights +1", feet="Orion Socks"}
	
	--sets.precast['Jishnu"s Radiance'] = set_combine(sets.precast.WS,{waist="Light Belt"})
	sets.precast.Jishnu = set_combine(sets.precast.WS,{waist="Light Belt"})
	
	sets.precast.WSMelee = {head="Uk'uxkaj Cap", neck="Light Gorget", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
		body="Manibozho Jerkin", hands="Iuitl Wristbands", left_ring="Spiral Ring", right_ring="Rajas Ring", 
		back="Buquwik Cape", waist="Prosilio Belt", legs="Manibozho Brais", feet="Iuitl Gaiters"}
	
	sets.TP = {}
	sets.TP.Ranged = {head="Orion Beret", neck="Ocachi Gorget", left_ear="Clearview Earring", right_ear="Volley Earring", 
		body="Orion Jerkin", hands="Buremte Gloves", left_ring="Rajas Ring", right_ring="Paqichikaji Ring", 
		back="Lutian Cape", waist="Scout's Belt", legs="Thur. Tights +1", feet="Orion Socks"}
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.Ranged
	sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Fajin Boots"})
	send_command('input /macro book 11;wait .1;input /macro set 1')
	
	end --End Sets
	
	--MNK Below::
	--[[
	sets.precast.Chakra = {main="Oatixur",ammo="Hagneia Stone",head="Uk'uxkaj Cap",neck="Tjukurrpa Medal",
		left_ear="Steelflash Earring",right_ear="Kemas Earring",body="Anchorite's Cyclas",hands="Mel. Gloves +2",
		left_ring="Terrasoul Ring",right_ring="Spiral Ring",back="Iximulew Cape",waist="Warwolf Belt",legs="Kaabnax Trousers",
		feet="Thur. Boots +1"}
	
	sets.precast.Step = {ammo="Honed Tathlum",head="Ejekamal Mask",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Heartseeker Earring",body="Manibozho Jerkin",hands="Mel. Gloves +2",left_ring="Epona's Ring",
		right_ring="Rajas Ring",back="Anchoret's Mantle",waist="Warwolf Belt",legs="Manibozho Brais",feet="Thur. Boots +1"}

	sets.precast.WS = {main="Oatixur",ammo="Thew Bomblet",head="Uk'uxkaj Cap",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Mel. Gloves +2",
		left_ring="Spiral Ring",right_ring="Rajas Ring",back="Atheling Mantle",waist="Prosilio Belt",legs="Manibozho Brais",
		feet="Otronif Boots"}
		
	sets.precast['Victory Smite'] = set_combine(sets.precast.WS,{neck="Light Gorget"})
	
	sets.precast['Shijin Spiral'] = set_combine(sets.precast.WS,{neck="Flame Gorget"})
	
	sets.TP = {}
	sets.TP.DD = {main="Oatixur",ammo="Hagneia Stone",head="Uk'uxkaj Cap",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Thaumas Coat",hands="Otronif Gloves",
		left_ring="Epona's Ring",right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",legs="Quiahuiz Leggings",
		feet="Otronif Boots"}

	sets.TP.Solo = {main="Oatixur",ammo="Hagneia Stone",head="Uk'uxkaj Cap",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Otronif Harness",hands="Otronif Gloves",
		left_ring="Epona's Ring",right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",legs="Quiahuiz Leggings",
		feet="Otronif Boots"}
	
	sets.DT = {main="Oatixur",ammo="Hagneia Stone",head="Uk'uxkaj Cap",neck="Twilight Torque",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Otronif Harness",hands="Otronif Gloves",left_ring="Dark Ring",
		right_ring="Shadow Ring",back="Shadow Mantle",waist="Black Belt",legs="Kaabnax Trousers",feet="Otronif Boots"}

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 2;wait .1;input /macro set 10')
end
]]

function precast(spell)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.type=="WeaponSkill" then
		if string.find(spell.english,'Jishnu') then
		equip(sets.precast.Jishnu)
	else
		equip(sets.precast.WS)
	end
	--elseif string.find(spell.english,'Step') then
		--equip(sets.precast.Step)
	--elseif string.find(spell.english,'Violent Flourish') then
		--equip(sets.precast.Step)
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

function buff_change(status,gain_or_loss)
end

--[[
function self_command(command)
	if command == 'DD' then
		sets.aftercast.TP = sets.TP.DD
		sets.aftercast.Idle = sets.TP.DD
		equip(sets.aftercast.TP)
		send_command('@input /echo DD SET')
	elseif command == 'SOLO' then
		sets.aftercast.TP = sets.TP.Solo
		sets.aftercast.Idle = sets.TP.Solo
		equip(sets.aftercast.TP)
		send_command('@input /echo SOLO SET')
	elseif command == 'DT' then
		sets.aftercast.TP = sets.DT
		sets.aftercast.Idle = sets.DT
		equip(sets.aftercast.TP)
		send_command('@input /echo DT SET')
	end
end
]]

