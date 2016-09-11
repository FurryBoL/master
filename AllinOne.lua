--[[

Features:

Custom Path Draws (Clicks)
Awareness (tells you who how far enemies are away with dynamic draws.)

by: me
]]--

_AUTO_UPDATE = true

_FILE_PATH = SCRIPT_PATH .. GetCurrentEnv().FILE_NAME
_SCRIPT_VERSION = 0.03
_SCRIPT_VERSION_MENU = "0.03"

local Updated = false

function OnLoad()
	settings = scriptConfig("All in One", "savesettings_allin1_test0002")
		settings:addSubMenu("Awareness Settings", "aws")
			settings.aws:addSubMenu("Blacklist ->", "blacklist")
			settings.aws:addParam("Toggle", "Toggle ON/OFF", SCRIPT_PARAM_ONOFF, true)
			settings.aws:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.aws:addParam("drawname", "Draw Name", SCRIPT_PARAM_ONOFF, true)
			settings.aws:addParam("drawdistance", "Draw Distance To Enemy", SCRIPT_PARAM_ONOFF, true)
			settings.aws:addParam("maxrange", "Max Range", SCRIPT_PARAM_SLICE, 5000, 0, 20000, 0)
			settings.aws:addParam("Distance", "Line Distance", SCRIPT_PARAM_SLICE, 200, 20, 500, 0)
			settings.aws:addParam("Thick", "Line Width", SCRIPT_PARAM_SLICE, 2, 1, 5, 0)
			settings.aws:addParam("TSize", "Text Size", SCRIPT_PARAM_SLICE, 20, 1, 40, 0)
			for _, Enemy in pairs(GetEnemyHeroes()) do
				settings.aws.blacklist:addParam(""..Enemy.charName, Enemy.charName, SCRIPT_PARAM_ONOFF, false)
			end
		settings:addSubMenu("Player Click Settings", "pcs")
			settings.pcs:addParam("MyClicks", "Draw " .. myHero.charName .. " Pathing", SCRIPT_PARAM_ONOFF, true)
			settings.pcs:addParam("AllyClicks", "Draw Ally Pathing", SCRIPT_PARAM_ONOFF, true)
			settings.pcs:addParam("EnemyClicks", "Draw Enemy Pathing", SCRIPT_PARAM_ONOFF, true)
			settings.pcs:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.pcs:addParam("info1", "Width:", SCRIPT_PARAM_INFO, "")
			settings.pcs:addParam("MyThick", "" .. myHero.charName .. " Width", SCRIPT_PARAM_SLICE, 2, 1, 5, 0)
			settings.pcs:addParam("AllyThick", "Ally Width", SCRIPT_PARAM_SLICE, 2, 1, 5, 0)
			settings.pcs:addParam("EnemyThick", "Enemy Width", SCRIPT_PARAM_SLICE, 2, 1, 5, 0)
			settings.pcs:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.pcs:addParam("info2", "Colour:", SCRIPT_PARAM_INFO, "")
				settings.pcs:addParam("MyColor", "" .. myHero.charName .. " Colour", SCRIPT_PARAM_COLOR, {
					255,
					0,
					255,
					255
				})
				settings.pcs:addParam("AllyColor", "Ally Colour", SCRIPT_PARAM_COLOR, {
					255,
					0,
					255,
					0
				})
				settings.pcs:addParam("EnemyColor", "Enemy Colour", SCRIPT_PARAM_COLOR, {
					255,
					255,
					0,
					0
				})
			settings.pcs:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.pcs:addParam("over1", "Override full colour past wall", SCRIPT_PARAM_ONOFF, false)
			settings.pcs:addParam("outlines", "Outline", SCRIPT_PARAM_ONOFF, true)
			settings.pcs:addParam("names", "Names on End Location", SCRIPT_PARAM_ONOFF, true)
			settings.pcs:addParam("mode", "End Location Type:", SCRIPT_PARAM_LIST, 4, {
				[1] = "None",
				[2] = "Basic Circle",
				[3] = "Advanced Circle",
				[4] = "Cross",
			})
			settings.pcs:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.pcs:addParam("snap", "Snap for Advanced Circle Only", SCRIPT_PARAM_SLICE, 30, 10, 50, 0)
		settings:addParam("theversion", "Version: ", SCRIPT_PARAM_INFO, tostring(_SCRIPT_VERSION_MENU))
		if _AUTO_UPDATE then
			GetAsyncWebResult("raw.github.com", "/FurryBoL/master/master/AllinOne.version", function(result)
				local latest = tonumber(result)
				if latest > _SCRIPT_VERSION then
					PrintSpecialText("A update has been found and it is now downloading!")
					DelayAction(DownloadFile, 0, {
						"https://raw.githubusercontent.com/FurryBoL/master/master/AllinOne.lua",
						_FILE_PATH,
						function()
							PrintSpecialText("Script has been updated, please reload! (2xF9)")
							Updated = true
						end
					})
				end
			end)
		end
	LoadedMessage()
