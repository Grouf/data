--[[
		=================
		|   T H I E F   | 
		=================
]]

function get_sets()				
	sets.precast = {}
	
	sets.precast.Flee = {feet="Pillager's Poulaines"}
	sets.precast.Steal = {hands="Pillager's Armlets",legs="Assassin's Culottes",feet="Pillager's Poulaines"
	sets.precast.Mug = {head="Assassin's Bonnet"}
	sets.precast.Despoil = {legs="Raid. Culottes +2", feet="Raid. Poulaines +2"}
	sets.precast.Conspirator = {body="Raider's Vest +2"}
	sets.precast.Accomplice = {head="Raider's Bonnet +2"}
	sets.precast.Collaborator = {head="Raider's Bonnet +2"}
	--sets.precast['Perfect Dodge'] = {hands="Assassin's Armlets +2"}

	sets.precast.Idle = {}
	
	sets.precast.Rest = {}
	
	sets.precast.Evisceration = {head="Uk'uxkaj Cap",neck="Nefarious Collar",left_ear="Moonshade Earring",
		right_ear="Brutal Earring",body="Manibozho Jerkin",hands="Pillager's Armlets",ring1="Rajas Ring",
		right_ring="Thundersoul Ring",back="Rancorous Mantle",waist="Wanion Belt",
		legs="Manibozho Brais",feet="Manibozho Boots"}
	
	sets.precast["Rudra's Storm"] = {head="Whirlpool Mask",neck="Love Torque",left_ear="Moonshade Earring",
		right_ear="Brutal Earring",body="Manibozho Jerkin",hands="Iuitl Wristbands",left_ring="Rajas Ring",
		right_ring="Thundersoul Ring",back="Atheling Mantle",waist="Wanion Belt",
		legs="Manibozho Brais",feet="Iuitl Gaiters"}
	
	sets.precast.Exenterator = {head="Uk'uxkaj Cap",neck="Houyi's Gorget",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Iuitl Wristbands",ring1="Stormsoul Ring",
		right_ring="Epona's Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Nahtirah Trousers",feet="Iuitl Gaiters"}
	
	sets.precast.Step = {head="Ejekamal Mask",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Heartseeker Earring",body="Manibozho Jerkin",hands="Hes. Gloves",left_ring="Epona's Ring",
		right_ring="Rajas Ring",back="Anchoret's Mantle",waist="Warwolf Belt",
		legs="Manibozho Brais",feet="Thur. Boots +1"}
	
	
	sets.TP = {}
	sets.TP.DD = {head="Uk'uxkaj Cap",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Thaumas Coat",hands="Otronif Gloves",left_ring="Epona's Ring",
		right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",legs="Quiahuiz Leggings",
		feet="Otronif Boots"}

	sets.TP.Solo = {head="Uk'uxkaj Cap",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Otronif Harness",hands="Otronif Gloves",left_ring="Epona's Ring",
		right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Leggings",feet="Otronif Boots"}
	
	sets.TP.TH = {head="Uk'uxkaj Cap",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Thaumas Coat",hands="Otronif Gloves",left_ring="Epona's Ring",
		right_ring="Rajas Ring",back="Atheling Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Leggings",feet="Otronif Boots"}
	
	sets.DT = {head="Uk'uxkaj Cap",neck="Twilight Torque",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Otronif Harness",hands="Otronif Gloves",left_ring="Dark Ring",
		right_ring="Shadow Ring",back="Shadow Mantle",waist="Black Belt",
		legs="Kaabnax Trousers",feet="Otronif Boots"}

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = sets.TP.DD
	send_command('input /macro book 6;wait .1;input /macro set 10')
	
	--[[ Spellcast gear sets
	
		--[[
			<set name = "Idle" >
			<ammo></ammo>
			<!--head="Iuitl Headgear",-->
			head="Uk'uxkaj Cap",
			neck="Asperity Necklace",
			left_ear="Steelflash Earring",
			right_ear="Bladeborn Earring",
			<!--body="Iuitl Vest",-->
			body="Thaumas Coat",
			hands="Iuitl Wristbands",
			left_ring="Epona's Ring",
			right_ring="Rajas Ring",
			back="Canny Cape</back>
			waist="Windbuffet Belt",
			<!--legs="Iuitl Tights",-->
			legs="Kaabnax Trousers",
			feet="Iuitl Gaiters"}
		</set>
		
		<set name = "TP" >
			<ammo></ammo>
			<!--head="Iuitl Headgear",-->
			head="Uk'uxkaj Cap",
			neck="Asperity Necklace",
			left_ear="Steelflash Earring",
			right_ear="Bladeborn Earring", <!--Bladeborn = Attack-->
			<!--body="Iuitl Vest",-->
			body="Thaumas Coat",
			hands="Iuitl Wristbands",
			left_ring="Epona's Ring",
			right_ring="Rajas Ring",
			back="Canny Cape</back>
			waist="Windbuffet Belt",
			<!--waist="Phasmida belt",-->
			<!--legs="Iuitl Tights",-->
			legs="Kaabnax Trousers",
			feet="Iuitl Gaiters"}
		</set>
		
		<set name="Ranged">
			head="Pillager's Bonnet",
			neck="Arctier's Torque",
			left_ear="Clearview earring",
			right_ear="Bladeborn Earring",
			body="Iuitl Vest",
			hands="Iuitl Wristbands",
			left_ring="Paqichikaji Ring",
			right_ring="Jalzahn's Ring",
			back="Libeccio Mantle</back>
			waist="Buccaneer's Belt",
			legs="Thur. Tights +1",
			feet="Pillager's Poulaines"}
		</set>
		
		<!--	Weapon Skills   -->
		<set name = "AEdge" >
			<ammo></ammo>
			head="Thaumas Hat",
			neck="Stoicheion Medal",
			left_ear="Hecate's Earring",
			right_ear="Friomisi Earring",
			body="Iuitl Vest",
			<!--hands="Iuitl Wristbands",-->
			left_ring="Icesoul Ring",
			right_ring="Omega Ring",
			<!--back="Tjukurrpa Mantle</back>-->
			waist="Aquiline Belt",
			legs="Iuitl Tights",
			feet="Iuitl Gaiters"}
		</set>
			
		<set name = "Evis" >
			<ammo></ammo>
			head="Uk'uxkaj Cap",
			neck="Shadow Gorget",
			left_ear="Dudgeon Earring",
			right_ear="Bladeborn Earring",
			body="Manibozho Jerkin",
			hands="Iuitl Wristbands",
			left_ring="Spiral Ring",
			right_ring="Rajas Ring",
			back="Buquwik Cape</back>
			waist="Light Belt",
			legs="Manibozho Brais",
			feet="Iuitl Gaiters"}
		</set>
		
		<set name = "Exen" > 
			<ammo></ammo>
			head="Uk'uxkaj Cap",
			neck="Light Gorget",
			left_ear="Dudgeon Earring",
			right_ear="Bladeborn Earring",
			body="Manibozho Jerkin",
			<!--hands="Iuitl Wristbands",-->
			hands="Asn. Armlets +2",
			left_ring="Spiral Ring",
			right_ring="Rajas Ring",
			back="Buquwik Cape</back>
			<!--waist="Thunder Belt",-->
			waist="Prosilio Belt",
			legs="Manibozho Brais",
			feet="Iuitl Gaiters"}
		</set>
		
		<set name="Steps">
			<!--<ammo>Honed Tathlum</ammo>-->
			head="Ejekamal Mask",
			neck="Asperity Necklace",
			left_ear="Steelflash earring",
			right_ear="Heartseeker earring",
			body="Manibozho Jerkin",
			hands="Asn. Armlets +2",
			left_ring="Epona's Ring",
			right_ring="Rajas Ring",
			back="Canny Cape</back>
			waist="Phasmida Belt",
			legs="Manibozho Brais",
			feet="Iuitl Gaiters"}
		</set>
		
		]]
	]]
	
	
	
	
	
