--[[

custom path location draws (player clicks)

by:Furry :ninja:

]]--

function OnLoad()
	settings = scriptConfig("Player Clicks", "savesettings_playerclicks")
		settings:addParam("MyClicks", "Draw " .. myHero.charName .. " Pathing", SCRIPT_PARAM_ONOFF, true)
		settings:addParam("AllyClicks", "Draw Ally Pathing", SCRIPT_PARAM_ONOFF, true)
		settings:addParam("EnemyClicks", "Draw Enemy Pathing", SCRIPT_PARAM_ONOFF, true)
		settings:addParam("space", "", SCRIPT_PARAM_INFO, "")
		settings:addParam("info1", "Thickness:", SCRIPT_PARAM_INFO, "")
		settings:addParam("MyThick", "" .. myHero.charName .. " Thickness", SCRIPT_PARAM_SLICE, 2, 1, 5, 0)
		settings:addParam("AllyThick", "Ally Thickness", SCRIPT_PARAM_SLICE, 2, 1, 5, 0)
		settings:addParam("EnemyThick", "Enemy Thickness", SCRIPT_PARAM_SLICE, 2, 1, 5, 0)
		settings:addParam("space", "", SCRIPT_PARAM_INFO, "")
		settings:addParam("info2", "Colour:", SCRIPT_PARAM_INFO, "")
			settings:addParam("MyColor", "" .. myHero.charName .. " Colour", SCRIPT_PARAM_COLOR, {
				255,
				0,
				255,
				255
			})
			settings:addParam("AllyColor", "Ally Colour", SCRIPT_PARAM_COLOR, {
				255,
				0,
				255,
				0
			})
			settings:addParam("EnemyColor", "Enemy Colour", SCRIPT_PARAM_COLOR, {
				255,
				255,
				0,
				0
			})
		settings:addParam("space", "", SCRIPT_PARAM_INFO, "")
		settings:addParam("over1", "Override full colour past wall", SCRIPT_PARAM_ONOFF, false)
		settings:addParam("outlines", "Outline", SCRIPT_PARAM_ONOFF, true)
		settings:addParam("names", "Names on End Location", SCRIPT_PARAM_ONOFF, true)
		settings:addParam("mode", "End Location Type:", SCRIPT_PARAM_LIST, 4, {
			[1] = "None",
			[2] = "Basic Circle",
			[3] = "Advanced Circle",
			[4] = "Cross",
		})
		settings:addParam("space", "", SCRIPT_PARAM_INFO, "")
		settings:addParam("snap", "Snap for Advanced Circle Only", SCRIPT_PARAM_SLICE, 30, 10, 50, 0)
	PrintSpecialText("Loaded!  By: Furry")
end

function OnDraw()
	if settings.MyClicks then
		if myHero.hasMovePath and myHero.pathCount >= 2 then
			local IndexPath = myHero:GetPath(myHero.pathIndex)
			if IndexPath then
				if GetDistance(myHero, myHero.endPath) > 30 then
					if myHero.endPath then
						if settings.names then
							DrawText3D(""..myHero.charName.."", myHero.endPath.x, myHero.endPath.y, myHero.endPath.z - 42, 15, ARGB(table.unpack(settings.MyColor)), true)
						end
						DrawEndPos(myHero, settings.MyThick, ARGB(table.unpack(settings.MyColor)))
					end
				end
				if settings.outlines then
					DrawLine3D(myHero.x, myHero.y, myHero.z, IndexPath.x, IndexPath.y, IndexPath.z, settings.MyThick + 2, ARGB(255, 0, 0, 0))
				end
				DrawLine3D(myHero.x, myHero.y, myHero.z, IndexPath.x, IndexPath.y, IndexPath.z, settings.MyThick, ARGB(table.unpack(settings.MyColor)))
			end
			for i=myHero.pathIndex, myHero.pathCount-1 do
				local Path = myHero:GetPath(i)
				local Path2 = myHero:GetPath(i+1)
				if settings.outlines then
					DrawLine3D(Path.x, Path.y, Path.z, Path2.x, Path2.y, Path2.z, settings.MyThick + 2, ARGB(255, 0, 0, 0))
				end
				if not settings.over1 then
					DrawLine3D(Path.x, Path.y, Path.z, Path2.x, Path2.y, Path2.z, settings.MyThick, ARGB(255, 255, 0, 0))
				else
					DrawLine3D(Path.x, Path.y, Path.z, Path2.x, Path2.y, Path2.z, settings.MyThick, ARGB(table.unpack(settings.MyColor)))
				end
			end
		end
	end
	if settings.AllyClicks then
		DrawOtherPathing(GetAllyHeroes(), settings.AllyThick, ARGB(table.unpack(settings.AllyColor)))
	end
	if settings.EnemyClicks then
		DrawOtherPathing(GetEnemyHeroes(), settings.EnemyThick, ARGB(table.unpack(settings.EnemyColor)))
	end