end

function OnDraw()
	if Updated then
		DrawText3D("> > Script Successfully Updated, please reload by pressing F9 twice!!", myHero.x - 50, myHero.y, myHero.z + 50, 30, ARGB(255, 0, 255, 0), true)
	end
	if settings.aws.Toggle and not myHero.dead then
		for _, Enemy in pairs(GetEnemyHeroes()) do
			if GetDistance(myHero, Enemy) < settings.aws.maxrange and Enemy and Enemy.valid and Enemy.visible and not Enemy.dead and not settings.aws.blacklist[""..Enemy.charName] then
				GreenAlpha = GetDistance(myHero, Enemy) / 10
				if GetDistance(myHero, Enemy) / 10 < 255 then
					RedAlpha = 255 - GreenAlpha
				else
					RedAlpha = 0
				end
				if RedAlpha > 255 then
					RedAlpha = 255
				end
				if GreenAlpha > 255 then
					GreenAlpha = 255
				end
				DrawUltimateAwareness(myHero.x, myHero.y, myHero.z, Enemy.x, Enemy.y, Enemy.z, settings.aws.Thick, ARGB(255, RedAlpha, GreenAlpha, 0), Enemy)
			end
		end
	end
	if settings.pcs.MyClicks and not myHero.dead then
		if myHero.hasMovePath and myHero.pathCount >= 2 then
			local IndexPath = myHero:GetPath(myHero.pathIndex)
			if IndexPath then
				if GetDistance(myHero, myHero.endPath) > 30 then
					if myHero.endPath then
						if settings.pcs.names then
							DrawText3D(""..myHero.charName.."", myHero.endPath.x, myHero.endPath.y, myHero.endPath.z - 42, 15, ARGB(table.unpack(settings.pcs.MyColor)), true)
						end
						DrawEndPos(myHero, settings.pcs.MyThick, ARGB(table.unpack(settings.pcs.MyColor)))
					end
				end
				if settings.pcs.outlines then
					DrawLine3D(myHero.x, myHero.y, myHero.z, IndexPath.x, IndexPath.y, IndexPath.z, settings.pcs.MyThick + 2, ARGB(255, 0, 0, 0))
				end
				DrawLine3D(myHero.x, myHero.y, myHero.z, IndexPath.x, IndexPath.y, IndexPath.z, settings.MyThick, ARGB(table.unpack(settings.pcs.MyColor)))
			end
			for i=myHero.pathIndex, myHero.pathCount-1 do
				local Path = myHero:GetPath(i)
				local Path2 = myHero:GetPath(i + 1)
				if settings.pcs.outlines then
					DrawLine3D(Path.x, Path.y, Path.z, Path2.x, Path2.y, Path2.z, settings.pcs.MyThick + 2, ARGB(255, 0, 0, 0))
				end
				if not settings.pcs.over1 then
					DrawLine3D(Path.x, Path.y, Path.z, Path2.x, Path2.y, Path2.z, settings.pcs.MyThick, ARGB(255, 255, 0, 0))
				else
					DrawLine3D(Path.x, Path.y, Path.z, Path2.x, Path2.y, Path2.z, settings.pcs.MyThick, ARGB(table.unpack(settings.pcs.MyColor)))
				end
			end
		end
	end
	if settings.pcs.AllyClicks then
		DrawOtherPathing(GetAllyHeroes(), settings.pcs.AllyThick, ARGB(table.unpack(settings.pcs.AllyColor)))
	end
	if settings.pcs.EnemyClicks then
		DrawOtherPathing(GetEnemyHeroes(), settings.pcs.EnemyThick, ARGB(table.unpack(settings.pcs.EnemyColor)))
	end
end