end

function precast(spell)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.type=="WeaponSkill" then
		equip(sets.precast.WS)
	elseif string.find(spell.english,'Step') then
		equip(sets.precast.Step)
	elseif string.find(spell.english,'Violent Flourish') then
		equip(sets.precast.Step)
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

function self_command(command)
	if command == 'DD' then
		sets.aftercast.TP = sets.TP.DD
		sets.aftercast.Idle = sets.TP.DD
		equip(sets.aftercast.TP)
		send_command('@input /echo DD set')
	elseif command == 'SOLO' then
		sets.aftercast.TP = sets.TP.Solo
		sets.aftercast.Idle = sets.TP.Solo
		equip(sets.aftercast.TP)
		send_command('@input /echo SOLO set')
	elseif command == 'TH' then
		sets.aftercast.TP = sets.TP.TH
		sets.aftercast.Idle = sets.TP.TH
		equip(sets.aftercast.TP)
		send_command('@input /echo Treasure Hunter set')
	elseif command == 'DT' then
		sets.aftercast.TP = sets.DT
		sets.aftercast.Idle = sets.DT
		equip(sets.aftercast.TP)
		send_command('@input /echo DT set')
	end
end

--[[ Forum Example

--Define sets in get_sets()
 
sets.TP.Haste = {stuff}
sets.TP.PDT = {stuff}
sets.TP.MDT = {stuff}
 
sets.TP.Use = sets.TP.Haste

----

function self_command(command)
   if command == "equip PDT" then
      sets.TP.Use = sets.TP.PDT
   elseif command == "equip MDT" then
      sets.TP.Use = sets.TP.MDT
   elseif command == "equip Haste" then
      sets.TP.Use = sets.TP.Haste
end

function status_change(new,old)
    if new == 'Engaged' then
        equip(sets.TP.Use)
    end
end

]]