end

function DrawOtherPathing(HeroType, Thickness, Color)
	for i, hero in ipairs(HeroType) do
		if hero == nil then
			return
		end
		if hero.hasMovePath and hero.pathCount >= 2 then
			local IndexPath = hero:GetPath(hero.pathIndex)
			if IndexPath then
				if GetDistance(hero, hero.endPath) > 30 then
					if hero.endPath then
						if settings.names then
							DrawText3D(""..hero.charName.."", hero.endPath.x, hero.endPath.y, hero.endPath.z - 42, 15, Color, true)
						end
						DrawEndPos(hero, Thickness, Color)
					end
				end
				if settings.outlines then
					DrawLine3D(hero.x, hero.y, hero.z, IndexPath.x, IndexPath.y, IndexPath.z, Thickness + 2, ARGB(255, 0, 0, 0))
				end
				DrawLine3D(hero.x, hero.y, hero.z, IndexPath.x, IndexPath.y, IndexPath.z, Thickness, Color)
			end
			for i = hero.pathIndex, hero.pathCount - 1 do
				local Path = hero:GetPath(i)
				local Path2 = hero:GetPath(i + 1)
				if settings.outlines then
					DrawLine3D(Path.x, Path.y, Path.z, Path2.x, Path2.y, Path2.z, Thickness + 2, ARGB(255, 0, 0, 0))
				end
				if not settings.over1 then
					DrawLine3D(Path.x, Path.y, Path.z, Path2.x, Path2.y, Path2.z, Thickness, ARGB(255, 255, 255, 255))
				else
					DrawLine3D(Path.x, Path.y, Path.z, Path2.x, Path2.y, Path2.z, Thickness, Color)
				end
			end
		end
	end
end

function DrawEndPos(unit, Thickness, Color)
	if settings.mode == 1 then
		return
	end
	if settings.mode == 2 then
		DrawCircle(unit.endPath.x, unit.endPath.y, unit.endPath.z, 50, Color)
	end
	if settings.mode == 3 then
		if settings.outlines then 
			DrawCircle2(unit.endPath.x, unit.endPath.y, unit.endPath.z, 3, 50, ARGB(255, 0, 0, 0))
		end
		DrawCircle2(unit.endPath.x, unit.endPath.y, unit.endPath.z, Thickness, 50, Color)
	end
	if settings.mode == 4 then
		local LocationEnd = unit.endPath
		local Top = LocationEnd.x + 35
		local Bottom = LocationEnd.x - 35
		local Left = LocationEnd.z - 35
		local Right = LocationEnd.z + 35
		if settings.outlines then 
			DrawLine3D(Top + 1, LocationEnd.y, Left - 1, Bottom - 1, LocationEnd.y, Right + 1, Thickness + 2, ARGB(255, 0, 0, 0))
			DrawLine3D(Top + 1, LocationEnd.y, Right + 1, Bottom - 1, LocationEnd.y, Left - 1, Thickness + 2, ARGB(255, 0, 0, 0))
		end
		DrawLine3D(Top, LocationEnd.y, Left, Bottom, LocationEnd.y, Right, Thickness, Color)
		DrawLine3D(Top, LocationEnd.y, Right, Bottom, LocationEnd.y, Left, Thickness, Color)
	end
end

function DrawCircle2(x, y, z, width, radius, color)
	local vPos1 = Vector(x, y, z)
	local vPos2 = Vector(cameraPos.x, cameraPos.y, cameraPos.z)
	local tPos = vPos1 - (vPos1 - vPos2):normalized() * radius
	local sPos = WorldToScreen(D3DXVECTOR3(tPos.x, tPos.y, tPos.z))
	if OnScreen({x = sPos.x, y = sPos.y}, {x = sPos.x, y = sPos.y}) then
		DrawCircleNextLvl(x, y, z, radius, width, color, settings.snap)
	end
end

function DrawCircleNextLvl(x, y, z, radius, width, color, chordlength)
	radius = radius or 300
	quality = math.max(8, Round(180 / math.deg((math.asin(chordlength / (2 * radius))))))
	quality = 2 * math.pi / quality
	radius = radius * 0.92
	local points = {}
	for theta = 0, 2 * math.pi + quality, quality do
		local c = WorldToScreen(D3DXVECTOR3(x + radius * math.cos(theta), y, z - radius * math.sin(theta)))
		points[#points + 1] = D3DXVECTOR2(c.x, c.y)
	end
	DrawLines2(points, width or 1, color or 4294967295)
end

function Round(number)
	if number >= 0 then
		return math.floor(number + 0.5)
	else
		return math.ceil(number - 0.5)
	end
end

function PrintSpecialText(message)
	print("<font color='#FF00FF'>[Draw Path]</font> <font color='#00FF00'>-</font><font color='#FFFFFF'> <u><b>" .. message .. "</b></u></font>")
end
