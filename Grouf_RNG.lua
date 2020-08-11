--[[
		=====================
		|    R A N G E R    | 
		=====================
]]

function get_sets()				
	sets.JA = {}
	sets.JA.Barrage = {hands="Orion Bracers"}
	sets.JA.Sharpshot = {legs="Orion Braccae"}
	sets.JA['Double Shot'] = {head="Amini Gapette"}
	sets.JA['Velocity Shot'] = {body="Amini Caban +1"}
	sets.JA['Bounty Shot'] = {hands="Amini Glovelettes"}
	sets.JA['Unlimited Shot'] = {feet="Amini Bottillons +1"} --Don't need since it shares timer with Double Shot
	sets.JA.Scavenge = {feet="Orion Socks"}
	sets.JA.Camouflage = {body="Orion Jerkin +1"}
	sets.JA.Shadowbind = {hands="Orion Bracers"}
	
	--[[sets.Snapshot = {head="Amini Gapette",neck="",left_ear="",
		right_ear="",body="",hands="Arcadian Bracers",left_ring="",
		right_ring="",back="",waist="",
		legs="",feet=""} ]]
	
	
	sets.WS = {}
	sets.WS.Base = {head="Umbani Cap",neck="Fotia Gorget",left_ear="Volley Earring",
		right_ear="Enervating Earring",body="Kyujutsugi",hands="Buremte Gloves",left_ring="Fistmele Ring",
		right_ring="Paqichikaji Ring",back="Lutian Cape",waist="Scout's Belt",
		legs="Nahtirah Trousers",feet="Scopuli Nails +1"}
		--legs="Arc. Braccae +1"
	sets.JA["Eagle Eye Shot"] = sets.WS.Base
	
	--sets.midcast.Jishnu = set_combine(sets.midcast.WS,{waist="Light Belt"})
	sets.WS["Jishnu's Radiance"] = sets.WS.Base
	
	--[[sets.midcast.WSMelee = {head="Whirlpool Mask",neck="Light Gorget",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Qaaxo Mitaines",left_ring="Cho'j Band",
		right_ring="Rajas Ring",back="Buquwik Cape",waist="Prosilio Belt +1",
		legs="Manibozho Brais",feet="Qaaxo Leggings"}]]

	sets.Utsusemi = set_combine(sets.WS.Base,{head="Haruspex Hat", neck="Magoraga Beads", 
		body="Taeon Tabard", hands="Thaumas Gloves", left_ear='Loquac. Earring', right_ear="Etiolation Earring", 
		left_ring="Weather. Ring", right_ring="Prolix Ring", legs="Orion Braccae"})
		--Gear Haste: 30%, Fast Cast: 26%
	
	sets.TP = {}
	sets.TP.Ranged = {head="Umbani Cap",neck="Ocachi Gorget",left_ear="Volley Earring",
		right_ear="Enervating Earring",body="Kyujutsugi",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Paqichikaji Ring",back="Lutian Cape",waist="Scout's Belt",
		legs="Nahtirah Trousers",feet="Scopuli Nails +1"}
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.Ranged
	sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Jute Boots +1"})
	send_command('input /macro book 11;wait .1;input /macro set 1')
	
	sets.dontforget = {main="Hurlbat", sub="Antican Axe", range="Cibitshavore", 
		right_ear="Reraise Earring", back="Mecisto. Mantle"}
	
	sets.dontforget2 = {range="Illapa"}
	
	end --End Sets

function precast(spell)
	--windower.add_to_chat(14, 'Precast: spell type= ' ..spell.type)
	
	if spell.type=="WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS.Base)
		end
		if buffactive['Reive Mark'] then
			equip({neck="Ygnas's Resolve +1"})
		end
		if (player.tp > 1749 and player.tp < 2000) or (player.tp > 2749 and player.tp < 3000) then
			EquipSet = set_combine(EquipSet,{left_ear="Moonshade Earring"})
		end

	elseif spell.prefix=="/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	
	elseif spell.english == "Ranged" then
		--equip(sets.Shapshot)
		equip(sets.TP.Ranged)
	
	end
	if string.find(spell.english,'Utsusemi') then
		equip(sets.Utsusemi)
	end
	
end

function midcast(spell)
	--if spell.prefix == '/jobability' or spell.type == 'WeaponSkill' then
	--midcast doesn't exist for JA or WS so cancel the processing of this function
		--windower.add_to_chat(14, 'JobAbility or WeaponSkill; Midcast cancelled')
	--	return
	--end
		
	--if spell.english == 'Ranged' then
		--windower.add_to_chat(14, 'Ranged attack found')
	--	equip(sets.TP.Ranged)
	--elseif string.find(spell.english,'Utsusemi') then
	
	
end

function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.aftercast.TP)
	else
		equip(sets.aftercast.Idle)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function status_change(new,old)
	--windower.add_to_chat(14, 'status_change; new=' ..new.. ' | old=' ..old)
	if S{'Idle','Resting'}:contains(new) then
		--windower.add_to_chat(14, 'status_change; Idle or Resting')
		equip(sets.aftercast.Idle)
	elseif new == 'Engaged' then
		--windower.add_to_chat(14, 'status_change; Engaged')
		equip(sets.aftercast.TP)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Ygnas's Resolve +1"})
	end
end

function buff_change(buff_name,gain)
end