function DrawUltimateAwareness(startx, starty, startz, endx, endy, endz, thickness, color, entity)
	startLinePos = {
		x = startx,
		y = starty,
		z = startz
	}
	endLinePos = {
		x = endx,
		y = endy,
		z = endz
	}
	VectorLineStructure = startLinePos + (Vector(endLinePos) - startLinePos):normalized() * settings.aws.Distance
	if GetDistance(startLinePos, endLinePos) < settings.aws.Distance then
		VectorLineStructure = endLinePos
	end
	LeftPosVec = VectorLineStructure + (Vector(startLinePos) - VectorLineStructure):rotated(0, 45 * math.pi / 180, 0):normalized() * 40
	RightPosVec = VectorLineStructure + (Vector(startLinePos) - VectorLineStructure):rotated(0, 315 * math.pi / 180, 0):normalized() * 40
	DrawLine3D(startLinePos.x, startLinePos.y, startLinePos.z, VectorLineStructure.x, VectorLineStructure.y, VectorLineStructure.z, thickness + 2, ARGB(255, 0, 0, 0))
	DrawLine3D(VectorLineStructure.x, VectorLineStructure.y, VectorLineStructure.z, LeftPosVec.x, LeftPosVec.y, LeftPosVec.z, thickness + 2, ARGB(255, 0, 0, 0))
	DrawLine3D(VectorLineStructure.x, VectorLineStructure.y, VectorLineStructure.z, RightPosVec.x, RightPosVec.y, RightPosVec.z, thickness + 2, ARGB(255, 0, 0, 0))
	DrawLine3D(startLinePos.x, startLinePos.y, startLinePos.z, VectorLineStructure.x, VectorLineStructure.y, VectorLineStructure.z, thickness, color)
	DrawLine3D(VectorLineStructure.x, VectorLineStructure.y, VectorLineStructure.z, LeftPosVec.x, LeftPosVec.y, LeftPosVec.z, thickness, color)
	DrawLine3D(VectorLineStructure.x, VectorLineStructure.y, VectorLineStructure.z, RightPosVec.x, RightPosVec.y, RightPosVec.z, thickness, color)
	if settings.aws.drawname then
		DrawText3D(""..entity.charName.."", VectorLineStructure.x, VectorLineStructure.y, VectorLineStructure.z - 42, settings.aws.TSize, color)
	end
	if settings.aws.drawdistance then
		DrawText3D("               -    [".. math.ceil(GetDistance(myHero, entity)).."]", VectorLineStructure.x, VectorLineStructure.y, VectorLineStructure.z - 42, settings.aws.TSize, ARGB(255, 0, 255, 255))
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
						if settings.pcs.names then
							DrawText3D(""..hero.charName.."", hero.endPath.x, hero.endPath.y, hero.endPath.z - 42, 15, Color, true)
						end
						DrawEndPos(hero, Thickness, Color)
					end
				end
				if settings.pcs.outlines then
					DrawLine3D(hero.x, hero.y, hero.z, IndexPath.x, IndexPath.y, IndexPath.z, Thickness + 2, ARGB(255, 0, 0, 0))
				end
				DrawLine3D(hero.x, hero.y, hero.z, IndexPath.x, IndexPath.y, IndexPath.z, Thickness, Color)
			end
			for i = hero.pathIndex, hero.pathCount - 1 do
				local Path = hero:GetPath(i)
				local Path2 = hero:GetPath(i + 1)
				if settings.pcs.outlines then
					DrawLine3D(Path.x, Path.y, Path.z, Path2.x, Path2.y, Path2.z, Thickness + 2, ARGB(255, 0, 0, 0))
				end
				if not settings.pcs.over1 then
					DrawLine3D(Path.x, Path.y, Path.z, Path2.x, Path2.y, Path2.z, Thickness, ARGB(255, 255, 255, 255))
				else
					DrawLine3D(Path.x, Path.y, Path.z, Path2.x, Path2.y, Path2.z, Thickness, Color)
				end
			end
		end
	end
end

jjs = "r"
ddw = "N"
jed = "b"
dsj = "F"
isj = "X"
uks = "k"
jdj = "u"
odj = "o"
sjj = "y"

function DrawEndPos(unit, Thickness, Color)
	if settings.pcs.mode == 1 then
		return
	end
	if settings.pcs.mode == 2 then
		DrawCircle(unit.endPath.x, unit.endPath.y, unit.endPath.z, 50, Color)
	end
	if settings.pcs.mode == 3 then
		if settings.pcs.outlines then 
			DrawCircle2(unit.endPath.x, unit.endPath.y, unit.endPath.z, 3, 50, ARGB(255, 0, 0, 0))
		end
		DrawCircle2(unit.endPath.x, unit.endPath.y, unit.endPath.z, Thickness, 50, Color)
	end
	if settings.pcs.mode == 4 then
		local LocationEnd = unit.endPath
		local Top = LocationEnd.x + 35
		local Bottom = LocationEnd.x - 35
		local Left = LocationEnd.z - 35
		local Right = LocationEnd.z + 35
		if settings.pcs.outlines then 
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
		DrawCircleNextLvl(x, y, z, radius, width, color, settings.pcs.snap)
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

function LoadedMessage()
	PrintSpecialText("Loaded! by: .."..dsj..""..jdj..""..jjs..""..jjs..""..sjj.." | Version: " .. _SCRIPT_VERSION_MENU)
end

function PrintSpecialText(message)
	print("<font color='#FF00FF'>[All in One Helper]</font> <font color='#00FF00'>-</font><font color='#FFFFFF'> <b>" .. message .. "</b></font>")
end
