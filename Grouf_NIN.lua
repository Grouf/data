--[[
		=================
		|   N I N J A   | 
		=================
]]

function get_sets()
	NinjutsuNuke = T{
		'Katon: Ichi','Suiton: Ichi','Doton: Ichi','Hyoton: Ichi','Huton: Ichi','Raiton: Ichi',
		'Katon: Ni','Suiton: Ni','Doton: Ni','Hyoton: Ni','Huton: Ni','Raiton: Ni',
		'Katon: San','Suiton: San','Doton: San','Hyoton: San','Huton: San','Raiton: San'
		}
		
	NinjutsuEnfeeble = T{
		'Hojo: Ichi','Kurayami: Ichi','Dokumori: Ichi','Jubaku: Ichi','Yurin: Ichi',
		'Hojo: Ni','Kurayami: Ni','Dokumori: Ni','Jubaku: Ni','Yurin: Ni'
		}
		
	sets.precast = {}
	
	sets.precast.Innin = {head="Iga Zukin +2"}
	sets.precast.Yonin = {legs="Iga Hakama +2"}
	sets.precast.Futae = {hands="Iga Tekko +2"}

	sets.precast.Ranged= {head="Uk'uxkaj Cap",neck="Huani Collar",left_ear="Clearview earring",
		right_ear="Bladeborn Earring",body="Iuitl Vest",hands="Hachiya Tekko",left_ring="Paqichikaji Ring",
		right_ring="Jalzahn's Ring",back="Yokaze Mantle",waist="Buccaneer's Belt",
		legs="Thur. Tights +1",feet="Pillager's Poulaines"}
	
	sets.precast.WS= {head="Uk'uxkaj Cap",neck="Tlamiztli Collar",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Manibozho Jerkin",hands="Otronif Gloves",left_ring="Spiral Ring",
		right_ring="Rajas Ring",back="Vassal's Mantle",waist="Prosilio Belt",
		legs="Manibozho Brais",feet="Otronif Boots"}
	
	sets.precast["Blade Hi"] = set_combine(sets.precast.WS,{neck="Shadow Gorget",left_ring="Solemn Ring",
		hands="Iga Tekko +2"}) --AGI
	
	sets.precast["Blade Shun"] = sets.precast.WS --DEX
	
	sets.precast["Blade Kamu"] = sets.precast.WS --STR50 INT50
	
	sets.precast["Blade Jin"] = sets.precast.WS --STR30 DEX30
	
	sets.precast["Blade Yu"] = set_combine(sets.precast.WS,{left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",back="Toro Cape"}) --DEX50 INT50
	
	sets.precast.Utsusemi= {head="Athos's Chapeau",neck="Magoraga Beads",left_ear="Phawaylla Earring",
		right_ear="Loquac. Earring",body="Otronif Harness",hands="Mochizuki Tekko",left_ring="Prolix Ring",
		right_ring="",back="Yokaze Mantle",waist="Phasmida Belt",
		legs="Kaabnax Trousers",feet="Iga Kyahan +2"} --30% Haste
	
	sets.precast["Migawari: Ichi"] = set_combine(sets.precast.Utsusemi,{body="Iga Ningi +2"})
	
	sets.precast.Enfeeble= {head="Hachiya Hatsuburi",neck="Stoicheion Medal",left_ear="Lifestorm Earring",
		right_ear="Psystorm Earring",body="Otronif Harness",hands="Mochizuki Tekko",left_ring="Prolix Ring",
		right_ring="Omega Ring",back="Yokaze Mantle",waist="Phasmida Belt",
		legs="Kaabnax Trousers",feet="Hachiya Kyahan"}  --32% Haste, 224 Magic Accuracy
	
	sets.precast.Nuke= {head="Koga Hatsuburi",neck="Stoicheion Medal",left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",body="Otronif Harness",hands="Mochizuki Kekko",left_ring="Prolix Ring",
		right_ring="Icesoul Ring",back="Toro Cape",
		legs="Quiahuiz Trousers",feet="Hachiya Kayahan"}
	
	sets.precast.Step = {head="Ejekamal Mask",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Heartseeker Earring",body="Manibozho Jerkin",hands="Buremte Gloves",left_ring="Rajas Ring",
		right_ring="Epona's Ring",back="Yokaze Mantle",waist="Phasmida Belt",
		legs="Hachiya Hakama",feet="Otronif Boots"} --Primary Acc: 907
	
		
	sets.TP = {}
	sets.TP.DD = {head="Uk'Uxkaj Cap",neck="Asperity Necklace",left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",body="Thaumas Coat",hands="Otronif Gloves",left_ring="Epona's Ring",
		right_ring="Rajas Ring",back="Yokaze Mantle",waist="Windbuffet Belt",
		legs="Quiahuiz Trousers",feet="Otronif Boots"}
		
	sets.TP.EVA = set_combine(sets.TP.DD,{neck="Torero Torque",left_ear="Ethereal Earring",
		right_ear="Musical Earring",body="Otronif Harness",
		right_ring="Defending Ring",waist="Koga sarashi",
		legs="Otronif Brais"})  --Needs Verify
	
	sets.TP.DT= {head="Uk'uxkaj Cap",neck="Twilight Torque",left_ear="Dudgeon Earring",
		right_ear="Heartseeker earring",body="Otronif Harness",hands="Otronif Gloves",left_ring="Dark Ring",
		right_ring="Dark Ring",back="Ik Cape",waist="Flume Belt",
		legs="Kaabnax Trousers",feet="Otronif Boots"}

	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	sets.aftercast.Idle = set_combine(sets.aftercast.TP,{feet="Danzo Sune-Ate"})
	send_command('input /macro book 13;wait .1;input /macro set 1')
	
end

function precast(spell)
	--windower.add_to_chat(204, 'Casting: ' ..spell.english.. ' ' ..spell.type)
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
		--windower.add_to_chat(204, 'Spell name as set: ' ..spell.english)
	elseif spell.type == "Ninjutsu" then
		--windower.add_to_chat(204, 'Ninjitsu Detected: ' ..spell.english.. ' ' ..spell.type)
		if NinjutsuNuke:contains(spell.english) then
			equip(sets.precast.Nuke)
			--windower.add_to_chat(204, 'Nuke Detected')
		elseif NinjutsuEnfeeble:contains(spell.english) then
			equip(sets.precast.Enfeeble)
			--windower.add_to_chat(204, 'Enfeeble Detected')
		else
			equip(sets.precast.Utsusemi)
			--windower.add_to_chat(204, 'Other Detected, Utsusemi Set: ' ..spell.english)
		end
		
	elseif spell.type=="WeaponSkill" then
		equip(sets.precast.WS)
	elseif string.find(spell.english,'Step') or 
		string.find(spell.english,'Violent Flourish') then
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

function buff_change(buff_name,gain) --gain = True if gained, False if lost
	if gain then -- something was gained
		if buff_name=='Migawari' then --Need to verify Name
			equip({body="Iga Ningi +2"}) -- Need to verify this works
			send_command('@wait 0.5; gs disable body;')
			windower.add_to_chat(14, 'Migawari status detected, Empy body on, Body disabled')
		end
		
	elseif not gain then -- something lost
		if buff_name=='Migawari' then --Need to verify Name
			send_command('@wait 0.5; gs enable body;')
			windower.add_to_chat(14, 'Migawari status lost, Body enabled')
		end
	
	end
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

--[[Spellcast rules

<rules>
	
	<if status="idle"> 
		<equip when="idle|aftercast" set="Idle" /> 
	</if> 
	<elseif status="engaged"> 
		<equip when="engaged|aftercast" set="TP" />
	</elseif>
	<!--<elseif status="resting">
		<equip when="resting|aftercast" set="Rest" />
	</elseif>-->
	
	<if BuffActive="Migawari">
		<equip when="idle|engaged|resting|precast|midcast|aftercast">
			<body lock="t">Iga Ningi +2</body>
		</equip>
	</if>
			
	<if BuffActive="Futae">
		<equip when="idle|engaged|resting|precast|midcast|aftercast">
			<hands lock="t">Iga Tekko +2</hands>
		</equip>
	</if>

	<!--Magic-->
	<if Skill="Ninjutsu">
		<if spell="Utsusemi*">
			<equip when="precast" set="Utsusemi" />
		</if>
		<elseif spell="Migawari*">
			<equip when="precast" set="NINJUTSU" />
			<equip when="precast|midcast|aftercast">
				<body>Iga Ningi +2</body>
			</equip>
		</elseif>
		<elseif spell="Katon*|Hyoton*|Huton*|Doton*|Raiton*|Suiton*">
			<equip when="precast" set="Nuke" />
		</elseif>
		<elseif spell="Aisha*|Jubaku*|Hojo*|Kurayami*|Dokumori*|Yurin*">
			<equip when="precast" set="Enfeeble" />
		</elseif>
		<else>
			<equip when="precast" set="Utsusemi" />
		</else>
	</if>
			


]]