--[[ from Examples
function get_sets()
	TP_Index = 1
	Idle_Index = 1

	sets.weapons = {}
	sets.weapons[1] = {main="Izhiikoh"}
	sets.weapons[2]={main="Twashtar"}
	sets.weapons[3]={main="Thief's Knife"}
	
	sets.JA = {}
	sets.JA.Conspirator = {body="Raider's Vest +2"}
	sets.JA.Accomplice = {head="Raider's Bonnet +2"}
	sets.JA.Collaborator = {head="Raider's Bonnet +2"}
	sets.JA['Perfect Dodge'] = {hands="Assassin's Armlets +2"}
	sets.JA.Steal = {head="Assassin's Bonnet +2",neck="Rabbit Charm",hands="Thief's Kote",
		waist="Key Ring Belt",legs="Assassin's Culottes",feet="Pillager's Poulaines"}
	sets.JA.Flee = {feet="Pillager's Poulaines"}
	sets.JA.Despoil = {legs="Raider's Culottes +2",feet="Raider's Poulaines +2"}
	sets.JA.Mug = {head="Assassin's Bonnet +2"}
	sets.JA.Waltz = {head="Anwig Salade",neck="Dualism Collar",body="Iuitl Vest",hands="Buremte Gloves",ring1="Valseur's Ring",right_ring="Veela Ring",
		waist="Aristo Belt",legs="Desultor Tassets",feet="Dance Shoes"}
	
	sets.WS = {}
	sets.WS.SA = {}
	sets.WS.TA = {}
	sets.WS.SATA = {}
	
	sets.WS.Evisceration = {head="Uk'uxkaj Cap",neck="Nefarious Collar",left_ear="Moonshade Earring",right_ear="Brutal Earring",
		body="Manibozho Jerkin",hands="Pillager's Armlets",ring1="Rajas Ring",right_ring="Thundersoul Ring",
		back="Rancorous Mantle",waist="Wanion Belt",legs="Manibozho Brais",feet="Manibozho Boots"}
		
	sets.WS.SA.Evisceration = set_combine(sets.WS.Evisceration,{hands="Raider's Armlets +2"})

	sets.WS["Rudra's Storm"] = {head="Whirlpool Mask",neck="Love Torque",left_ear="Moonshade Earring",right_ear="Brutal Earring",
		body="Manibozho Jerkin",hands="Iuitl Wristbands",ring1="Rajas Ring",right_ring="Thundersoul Ring",
		back="Atheling Mantle",waist="Wanion Belt",legs="Manibozho Brais",feet="Iuitl Gaiters"}
		
	sets.WS.SA["Rudra's Storm"] = set_combine(sets.WS["Rudra's Storm"],{hands="Raider's Armlets +2"})

	sets.WS.Exenterator = {head="Uk'uxkaj Cap",neck="Houyi's Gorget",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",
		body="Manibozho Jerkin",hands="Iuitl Wristbands",ring1="Stormsoul Ring",right_ring="Epona's Ring",
		back="Atheling Mantle",waist="Windbuffet Belt",legs="Nahtirah Trousers",feet="Iuitl Gaiters"}

	sets.WS.TA.Exenterator = {head="Uk'uxkaj Cap",neck="Houyi's Gorget",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",
		body="Manibozho Jerkin",hands="Pillager's Armlets",ring1="Stormsoul Ring",right_ring="Epona's Ring",
		back="Atheling Mantle",waist="Windbuffet Belt",legs="Nahtirah Trousers",feet="Iuitl Gaiters"}
		
	sets.WS.SATA.Exenterator = sets.WS.TA.Exenterator
	
	TP_Set_Names = {"Low Man","Delay Cap","Evasion","TH"}
	sets.TP = {}
	sets.TP['Low Man'] = {range="Raider's Bmrng.",head="Uk'uxkaj Cap",neck="Nefarious Collar",
		left_ear="Suppanomimi",right_ear="Brutal Earring",body="Thaumas Coat",hands="Iuitl Wristbands",
		ring1="Rajas Ring",right_ring="Epona's Ring",back="Atheling Mantle",waist="Patentia Sash",
		legs="Manibozho Brais",feet="Manibozho Boots"}
		
	sets.TP['TH'] = {range="Raider's Bmrng.",head="Ejekamal Mask",neck="Asperity Necklace",
		left_ear="Suppanomimi",right_ear="Brutal Earring",body="Thaumas Coat",hands="Assassin's Armlets +2",
		ring1="Rajas Ring",right_ring="Epona's Ring",back="Atheling Mantle",waist="Patentia Sash",
		legs="Manibozho Brais",feet="Raider's Poulaines +2"}
		
	sets.TP['Delay Cap'] = {ammo="Potestas Bomblet",head="Iuitl Headgear",neck="Asperity Necklace",
		left_ear="Steelflash Earring",right_ear="Bladeborn Earring",body="Thaumas Coat",hands="Iuitl Wristbands",
		ring1="Rajas Ring",right_ring="Epona's Ring",back="Rancorous Mantle",waist="Windbuffet Belt",
		legs="Manibozho Brais",feet="Manibozho Boots"}
		
	sets.TP.Evasion = {ranged="Aliyat Chakram",head="Uk'uxkaj Cap",neck="Torero Torque",
		left_ear="Novia Earring",right_ear="Phawaylla Earring",body="Manibozho Jerkin",hands="Iuitl Wristbands",
		ring1="Beeline Ring",right_ring="Epona's Ring",back="Boxer's Mantle",waist="Scouter's Rope",
		legs="Manibozho Brais",feet="Manibozho Boots"}
	
	Idle_Set_Names = {'Normal','MDT'}
	sets.Idle = {}
	sets.Idle.Normal = {head="Oce. Headpiece +1",neck="Wiglen Gorget",left_ear="Merman's Earring",right_ear="Bladeborn Earring",
		body="Kheper Jacket",hands="Iuitl Wristbands",ring1="Paguroidea Ring",right_ring="Sheltered Ring",
		back="Atheling Mantle",waist="Scouter's Rope",legs="Iuitl Tights",feet="Skadi's Jambeaux +1"}
				
	sets.Idle.MDT = {head="Uk'uxkaj Cap",neck="Twilight Torque",left_ear="Merman's Earring",right_ear="Bladeborn Earring",
		body="Avalon Breastplate",hands="Iuitl Wristbands",ring1="Defending Ring",right_ring="Dark Ring",
		back="Mollusca Mantle",waist="Wanion Belt",legs="Nahtirah Trousers",feet="Skadi's Jambeaux +1"}
	send_command('input /macro book 12;wait .1;input /macro set 1')
	
end

function precast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif spell.type=="WeaponSkill" then
		if sets.WS[spell.english] then equip(sets.WS[spell.english]) end
		if buffactive['sneak attack'] and buffactive['trick attack'] and sets.WS.SATA[spell.english] then equip(sets.WS.SATA[spell.english])
		elseif buffactive['sneak attack'] and sets.WS.SA[spell.english] then equip(sets.WS.SA[spell.english])
		elseif buffactive['trick attack'] and sets.WS.TA[spell.english] then equip(sets.WS.TA[spell.english]) end
	elseif string.find(spell.english,'Waltz') then
		equip(sets.JA.Waltz)
	end
end

function aftercast(spell)
	if player.status=='Engaged' then
		equip(sets.TP[TP_Set_Names[TP_Index]])
		
		--[[
		
	else
		equip(sets.Idle[Idle_Set_Names[Idle_Index]])
		
		--[[
		
	end
end

function status_change(new,old)
	if T{'Idle','Resting'}:contains(new) then
		equip(sets.Idle[Idle_Set_Names[Idle_Index]])
		
		--[[
		
	elseif new == 'Engaged' then
		equip(sets.TP[TP_Set_Names[TP_Index]])
		
		--[[
		
	end
end

function buff_change(buff,gain_or_loss)
	if buff=="Sneak Attack" then
		soloSA = gain_or_loss
	elseif buff=="Trick Attack" then
		soloTA = gain_or_loss
	end
end

function self_command(command)
	if command == 'toggle TP set' then
		TP_Index = TP_Index +1
		if TP_Index > #TP_Set_Names then TP_Index = 1 end
		send_command('@input /echo ----- TP Set changed to '..TP_Set_Names[TP_Index]..' -----')
		equip(sets.TP[TP_Set_Names[TP_Index]])
		
		--[[
		
	elseif command == 'toggle Idle set' then
		Idle_Index = Idle_Index +1
		if Idle_Index > #Idle_Set_Names then Idle_Index = 1 end
		send_command('@input /echo ----- Idle Set changed to '..Idle_Set_Names[Idle_Index]..' -----')
		equip(sets.Idle[Idle_Set_Names[Idle_Index]])
		
		--[[
		
	end
end
]]
