--		▓█████▄  ▄▄▄       ██▀███   ██▓ █    ██   ██████        ██▀███  ▓█████  ▄▄▄▄    ▒█████   ██▀███   ███▄    █ 
--		▒██▀ ██▌▒████▄    ▓██ ▒ ██▒▓██▒ ██  ▓██▒▒██    ▒       ▓██ ▒ ██▒▓█   ▀ ▓█████▄ ▒██▒  ██▒▓██ ▒ ██▒ ██ ▀█   █ 
--		░██   █▌▒██  ▀█▄  ▓██ ░▄█ ▒▒██▒▓██  ▒██░░ ▓██▄         ▓██ ░▄█ ▒▒███   ▒██▒ ▄██▒██░  ██▒▓██ ░▄█ ▒▓██  ▀█ ██▒
--		░▓█▄   ▌░██▄▄▄▄██ ▒██▀▀█▄  ░██░▓▓█  ░██░  ▒   ██▒      ▒██▀▀█▄  ▒▓█  ▄ ▒██░█▀  ▒██   ██░▒██▀▀█▄  ▓██▒  ▐▌██▒
--		░▒████▓  ▓█   ▓██▒░██▓ ▒██▒░██░▒▒█████▓ ▒██████▒▒      ░██▓ ▒██▒░▒████▒░▓█  ▀█▓░ ████▓▒░░██▓ ▒██▒▒██░   ▓██░
--		 ▒▒▓  ▒  ▒▒   ▓▒█░░ ▒▓ ░▒▓░░▓  ░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░      ░ ▒▓ ░▒▓░░░ ▒░ ░░▒▓███▀▒░ ▒░▒░▒░ ░ ▒▓ ░▒▓░░ ▒░   ▒ ▒ 
--		 ░ ▒  ▒   ▒   ▒▒ ░  ░▒ ░ ▒░ ▒ ░░░▒░ ░ ░ ░ ░▒  ░ ░        ░▒ ░ ▒░ ░ ░  ░▒░▒   ░   ░ ▒ ▒░   ░▒ ░ ▒░░ ░░   ░ ▒░
--		 ░ ░  ░   ░   ▒     ░░   ░  ▒ ░ ░░░ ░ ░ ░  ░  ░          ░░   ░    ░    ░    ░ ░ ░ ░ ▒    ░░   ░    ░   ░ ░ 
--		   ░          ░  ░   ░      ░     ░           ░           ░        ░  ░ ░          ░ ░     ░              ░ 
--		 ░                                                                           ░ 

-- by Furry
-- Version 1.2

_AUTO_UPDATE = true -- Set this to false to prevent automatic updates

--			[ ChangeLog ]
--  Check forum:
--  forum.botoflegends.com/topic/86477-vipfreesxorbsacr-darius-reborn-patch-523/
--			[ ChangeLog ]

if myHero.charName ~= 'Darius' then return end

local FakeLoad = false
if VIP_USER then
	if FileExist(LIB_PATH .. "Furry_Packets_Lib.lua") then
		require("Furry_Packets_Lib")
		SkinChanger()
	else
		FakeLoad = true
		DelayAction(DownloadFile, 0, {
			"https://raw.githubusercontent.com/FurryBoL/master/master/Furry_Packets_Lib.lua",
			LIB_PATH.."\\Furry_Packets_Lib.lua",
			function ()
				print("<font color='#9900FF'>[Furry Packets Lib] </font><font color='#FF0000'>-</font><font color='#00FFFF'> Downloaded <font color='#FF0000'>Furry_Packets_Lib.lua</font>, Reload! (2xF9)</font>")
			end
		})
	end
end

_SCRIPT_VERSION = 1.2
_SCRIPT_VERSION_MENU = "1.2"
_FILE_PATH = SCRIPT_PATH .. GetCurrentEnv().FILE_NAME
_PATCH = "5.23"

--		  ██████  ▄████▄   ██▀███   ██▓ ██▓███  ▄▄▄█████▓        ██████ ▄▄▄█████▓ ▄▄▄     ▄▄▄█████▓ █    ██   ██████ 
--		▒██    ▒ ▒██▀ ▀█  ▓██ ▒ ██▒▓██▒▓██░  ██▒▓  ██▒ ▓▒      ▒██    ▒ ▓  ██▒ ▓▒▒████▄   ▓  ██▒ ▓▒ ██  ▓██▒▒██    ▒ 
--		░ ▓██▄   ▒▓█    ▄ ▓██ ░▄█ ▒▒██▒▓██░ ██▓▒▒ ▓██░ ▒░      ░ ▓██▄   ▒ ▓██░ ▒░▒██  ▀█▄ ▒ ▓██░ ▒░▓██  ▒██░░ ▓██▄   
--		  ▒   ██▒▒▓▓▄ ▄██▒▒██▀▀█▄  ░██░▒██▄█▓▒ ▒░ ▓██▓ ░         ▒   ██▒░ ▓██▓ ░ ░██▄▄▄▄██░ ▓██▓ ░ ▓▓█  ░██░  ▒   ██▒
--		▒██████▒▒▒ ▓███▀ ░░██▓ ▒██▒░██░▒██▒ ░  ░  ▒██▒ ░       ▒██████▒▒  ▒██▒ ░  ▓█   ▓██▒ ▒██▒ ░ ▒▒█████▓ ▒██████▒▒
--		▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░░ ▒▓ ░▒▓░░▓  ▒▓▒░ ░  ░  ▒ ░░         ▒ ▒▓▒ ▒ ░  ▒ ░░    ▒▒   ▓▒█░ ▒ ░░   ░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░
--		░ ░▒  ░ ░  ░  ▒     ░▒ ░ ▒░ ▒ ░░▒ ░         ░          ░ ░▒  ░ ░    ░      ▒   ▒▒ ░   ░    ░░▒░ ░ ░ ░ ░▒  ░ ░
--		░  ░  ░  ░          ░░   ░  ▒ ░░░         ░            ░  ░  ░    ░        ░   ▒    ░       ░░░ ░ ░ ░  ░  ░  
--		      ░  ░ ░         ░      ░                                ░                 ░  ░           ░           ░  
--		         ░ 

assert(load(Base64Decode("G0x1YVIAAQQEBAgAGZMNChoKAAAAAAAAAAAAAQIKAAAABgBAAEFAAAAdQAABBkBAAGUAAAAKQACBBkBAAGVAAAAKQICBHwCAAAQAAAAEBgAAAGNsYXNzAAQNAAAAU2NyaXB0U3RhdHVzAAQHAAAAX19pbml0AAQLAAAAU2VuZFVwZGF0ZQACAAAAAgAAAAgAAAACAAotAAAAhkBAAMaAQAAGwUAABwFBAkFBAQAdgQABRsFAAEcBwQKBgQEAXYEAAYbBQACHAUEDwcEBAJ2BAAHGwUAAxwHBAwECAgDdgQABBsJAAAcCQQRBQgIAHYIAARYBAgLdAAABnYAAAAqAAIAKQACFhgBDAMHAAgCdgAABCoCAhQqAw4aGAEQAx8BCAMfAwwHdAIAAnYAAAAqAgIeMQEQAAYEEAJ1AgAGGwEQA5QAAAJ1AAAEfAIAAFAAAAAQFAAAAaHdpZAAEDQAAAEJhc2U2NEVuY29kZQAECQAAAHRvc3RyaW5nAAQDAAAAb3MABAcAAABnZXRlbnYABBUAAABQUk9DRVNTT1JfSURFTlRJRklFUgAECQAAAFVTRVJOQU1FAAQNAAAAQ09NUFVURVJOQU1FAAQQAAAAUFJPQ0VTU09SX0xFVkVMAAQTAAAAUFJPQ0VTU09SX1JFVklTSU9OAAQEAAAAS2V5AAQHAAAAc29ja2V0AAQIAAAAcmVxdWlyZQAECgAAAGdhbWVTdGF0ZQAABAQAAAB0Y3AABAcAAABhc3NlcnQABAsAAABTZW5kVXBkYXRlAAMAAAAAAADwPwQUAAAAQWRkQnVnc3BsYXRDYWxsYmFjawABAAAACAAAAAgAAAAAAAMFAAAABQAAAAwAQACBQAAAHUCAAR8AgAACAAAABAsAAABTZW5kVXBkYXRlAAMAAAAAAAAAQAAAAAABAAAAAQAQAAAAQG9iZnVzY2F0ZWQubHVhAAUAAAAIAAAACAAAAAgAAAAIAAAACAAAAAAAAAABAAAABQAAAHNlbGYAAQAAAAAAEAAAAEBvYmZ1c2NhdGVkLmx1YQAtAAAAAwAAAAMAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAUAAAAFAAAABQAAAAUAAAAFAAAABQAAAAUAAAAFAAAABgAAAAYAAAAGAAAABgAAAAUAAAADAAAAAwAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAHAAAABwAAAAcAAAAHAAAABwAAAAcAAAAHAAAABwAAAAcAAAAIAAAACAAAAAgAAAAIAAAAAgAAAAUAAABzZWxmAAAAAAAtAAAAAgAAAGEAAAAAAC0AAAABAAAABQAAAF9FTlYACQAAAA4AAAACAA0XAAAAhwBAAIxAQAEBgQAAQcEAAJ1AAAKHAEAAjABBAQFBAQBHgUEAgcEBAMcBQgABwgEAQAKAAIHCAQDGQkIAx4LCBQHDAgAWAQMCnUCAAYcAQACMAEMBnUAAAR8AgAANAAAABAQAAAB0Y3AABAgAAABjb25uZWN0AAQRAAAAc2NyaXB0c3RhdHVzLm5ldAADAAAAAAAAVEAEBQAAAHNlbmQABAsAAABHRVQgL3N5bmMtAAQEAAAAS2V5AAQCAAAALQAEBQAAAGh3aWQABAcAAABteUhlcm8ABAkAAABjaGFyTmFtZQAEJgAAACBIVFRQLzEuMA0KSG9zdDogc2NyaXB0c3RhdHVzLm5ldA0KDQoABAYAAABjbG9zZQAAAAAAAQAAAAAAEAAAAEBvYmZ1c2NhdGVkLmx1YQAXAAAACgAAAAoAAAAKAAAACgAAAAoAAAALAAAACwAAAAsAAAALAAAADAAAAAwAAAANAAAADQAAAA0AAAAOAAAADgAAAA4AAAAOAAAACwAAAA4AAAAOAAAADgAAAA4AAAACAAAABQAAAHNlbGYAAAAAABcAAAACAAAAYQAAAAAAFwAAAAEAAAAFAAAAX0VOVgABAAAAAQAQAAAAQG9iZnVzY2F0ZWQubHVhAAoAAAABAAAAAQAAAAEAAAACAAAACAAAAAIAAAAJAAAADgAAAAkAAAAOAAAAAAAAAAEAAAAFAAAAX0VOVgA="), nil, "bt", _ENV))() ScriptStatus("REHHMFFGMIE") 
	
--		 ██▒   █▓ ▄▄▄       ██▀███   ██▓ ▄▄▄       ▄▄▄▄    ██▓    ▓█████   ██████ 
--		▓██░   █▒▒████▄    ▓██ ▒ ██▒▓██▒▒████▄    ▓█████▄ ▓██▒    ▓█   ▀ ▒██    ▒ 
--		 ▓██  █▒░▒██  ▀█▄  ▓██ ░▄█ ▒▒██▒▒██  ▀█▄  ▒██▒ ▄██▒██░    ▒███   ░ ▓██▄   
--		  ▒██ █░░░██▄▄▄▄██ ▒██▀▀█▄  ░██░░██▄▄▄▄██ ▒██░█▀  ▒██░    ▒▓█  ▄   ▒   ██▒
--		   ▒▀█░   ▓█   ▓██▒░██▓ ▒██▒░██░ ▓█   ▓██▒░▓█  ▀█▓░██████▒░▒████▒▒██████▒▒
--		   ░ ▐░   ▒▒   ▓▒█░░ ▒▓ ░▒▓░░▓   ▒▒   ▓▒█░░▒▓███▀▒░ ▒░▓  ░░░ ▒░ ░▒ ▒▓▒ ▒ ░
--		   ░ ░░    ▒   ▒▒ ░  ░▒ ░ ▒░ ▒ ░  ▒   ▒▒ ░▒░▒   ░ ░ ░ ▒  ░ ░ ░  ░░ ░▒  ░ ░
--		     ░░    ░   ▒     ░░   ░  ▒ ░  ░   ▒    ░    ░   ░ ░      ░   ░  ░  ░  
--		      ░        ░  ░   ░      ░        ░  ░ ░          ░  ░   ░  ░      ░  
--		     ░                                          ░ 

class("Darius")
function Darius:__init()
	targetsWithPassive = {}
	self.skills = {
		SkillQ = {
			range = 430,
			rangeMAX = 270,
			ready = false,
		},
		SkillW = {
			range = 330,
			ready = false,
		},
		SkillE = {
			range = 525,
			ready = false,
		},
		SkillR = {
			range = 480,
			ready = false,
		}
	}
	self.summonerSpells = {
		ignite = {},
		flash = {},
		heal = {},
		barrier = {}
	}
	_G.myHero.SaveMove = _G.myHero.MoveTo
	_G.myHero.SaveAttack = _G.myHero.Attack
	AddCreateObjCallback(function(obj)
		OnCreateObj(obj)
	end)
	AddProcessSpellCallback(function(unit, buff)
		self:OnProcessSpell(unit, buff)
	end)
	AddTickCallback(function()
		minions:OnTick()
		darius:OnTick()
	end)
	AddDrawCallback(function()
		draw:OnDraw()
	end)
end

local Qwind = 0
local Wwind = 0
local Ewind = 0
local Rwind = 0

local readytextQ = false
local readytextW = false
local readytextE = false
local readytextR = false

local Recalling = false
local CastWValid = false
local Wactive = false
local rtext = false

local igniteFound = false
local flashFound = false

local Hemmorrhage = {}
local channelingQ = false
local cfgpath = LIB_PATH.."Saves\\Darius_Reborn_2.cfg"
local level, tolevel, point, leveltick, levelvariable, spellLevel, latency
local enable = false
local drawlevelup = false
local leveltext = ""
if FakeLoad then
	local skinsPB = {}
	local skinObjectPos = nil
	local skinHeader = nil
	local dispellHeader = nil
	local skinH = nil
	local skinHPos = nil
end

function CurrentTimeInMillis()
	return (os.clock() * 1000);
end
local lastTimeTickCalled = 0

--		 █    ██  ██▓███  ▓█████▄  ▄▄▄     ▄▄▄█████▓▓█████   ██████ 
--		 ██  ▓██▒▓██░  ██▒▒██▀ ██▌▒████▄   ▓  ██▒ ▓▒▓█   ▀ ▒██    ▒ 
--		▓██  ▒██░▓██░ ██▓▒░██   █▌▒██  ▀█▄ ▒ ▓██░ ▒░▒███   ░ ▓██▄   
--		▓▓█  ░██░▒██▄█▓▒ ▒░▓█▄   ▌░██▄▄▄▄██░ ▓██▓ ░ ▒▓█  ▄   ▒   ██▒
--		▒▒█████▓ ▒██▒ ░  ░░▒████▓  ▓█   ▓██▒ ▒██▒ ░ ░▒████▒▒██████▒▒
--		░▒▓▒ ▒ ▒ ▒▓▒░ ░  ░ ▒▒▓  ▒  ▒▒   ▓▒█░ ▒ ░░   ░░ ▒░ ░▒ ▒▓▒ ▒ ░
--		░░▒░ ░ ░ ░▒ ░      ░ ▒  ▒   ▒   ▒▒ ░   ░     ░ ░  ░░ ░▒  ░ ░
--		 ░░░ ░ ░ ░░        ░ ░  ░   ░   ▒    ░         ░   ░  ░  ░  
--		   ░                 ░          ░  ░           ░  ░      ░  

function Darius:OnTick()
	settings.target = self:GetTarget()
	self.skills.SkillQ.ready = myHero:CanUseSpell(_Q) == READY
	self.skills.SkillW.ready = myHero:CanUseSpell(_W) == READY
	self.skills.SkillE.ready = myHero:CanUseSpell(_E) == READY
	self.skills.SkillR.ready = myHero:CanUseSpell(_R) == READY
	if not igniteFound then
		if myHero:GetSpellData(SUMMONER_1).name:find("summonerdot") then
			igniteFound = true
			self.summonerSpells.ignite = SUMMONER_1
			settings.killsteal:addParam("ignite", "Auto Ignite", SCRIPT_PARAM_ONOFF, true)
		elseif myHero:GetSpellData(SUMMONER_2).name:find("summonerdot") then
			igniteFound = true
			self.summonerSpells.ignite = SUMMONER_2
			settings.killsteal:addParam("ignite", "Auto Ignite", SCRIPT_PARAM_ONOFF, true)
		end
	end
	if not flashFound then
		if myHero:GetSpellData(SUMMONER_1).name:find("summonerflash") then
			flashFound = true
			self.summonerSpells.flash = SUMMONER_1
		elseif myHero:GetSpellData(SUMMONER_2).name:find("summonerflash") then
			flashFound = true
			self.summonerSpells.flash = SUMMONER_2
		end
	end
	AntiAFKSystem()
	if settings.target then
		if settings.comboactive then
			self:Combo(settings.target)
		elseif settings.harassKey then
			self:harass(settings.target)
		end
	end
	if channelingQ then
		if settings.comboactive or settings.harassKey or settings.lastHit or settings.clearKey then
			MoveToMouse()
		end
	end
	if settings.killsteal.killsteal and self.skills.SkillE.ready then
		self:KillSteal()
	end
	if settings.killsteal.ignite and igniteFound ~= nil then
		self:AutoIgnite()
	end
	if settings.lastHit then
		self:lastHit()
	end
	if settings.clearKey then
		self:clearLane()
	end
	if settings.instruct then
		settings.instruct = false
		PopUp1 = true
	end
	if settings.oSpells.UseRLowHp and self.skills.SkillR.ready then
		for _, target in pairs(GetEnemyHeroes()) do
			if GetDistance(target, myHero) < 740 and myHero.health / myHero.maxHealth <= settings.oSpells.RLowHp / 100 then
				self:Cast("R", target)
			end
		end
	end
	if settings.draws.DrawQ and self.skills.SkillQ.ready then
		Qup = true
	else
		Qup = false
	end
	if settings.draws.DrawE and self.skills.SkillE.ready then
		Eup = true
	else
		Eup = false
	end
	if settings.draws.DrawR and self.skills.SkillR.ready then
		Rup = true
	else
		Rup = false
	end
	if not FakeLoad then
		if ((CurrentTimeInMillis() - lastTimeTickCalled) > 200) then
			lastTimeTickCalled = CurrentTimeInMillis()
			if settings.selectedDariusSkin ~= lastSkin then
				lastSkin = settings.selectedDariusSkin
				SendSkinPacket(myHero.charName, skinsPB[settings.selectedDariusSkin], myHero.networkID)
			end
		end
	end
	if not settings.AutoLevelOn or not enable then
		return
	end
	if myHero.level ~= level then
		if point then
			if myHero:GetSpellData(levelvariable).level ~= spellLevel then
				showLeveledSpell(levelvariable)
				Levelend()
			elseif GetTickCount() > leveltick + latency * 2 then
				Levelstart()
			end
		else
			if not Config() then
				Error()
			return
			end
			Levelstart()
		end
	end
end

function Darius:GetTarget()
	settings.ts:update()
	if _G.AutoCarry and  _G.AutoCarry.Attack_Crosshair and _G.AutoCarry.Attack_Crosshair.target and _G.AutoCarry.Attack_Crosshair.target.type == myHero.type then 
		return _G.AutoCarry.Attack_Crosshair.target 
	elseif settings.ts.target and ValidTarget(settings.ts.target) then
		return settings.ts.target
	end
end

function AntiAFKSystem()
	if os.clock() < Clock or not settings.antiAFK then return end
	Clock = os.clock() + math.random(60,120)
	myHero:MoveTo(myHero.x, myHero.z)
end

function MoveToMouse()
	if GetDistance(mousePos) then
		local a = myHero + (Vector(mousePos) - myHero):normalized() * 300
		myHero:MoveTo(a.x, a.z)
	end
end

function OnWndMsg(a, b)
	if a == WM_LBUTTONDOWN then
		if PopUp1 then
			PopUp1 = false
		end
	end
end

--		 ███▄ ▄███▓▓█████  ███▄    █  █    ██ 
--		▓██▒▀█▀ ██▒▓█   ▀  ██ ▀█   █  ██  ▓██▒
--		▓██    ▓██░▒███   ▓██  ▀█ ██▒▓██  ▒██░
--		▒██    ▒██ ▒▓█  ▄ ▓██▒  ▐▌██▒▓▓█  ░██░
--		▒██▒   ░██▒░▒████▒▒██░   ▓██░▒▒█████▓ 
--		░ ▒░   ░  ░░░ ▒░ ░░ ▒░   ▒ ▒ ░▒▓▒ ▒ ▒ 
--		░  ░      ░ ░ ░  ░░ ░░   ░ ▒░░░▒░ ░ ░ 
--		░      ░      ░      ░   ░ ░  ░░░ ░ ░ 
--		       ░      ░  ░         ░    ░   

function OnLoad()
	settings = scriptConfig("> > > Darius Reborn < < <", "Darius_Reborn")
			settings.ts = TargetSelector(TARGET_LESS_CAST, 740, DAMAGE_MAGIC, true)
			settings.ts.name = 'Darius'
			settings:addTS(settings.ts)
		settings:addSubMenu("Combo", "combo")
			settings.combo:addParam("UseQMax", "Use Q Max Range", SCRIPT_PARAM_ONOFF, true)
			settings.combo:addParam("UseW", "Use W in Combo", SCRIPT_PARAM_ONOFF, true)
			settings.combo:addParam("UseE", "Use E in Combo", SCRIPT_PARAM_ONOFF, true)
		settings:addSubMenu("Harass", "harass")
			settings.harass:addParam("harassq", "Use Q in Harass", SCRIPT_PARAM_ONOFF, true)
			settings.harass:addParam("harassw", "Use W in Harass", SCRIPT_PARAM_ONOFF, true)
		settings:addSubMenu("Other Spells", "oSpells")
			settings.oSpells:addParam("UseRLowHp", "Use R On Low Health", SCRIPT_PARAM_ONOFF, true)
			settings.oSpells:addParam("RLowHp", "    Set Low Health %", SCRIPT_PARAM_SLICE, 10, 0, 100, 0)
	if VIP_USER then
		settings:addSubMenu("Misc", "misc")
			settings.misc:addParam("Debug", "Debugger", SCRIPT_PARAM_ONOFF, true)
			settings.misc:addParam("ChatDebug", "Add Chat Debug", SCRIPT_PARAM_ONOFF, false)
			settings.misc:addParam("xAxis", "X Axis", SCRIPT_PARAM_SLICE, 150, 0, 1230, 0)
			settings.misc:addParam("yAxis", "Y Axis", SCRIPT_PARAM_SLICE, 150, 0, 750, 0)
	end
		settings:addSubMenu("Kill Steal", "killsteal")
			settings.killsteal:addParam("killsteal", "Killsteal with Spells", SCRIPT_PARAM_ONOFF, true)
		settings:addSubMenu("Farm", "farm")
			settings.farm:addParam("space", "Last Hit:", SCRIPT_PARAM_INFO, "")
			settings.farm:addParam("lasthitq", "Use Q Last Hit", SCRIPT_PARAM_ONOFF, true)
			settings.farm:addParam("lasthitw", "Use W Last Hit", SCRIPT_PARAM_ONOFF, true)
			settings.farm:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.farm:addParam("space", "Lane Clear:", SCRIPT_PARAM_INFO, "")
			settings.farm:addParam("farmq", "Use Q Lane Clear", SCRIPT_PARAM_ONOFF, false)
			settings.farm:addParam("farmw", "Use W Lane Clear", SCRIPT_PARAM_ONOFF, false)
			settings.farm:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.farm:addParam("space", "Jungle Creeps:", SCRIPT_PARAM_INFO, "")
			settings.farm:addParam("farmqjng", "Use Q Jungle Creeps", SCRIPT_PARAM_ONOFF, true)
			settings.farm:addParam("farmwjng", "Use W Jungle Creeps", SCRIPT_PARAM_ONOFF, true)
		settings:addSubMenu("Auto Level", "autolvl")
			if VIP_USER then
				settings.autolvl:addParam("getAllAtLevel", "Have Q, W and E by level:", SCRIPT_PARAM_SLICE, 3, 3, 4, 0)
				settings.autolvl:addParam("info", "Level priority:", SCRIPT_PARAM_INFO, "")
				settings.autolvl:addParam("maxQ", "Level (Q) priority", SCRIPT_PARAM_SLICE, 2, 1, 4, 0)
				settings.autolvl:addParam("maxW", "Level (W) priority", SCRIPT_PARAM_SLICE, 3, 1, 4, 0)
				settings.autolvl:addParam("maxE", "Level (E) priority", SCRIPT_PARAM_SLICE, 4, 1, 4, 0)
				settings.autolvl:addParam("maxR", "Level (R) priority", SCRIPT_PARAM_SLICE, 1, 1, 4, 0)
				settings.autolvl:addParam("info", "1 = Highest priority", SCRIPT_PARAM_INFO, "")
				settings.autolvl:addParam("info", "4 = Lowest priority", SCRIPT_PARAM_INFO, "")
				settings.autolvl:addParam("space", "", SCRIPT_PARAM_INFO, "")
				settings.autolvl:addParam("DrawText", "Draw Levelup Text (On Champion)", SCRIPT_PARAM_ONOFF, true)
				settings.autolvl:addParam("DrawTextSlider", "Time of text (Seconds)", SCRIPT_PARAM_SLICE, 3, 1, 5, 0)
				level = 0
				point = false
				enable = true
			end
		settings:addSubMenu("Drawing", "draws")
			settings.draws:addParam("DrawQ", "Draw Q Range", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("DrawW", "Draw W Range", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("DrawE", "Draw E Range", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("DrawR", "Draw R Range", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("DrawRtext", "Draw R Text", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("PStack", "Draw Passive Stacks", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("DrawHitBox", "Draw Hit Box", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("ESP", "Draw ESP Darius", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("ESPEnemy", "Draw ESP Enemy", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("LFCwidth", "LFC - Width", 4, 2, 1, 5, 0)
			settings.draws:addParam("LFCsnap", "LFC - Length Before Snapping", 4, 100, 50, 510, 0)
			settings.draws:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.draws:addParam("Stackcircle", "Draw targets with Passive", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("particles", "Draw Particles", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("SizeP", "Size of Passive Stack Text", SCRIPT_PARAM_SLICE, 25, 10, 50, 0)
			settings.draws:addParam("executeIndicator", "Draw Damage Indicator", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("drawkillable", "Draw Damage Text on Enemy", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("nameenable", "Do You Have InGame Names Enabled?", SCRIPT_PARAM_ONOFF, true)
				settings.draws:addSubMenu("Colors:", "color")
					settings.draws.color:addParam("Qcolor", "Q Color", SCRIPT_PARAM_COLOR, {
						255,
						255,
						0,
						0
					})
					settings.draws.color:addParam("Wcolor", "W Range Color", SCRIPT_PARAM_COLOR, {
						255,
						0,
						255,
						255
					})
					settings.draws.color:addParam("Ecolor", "E Range Color", SCRIPT_PARAM_COLOR, {
						255,
						255,
						255,
						255
					})
					settings.draws.color:addParam("Rcolor", "R Color", SCRIPT_PARAM_COLOR, {
						255,
						255,
						255,
						0
					})
					settings.draws.color:addParam("space", "", SCRIPT_PARAM_INFO, "")
					settings.draws.color:addParam("HitBoxcolor", "Hit Box Color", SCRIPT_PARAM_COLOR, {
						200,
						255,
						180,
						0
					})
					settings.draws.color:addParam("StacksPC", "Passive Stacks Color", SCRIPT_PARAM_COLOR, {
						255,
						0,
						255,
						255
					})
					settings.draws.color:addParam("ESPcolor", "ESP Color", SCRIPT_PARAM_COLOR, {
						255,
						255,
						255,
						255
					})
					settings.draws.color:addParam("ESPEnemycolor", "ESP Enemy Color", SCRIPT_PARAM_COLOR, {
						255,
						255,
						255,
						255
					})
					settings.draws.color:addParam("ESPEnemycolorRange", "ESP In Range Color", SCRIPT_PARAM_COLOR, {
						255,
						255,
						180,
						0
					})
					settings.draws.color:addParam("ESPEnemycolorTarget", "ESP Selected Target Color", SCRIPT_PARAM_COLOR, {
						255,
						255,
						0,
						0
					})
					settings.draws.color:addParam("StackcircleColor", "Targets with Stacks Color", SCRIPT_PARAM_COLOR, {
						255,
						0,
						255,
						255
					})
					settings.draws.color:addParam("particlescolor", "Particles Color", SCRIPT_PARAM_COLOR, {
						255,
						255,
						0,
						0
					})
		if _G.Reborn_Loaded then
			SAC = print("<font color='#FF00C8'>[Darius Reborn] </font><font color='#FFFF00'>-</font><font color='#FF8B22'> SAC</font><font color='#FFFF00'>:</font><font color='#FF8B22'>Reborn</font><font color='#FFFFFF'> Loading... Please wait! </font>")
			DelayAction(function()
			settings:addSubMenu("Orbwalker", "orbWalk")
			settings.orbWalk:addParam("SACLoaded", "SAC:R integration supported!", SCRIPT_PARAM_INFO, "")
			end, 5)
		elseif not _G.Reborn_Loaded and FileExist(LIB_PATH .. "SxOrbWalk.lua") then
			print("<font color='#FF00C8'>[Darius Reborn] </font><font color='#FFFF00'>-</font><font color='#FF8B22'>SxOrbWalk</font><font color='#FFFFFF'> Loading... Please wait! </font>")
			SxOrb = true
			require("SxOrbWalk")
			DelayAction(function()
			settings:addSubMenu("SxOrbWalk", "orbWalk")
			end, 5)
			DelayAction(function()
			_G.SxOrb:LoadToMenu(settings.orbWalk)
			end, 5)
		elseif SAC ~= true and SxOrb ~= true then
			print("<font color='#FF00C8'>[Darius Reborn] </font><font color='#FFFF00'>-</font><font color='#FF8B22'> SAC</font><font color='#FFFF00'>:</font><font color='#FF8B22'>Reborn</font><font color='#FFFFFF'> or </font><font color='#FF8B22'>SxOrbWalk</font><font color='#FFFFFF'> is required.</font>")
		end
		settings:addParam("comboactive", "Combo Key", SCRIPT_PARAM_ONKEYDOWN, false, 32)
		settings:addParam("harassKey", "Harass Key", SCRIPT_PARAM_ONKEYDOWN, false, GetKey("C"))
		settings:addParam("lastHit", "Last Hit Key", SCRIPT_PARAM_ONKEYDOWN, false, GetKey("T"))
		settings:addParam("clearKey", "Lane Clear Key", SCRIPT_PARAM_ONKEYDOWN, false, GetKey("V"))
		settings:addParam("space", "", SCRIPT_PARAM_INFO, "")
		settings:addParam("instruct", "Click For Instructions", SCRIPT_PARAM_ONOFF, false)
		Clock = os.clock()
		settings:addParam("antiAFK", "Anti AFK", SCRIPT_PARAM_ONOFF, true)
		if VIP_USER then
			settings:addParam("AutoLevelOn", "Auto level", SCRIPT_PARAM_ONOFF, true)
			settings.AutoLevelOn = true
		end
		settings:addParam("theversion", "Version: ", SCRIPT_PARAM_INFO, tostring(_SCRIPT_VERSION_MENU))
		print("<font color='#FF00C8'>[Darius Reborn] <font color='#FFFF00'>-</font></font><font color='#FFFFFF'> by </font><font color='#FF8B22'>Furry</font> <font color='#FFFFFF'>Version </font><font color='#00FFFF'>" .. _SCRIPT_VERSION_MENU .. "</font><font color='#FFFFFF'> Patch: </font><font color='#00FFFF'>" .. _PATCH .. "</font>")
		if _AUTO_UPDATE then
			GetAsyncWebResult("raw.github.com", "/FurryBoL/master/master/DariusReborn.version", function(result)
				local latest = tonumber(result)
				if latest > _SCRIPT_VERSION then
					print("<font color='#FF00C8'>[Darius Reborn] </font><font color='#FFFF00'>-</font><font color='#FFFFFF'> A update has been found and it is now downloading!</font>")
					DelayAction(DownloadFile, 0, {
						"https://raw.githubusercontent.com/FurryBoL/master/master/DariusReborn.lua",
						_FILE_PATH,
						function()
							print("<font color='#FF00C8'>[Darius Reborn] </font><font color='#FFFF00'>-</font><font color='#FFFFFF'> Script has been updated, please reload! (2xF9)</font>")
						end
					})
				end
			end)
		end
		settings:addParam("thepatch", "Patch:", SCRIPT_PARAM_INFO, _PATCH)
		settings:addParam("furry", "Darius Reborn By:", SCRIPT_PARAM_INFO, "Furry")
		if VIP_USER then
			settings:addParam("selectedDariusSkin", "Skin Changer", SCRIPT_PARAM_LIST, 1, {
				[1] = 'Off',
				[2] = 'Original',
				[3] = 'Lord',
				[4] = 'Bioforge',
				[5] = 'Woad King',
				[6] = 'Dunkmaster',
				[7] = 'Darius Forge Back Iron',
				[8] = 'Darius Forge Bronze',
				[9] = 'Darius Forge Copper',
				[10] = 'Academy',
			})
		end
				settings:permaShow("comboactive")
				settings:permaShow("harassKey")
				settings:permaShow("lastHit")
				settings:permaShow("clearKey")
			if VIP_USER then
				settings:permaShow("AutoLevelOn")
			end
	if FileExist(cfgpath) == false then
		settings.instruct = true
		WriteFile("Delete this file if you want to run instructions on first load.", cfgpath)
	else
		settings.instruct = false
	end
	draw = VisualManager()
	minions = Minions()
	darius = Darius()
	for _, target in ipairs(GetEnemyHeroes()) do
		Hemmorrhage[target.networkID] = nil
	end
end

--		 █    ██  ███▄    █  ██▓     ▒█████   ▄▄▄      ▓█████▄ 
--		 ██  ▓██▒ ██ ▀█   █ ▓██▒    ▒██▒  ██▒▒████▄    ▒██▀ ██▌
--		▓██  ▒██░▓██  ▀█ ██▒▒██░    ▒██░  ██▒▒██  ▀█▄  ░██   █▌
--		▓▓█  ░██░▓██▒  ▐▌██▒▒██░    ▒██   ██░░██▄▄▄▄██ ░▓█▄   ▌
--		▒▒█████▓ ▒██░   ▓██░░██████▒░ ████▓▒░ ▓█   ▓██▒░▒████▓ 
--		░▒▓▒ ▒ ▒ ░ ▒░   ▒ ▒ ░ ▒░▓  ░░ ▒░▒░▒░  ▒▒   ▓▒█░ ▒▒▓  ▒ 
--		░░▒░ ░ ░ ░ ░░   ░ ▒░░ ░ ▒  ░  ░ ▒ ▒░   ▒   ▒▒ ░ ░ ▒  ▒ 
--		 ░░░ ░ ░    ░   ░ ░   ░ ░   ░ ░ ░ ▒    ░   ▒    ░ ░  ░ 
--		   ░              ░     ░  ░    ░ ░        ░  ░   ░    
--		                                                ░   

function OnUnload()
	print("<font color='#FF00C8'>[Darius Reborn] </font><font color='#FFFF00'>-</font><font color='#FFFFFF'> Unloaded! </font>")
	if VIP_USER and not FakeLoad then
		SendSkinPacket(myHero.charName, nil, myHero.networkID)
	end
end

--		▓█████▄  ▄▄▄       ███▄ ▄███▓ ▄▄▄        ▄████ ▓█████        ▄████▄   ▄▄▄       ██▓     ▄████▄  
--		▒██▀ ██▌▒████▄    ▓██▒▀█▀ ██▒▒████▄     ██▒ ▀█▒▓█   ▀       ▒██▀ ▀█  ▒████▄    ▓██▒    ▒██▀ ▀█  
--		░██   █▌▒██  ▀█▄  ▓██    ▓██░▒██  ▀█▄  ▒██░▄▄▄░▒███         ▒▓█    ▄ ▒██  ▀█▄  ▒██░    ▒▓█    ▄ 
--		░▓█▄   ▌░██▄▄▄▄██ ▒██    ▒██ ░██▄▄▄▄██ ░▓█  ██▓▒▓█  ▄       ▒▓▓▄ ▄██▒░██▄▄▄▄██ ▒██░    ▒▓▓▄ ▄██▒
--		░▒████▓  ▓█   ▓██▒▒██▒   ░██▒ ▓█   ▓██▒░▒▓███▀▒░▒████▒      ▒ ▓███▀ ░ ▓█   ▓██▒░██████▒▒ ▓███▀ ░
--		 ▒▒▓  ▒  ▒▒   ▓▒█░░ ▒░   ░  ░ ▒▒   ▓▒█░ ░▒   ▒ ░░ ▒░ ░      ░ ░▒ ▒  ░ ▒▒   ▓▒█░░ ▒░▓  ░░ ░▒ ▒  ░
--		 ░ ▒  ▒   ▒   ▒▒ ░░  ░      ░  ▒   ▒▒ ░  ░   ░  ░ ░  ░        ░  ▒     ▒   ▒▒ ░░ ░ ▒  ░  ░  ▒   
--		 ░ ░  ░   ░   ▒   ░      ░     ░   ▒   ░ ░   ░    ░         ░          ░   ▒     ░ ░   ░        
--		   ░          ░  ░       ░         ░  ░      ░    ░  ░      ░ ░            ░  ░    ░  ░░ ░      
--		 ░                                                          ░                          ░ 

function GetStacks(target)
	return Hemmorrhage[target.networkID] or 0
end

function Darius:GetRDmg(target)
	if myHero:GetSpellData(_R).level < 1 then
		return 0
	end
	local BaseDamage = { 100, 200, 300}
	if Hemmorrhage[target.networkID] ~= nil then
		local StackDamage = { 1.2, 1.4, 1.6, 1.8, 2}
		local trueDmg = (BaseDamage[myHero:GetSpellData(_R).level] + (myHero.damage * 0.75)) * StackDamage[GetStacks(target)]
		return trueDmg
	end
	if myHero:GetSpellData(_R).level >= 1 then
		return BaseDamage[myHero:GetSpellData(_R).level] + (myHero.damage * 0.75)
	end
end

function Darius:KillSteal()
	for _, target in pairs(GetEnemyHeroes()) do
		if ValidTarget(target, 740) then
			local DmgTable = {
				Q = self.skills.SkillQ.ready and getDmg("Q", target, myHero) or 0,
				R = self.skills.SkillR.ready and Darius:GetRDmg(target) or 0
			}
			if DmgTable.R > target.health then
				self:Cast("R", target)
			elseif DmgTable.Q > target.health and GetDistance(target) <= self.skills.SkillQ.range then
				self:Cast("Q", target)
			elseif DmgTable.Q > target.health and self.skills.SkillE.ready and GetDistanceSqr(myHero, target) >= self.skills.SkillQ.range * self.skills.SkillQ.range and GetDistanceSqr(myHero, target) <= self.skills.SkillE.range * self.skills.SkillE.range then
				self:Cast("E", target)
				self:Cast("Q", target)
			elseif DmgTable.Q + DmgTable.R > target.health and GetDistance(target) <= self.skills.SkillQ.range then
				self:Cast("Q", target)
				self:Cast("R", target)
			end
		end
	end
end

function Darius:GetDrawText(target)
	local DmgTable = {
		Q = getDmg("Q", target, myHero),
		E = getDmg("E", target, myHero),
		R = getDmg("R", target, myHero),
	}
	local igniteDMG = 0
	if igniteFound then
		igniteDMG = igniteDMG + getDmg('IGNITE', target, myHero)
	end
	if DmgTable.Q > target.health then
		return "Q", ARGB(255, 0, 255, 0)
	elseif DmgTable.E > target.health then
		return "E", ARGB(255, 0, 255, 0)
	elseif DmgTable.R > target.health then
		return "R", ARGB(255, 0, 255, 0)
	elseif DmgTable.Q + DmgTable.E > target.health then
		return "Q + E", ARGB(255, 128, 255, 0)
	elseif DmgTable.Q + DmgTable.R > target.health then
		return "Q + R", ARGB(255, 128, 255, 0)
	elseif DmgTable.E + DmgTable.R > target.health then
		return "E + R", ARGB(255, 128, 255, 0)
	elseif DmgTable.Q + DmgTable.E + DmgTable.R > target.health then
		return "Q + E + R", ARGB(255, 200, 255, 0)
	elseif igniteDMG > 0 and DmgTable.Q + DmgTable.E + DmgTable.R + igniteDMG > target.health then
		return "Q + E + R + Ignite", ARGB(255, 225, 175, 0)
	else
		return "Can't Kill Yet", ARGB(255, 255, 0, 0)
	end
end

function Darius:GetMyDmg(target)
	local ReadyTable = {
		Q = myHero:CanUseSpell(_Q) == READY,
		E = myHero:CanUseSpell(_E) == READY,
		R = myHero:CanUseSpell(_R) == READY
	}
	if ReadyTable.Q and ReadyTable.E and ReadyTable.R then
		return getDmg("Q", target, myHero) + getDmg("E", target, myHero) + getDmg("R", target, myHero)
	elseif ReadyTable.Q and ReadyTable.E then
		return getDmg("Q", target, myHero) + getDmg("E", target, myHero)
	elseif ReadyTable.Q and ReadyTable.R then
		return getDmg("Q", target, myHero) + getDmg("R", target, myHero)
	elseif ReadyTable.Q and ReadyTable.E then
		return getDmg("Q", target, myHero) + getDmg("E", target, myHero)
	elseif ReadyTable.R then
		return getDmg("R", target, myHero)
	elseif ReadyTable.E then
		return getDmg("E", target, myHero)
	elseif ReadyTable.Q then
		return getDmg("Q", target, myHero)
	else
		return 0
	end
end

--		 ▄████▄   ▒█████   ███▄ ▄███▓ ▄▄▄▄    ▒█████  
--		▒██▀ ▀█  ▒██▒  ██▒▓██▒▀█▀ ██▒▓█████▄ ▒██▒  ██▒
--		▒▓█    ▄ ▒██░  ██▒▓██    ▓██░▒██▒ ▄██▒██░  ██▒
--		▒▓▓▄ ▄██▒▒██   ██░▒██    ▒██ ▒██░█▀  ▒██   ██░
--		▒ ▓███▀ ░░ ████▓▒░▒██▒   ░██▒░▓█  ▀█▓░ ████▓▒░
--		░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ░  ░░▒▓███▀▒░ ▒░▒░▒░ 
--		  ░  ▒     ░ ▒ ▒░ ░  ░      ░▒░▒   ░   ░ ▒ ▒░ 
--		░        ░ ░ ░ ▒  ░      ░    ░    ░ ░ ░ ░ ▒  
--		░ ░          ░ ░         ░    ░          ░ ░  
--		░                                  ░ 

function Darius:Combo(target)
	if settings.combo.UseQMax and self.skills.SkillQ.ready and GetDistance(target) <= self.skills.SkillQ.range and GetDistance(target) >= self.skills.SkillQ.rangeMAX then
		self:Cast("Q", target)
	elseif not settings.combo.UseQMax and self.skills.SkillQ.ready and GetDistance(target) <= self.skills.SkillQ.range then
		self:Cast("Q", target)
	end
	if settings.combo.UseW and self.skills.SkillW.ready and CastWValid then
		self:Cast("W", target)
	end
	if settings.combo.UseE and GetDistanceSqr(myHero, target) >= self.skills.SkillQ.range * self.skills.SkillQ.range and GetDistanceSqr(myHero, target) <= self.skills.SkillE.range * self.skills.SkillE.range then
		self:Cast("E", target)
	end
end

--		 ██░ ██  ▄▄▄       ██▀███   ▄▄▄        ██████   ██████ 
--		▓██░ ██▒▒████▄    ▓██ ▒ ██▒▒████▄    ▒██    ▒ ▒██    ▒ 
--		▒██▀▀██░▒██  ▀█▄  ▓██ ░▄█ ▒▒██  ▀█▄  ░ ▓██▄   ░ ▓██▄   
--		░▓█ ░██ ░██▄▄▄▄██ ▒██▀▀█▄  ░██▄▄▄▄██   ▒   ██▒  ▒   ██▒
--		░▓█▒░██▓ ▓█   ▓██▒░██▓ ▒██▒ ▓█   ▓██▒▒██████▒▒▒██████▒▒
--		 ▒ ░░▒░▒ ▒▒   ▓▒█░░ ▒▓ ░▒▓░ ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░▒ ▒▓▒ ▒ ░
--		 ▒ ░▒░ ░  ▒   ▒▒ ░  ░▒ ░ ▒░  ▒   ▒▒ ░░ ░▒  ░ ░░ ░▒  ░ ░
--		 ░  ░░ ░  ░   ▒     ░░   ░   ░   ▒   ░  ░  ░  ░  ░  ░  
--		 ░  ░  ░      ░  ░   ░           ░  ░      ░        ░  

function Darius:harass(target)
	if settings.harass.harassq and self.skills.SkillQ.ready and GetDistance(target) <= self.skills.SkillQ.range then
		self:Cast("Q", target)
	end
	if settings.harass.harassw and self.skills.SkillW.ready and CastWValid then
		self:Cast("W", target)
	end
end

--		 ██▓    ▄▄▄        ██████ ▄▄▄█████▓       ██░ ██  ██▓▄▄▄█████▓
--		▓██▒   ▒████▄    ▒██    ▒ ▓  ██▒ ▓▒      ▓██░ ██▒▓██▒▓  ██▒ ▓▒
--		▒██░   ▒██  ▀█▄  ░ ▓██▄   ▒ ▓██░ ▒░      ▒██▀▀██░▒██▒▒ ▓██░ ▒░
--		▒██░   ░██▄▄▄▄██   ▒   ██▒░ ▓██▓ ░       ░▓█ ░██ ░██░░ ▓██▓ ░ 
--		░██████▒▓█   ▓██▒▒██████▒▒  ▒██▒ ░       ░▓█▒░██▓░██░  ▒██▒ ░ 
--		░ ▒░▓  ░▒▒   ▓▒█░▒ ▒▓▒ ▒ ░  ▒ ░░          ▒ ░░▒░▒░▓    ▒ ░░   
--		░ ░ ▒  ░ ▒   ▒▒ ░░ ░▒  ░ ░    ░           ▒ ░▒░ ░ ▒ ░    ░    
--		  ░ ░    ░   ▒   ░  ░  ░    ░             ░  ░░ ░ ▒ ░  ░      
--		    ░  ░     ░  ░      ░                  ░  ░  ░ ░  

function Darius:lastHit()
	for _, target in pairs(minions.enemyMinions.objects) do
		local Qdamage = getDmg("Q", target, myHero)
		local Wdamage = getDmg("W", target, myHero)
		if ValidTarget(target) and target ~= nil and self.skills.SkillQ.ready and settings.farm.lasthitq and GetDistanceSqr(target) <= self.skills.SkillQ.range * self.skills.SkillQ.range and Qdamage >= target.health then
			self:Cast("Q", target)
			break
		end
		if ValidTarget(target) and target ~= nil and self.skills.SkillW.ready and settings.farm.lasthitw and CastWValid and Wdamage >= target.health then
			self:Cast("W", target)
			break
		end
	end
end

--		 ██▓    ▄▄▄       ███▄    █ ▓█████        ▄▄▄       ███▄    █ ▓█████▄        ▄▄▄██▀▀▀█    ██  ███▄    █   ▄████  ██▓    ▓█████        ▄████▄   ██▓    ▓█████ ▄▄▄       ██▀███  
--		▓██▒   ▒████▄     ██ ▀█   █ ▓█   ▀       ▒████▄     ██ ▀█   █ ▒██▀ ██▌         ▒██   ██  ▓██▒ ██ ▀█   █  ██▒ ▀█▒▓██▒    ▓█   ▀       ▒██▀ ▀█  ▓██▒    ▓█   ▀▒████▄    ▓██ ▒ ██▒
--		▒██░   ▒██  ▀█▄  ▓██  ▀█ ██▒▒███         ▒██  ▀█▄  ▓██  ▀█ ██▒░██   █▌         ░██  ▓██  ▒██░▓██  ▀█ ██▒▒██░▄▄▄░▒██░    ▒███         ▒▓█    ▄ ▒██░    ▒███  ▒██  ▀█▄  ▓██ ░▄█ ▒
--		▒██░   ░██▄▄▄▄██ ▓██▒  ▐▌██▒▒▓█  ▄       ░██▄▄▄▄██ ▓██▒  ▐▌██▒░▓█▄   ▌      ▓██▄██▓ ▓▓█  ░██░▓██▒  ▐▌██▒░▓█  ██▓▒██░    ▒▓█  ▄       ▒▓▓▄ ▄██▒▒██░    ▒▓█  ▄░██▄▄▄▄██ ▒██▀▀█▄  
--		░██████▒▓█   ▓██▒▒██░   ▓██░░▒████▒       ▓█   ▓██▒▒██░   ▓██░░▒████▓        ▓███▒  ▒▒█████▓ ▒██░   ▓██░░▒▓███▀▒░██████▒░▒████▒      ▒ ▓███▀ ░░██████▒░▒████▒▓█   ▓██▒░██▓ ▒██▒
--		░ ▒░▓  ░▒▒   ▓▒█░░ ▒░   ▒ ▒ ░░ ▒░ ░       ▒▒   ▓▒█░░ ▒░   ▒ ▒  ▒▒▓  ▒        ▒▓▒▒░  ░▒▓▒ ▒ ▒ ░ ▒░   ▒ ▒  ░▒   ▒ ░ ▒░▓  ░░░ ▒░ ░      ░ ░▒ ▒  ░░ ▒░▓  ░░░ ▒░ ░▒▒   ▓▒█░░ ▒▓ ░▒▓░
--		░ ░ ▒  ░ ▒   ▒▒ ░░ ░░   ░ ▒░ ░ ░  ░        ▒   ▒▒ ░░ ░░   ░ ▒░ ░ ▒  ▒        ▒ ░▒░  ░░▒░ ░ ░ ░ ░░   ░ ▒░  ░   ░ ░ ░ ▒  ░ ░ ░  ░        ░  ▒   ░ ░ ▒  ░ ░ ░  ░ ▒   ▒▒ ░  ░▒ ░ ▒░
--		  ░ ░    ░   ▒      ░   ░ ░    ░           ░   ▒      ░   ░ ░  ░ ░  ░        ░ ░ ░   ░░░ ░ ░    ░   ░ ░ ░ ░   ░   ░ ░      ░         ░          ░ ░      ░    ░   ▒     ░░   ░ 
--		    ░  ░     ░  ░         ░    ░  ░            ░  ░         ░    ░           ░   ░     ░              ░       ░     ░  ░   ░  ░      ░ ░          ░  ░   ░  ░     ░  ░   ░     
--		                                                               ░                                                                     ░ 

function Darius:clearLane() 
	for _, target in pairs(minions.enemyMinions.objects) do
		if ValidTarget(target) and target ~= nil and self.skills.SkillQ.ready and settings.farm.farmq and GetDistanceSqr(target) <= self.skills.SkillQ.range * self.skills.SkillQ.range then
			self:Cast("Q", target)
		end
		if ValidTarget(target) and target ~= nil and self.skills.SkillW.ready and settings.farm.farmw and CastWValid then
			self:Cast("W", target)
		end
	end
	for _, target in pairs(minions.jungleMinions.objects) do
		if ValidTarget(target) and target ~= nil and self.skills.SkillQ.ready and settings.farm.farmqjng and GetDistanceSqr(target) <= self.skills.SkillQ.range * self.skills.SkillQ.range then
			self:Cast("Q", target)
		end
		if ValidTarget(target) and target ~= nil and self.skills.SkillW.ready and settings.farm.farmwjng and CastWValid then
			self:Cast("W", target)
		end
	end
end

--		 ▄▄▄       █    ██ ▄▄▄█████▓ ▒█████         ██▓  ▄████  ███▄    █  ██▓▄▄▄█████▓▓█████ 
--		▒████▄     ██  ▓██▒▓  ██▒ ▓▒▒██▒  ██▒      ▓██▒ ██▒ ▀█▒ ██ ▀█   █ ▓██▒▓  ██▒ ▓▒▓█   ▀ 
--		▒██  ▀█▄  ▓██  ▒██░▒ ▓██░ ▒░▒██░  ██▒      ▒██▒▒██░▄▄▄░▓██  ▀█ ██▒▒██▒▒ ▓██░ ▒░▒███   
--		░██▄▄▄▄██ ▓▓█  ░██░░ ▓██▓ ░ ▒██   ██░      ░██░░▓█  ██▓▓██▒  ▐▌██▒░██░░ ▓██▓ ░ ▒▓█  ▄ 
--		 ▓█   ▓██▒▒▒█████▓   ▒██▒ ░ ░ ████▓▒░      ░██░░▒▓███▀▒▒██░   ▓██░░██░  ▒██▒ ░ ░▒████▒
--		 ▒▒   ▓▒█░░▒▓▒ ▒ ▒   ▒ ░░   ░ ▒░▒░▒░       ░▓   ░▒   ▒ ░ ▒░   ▒ ▒ ░▓    ▒ ░░   ░░ ▒░ ░
--		  ▒   ▒▒ ░░░▒░ ░ ░     ░      ░ ▒ ▒░        ▒ ░  ░   ░ ░ ░░   ░ ▒░ ▒ ░    ░     ░ ░  ░
--		  ░   ▒    ░░░ ░ ░   ░      ░ ░ ░ ▒         ▒ ░░ ░   ░    ░   ░ ░  ▒ ░  ░         ░   
--		      ░  ░   ░                  ░ ░         ░        ░          ░  ░              ░  ░

function Darius:AutoIgnite()
	if igniteFound then
		if myHero:CanUseSpell(self.summonerSpells.ignite) == READY then
			for _, target in pairs(GetEnemyHeroes()) do
				if ValidTarget(target, 600) and target.health <= getDmg('IGNITE', target, myHero) then
					CastSpell(self.summonerSpells.ignite, target)
				end
			end
		end
	end
end

--		  ██████  ██▓███  ▓█████  ██▓     ██▓           ▄████▄   ▄▄▄        ██████ ▄▄▄█████▓ ██▓ ███▄    █   ▄████ 
--		▒██    ▒ ▓██░  ██▒▓█   ▀ ▓██▒    ▓██▒          ▒██▀ ▀█  ▒████▄    ▒██    ▒ ▓  ██▒ ▓▒▓██▒ ██ ▀█   █  ██▒ ▀█▒
--		░ ▓██▄   ▓██░ ██▓▒▒███   ▒██░    ▒██░          ▒▓█    ▄ ▒██  ▀█▄  ░ ▓██▄   ▒ ▓██░ ▒░▒██▒▓██  ▀█ ██▒▒██░▄▄▄░
--		  ▒   ██▒▒██▄█▓▒ ▒▒▓█  ▄ ▒██░    ▒██░          ▒▓▓▄ ▄██▒░██▄▄▄▄██   ▒   ██▒░ ▓██▓ ░ ░██░▓██▒  ▐▌██▒░▓█  ██▓
--		▒██████▒▒▒██▒ ░  ░░▒████▒░██████▒░██████▒      ▒ ▓███▀ ░ ▓█   ▓██▒▒██████▒▒  ▒██▒ ░ ░██░▒██░   ▓██░░▒▓███▀▒
--		▒ ▒▓▒ ▒ ░▒▓▒░ ░  ░░░ ▒░ ░░ ▒░▓  ░░ ▒░▓  ░      ░ ░▒ ▒  ░ ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░  ▒ ░░   ░▓  ░ ▒░   ▒ ▒  ░▒   ▒ 
--		░ ░▒  ░ ░░▒ ░      ░ ░  ░░ ░ ▒  ░░ ░ ▒  ░        ░  ▒     ▒   ▒▒ ░░ ░▒  ░ ░    ░     ▒ ░░ ░░   ░ ▒░  ░   ░ 
--		░  ░  ░  ░░          ░     ░ ░     ░ ░         ░          ░   ▒   ░  ░  ░    ░       ▒ ░   ░   ░ ░ ░ ░   ░ 
--		      ░              ░  ░    ░  ░    ░  ░      ░ ░            ░  ░      ░            ░           ░       ░ 
--		                                               ░ 

function Darius:Cast(spell, target)
	if spell == "Q" and target ~= nil and self.skills.SkillQ.ready then
		CastSpell(_Q, target)
	end
	if spell == "W" and self.skills.SkillW.ready then
		CastSpell(_W)
	end
	if spell == "E" and target ~= nil and self.skills.SkillE.ready then
		CastSpell(_E, target)
	end
	if spell == "R" and target ~= nil and self.skills.SkillR.ready then
		CastSpell(_R, target)
	end
end

--		 ▒█████   ▄▄▄▄   ▄▄▄██▀▀▀▓█████  ▄████▄  ▄▄▄█████▓  ██████ 
--		▒██▒  ██▒▓█████▄   ▒██   ▓█   ▀ ▒██▀ ▀█  ▓  ██▒ ▓▒▒██    ▒ 
--		▒██░  ██▒▒██▒ ▄██  ░██   ▒███   ▒▓█    ▄ ▒ ▓██░ ▒░░ ▓██▄   
--		▒██   ██░▒██░█▀ ▓██▄██▓  ▒▓█  ▄ ▒▓▓▄ ▄██▒░ ▓██▓ ░   ▒   ██▒
--		░ ████▓▒░░▓█  ▀█▓▓███▒   ░▒████▒▒ ▓███▀ ░  ▒██▒ ░ ▒██████▒▒
--		░ ▒░▒░▒░ ░▒▓███▀▒▒▓▒▒░   ░░ ▒░ ░░ ░▒ ▒  ░  ▒ ░░   ▒ ▒▓▒ ▒ ░
--		  ░ ▒ ▒░ ▒░▒   ░ ▒ ░▒░    ░ ░  ░  ░  ▒       ░    ░ ░▒  ░ ░
--		░ ░ ░ ▒   ░    ░ ░ ░ ░      ░   ░          ░      ░  ░  ░  
--		    ░ ░   ░      ░   ░      ░  ░░ ░                     ░  
--		               ░                ░

function OnCreateObj(obj)
	if obj and obj.name:find("Darius_Base_Q_Ring_Windup.troy") then
		channelingQ = true
	end
	if obj.spellOwner == myHero and obj.name:find("missile") then
		Gobj = obj
	end
end

function OnDeleteObj(obj)
	if obj.valid and obj.name:lower():find("darius_Base_hemo_counter") then
		Hemmorrhage[target.networkID] = nil
	end
	if obj.valid and obj.name:find("Darius_Base_Q_Ring_Windup.troy") then
		channelingQ = false
	end
	if (obj.name == "TeleportHomeImproved.troy" or obj.name == "TeleportHome.troy") and GetDistance(myHero, object) < 50 then
		Recalling = false
	end
	if obj.spellOwner == myHero and obj.name and obj.name:find("missile") then
		Gobj = nil
	end
end

function Darius:OnProcessSpell(unit, buff)
	if buff.name == myHero:GetSpellData(_Q).name then
		Qwind = buff.windUpTime
	elseif buff.name == myHero:GetSpellData(_W).name then
		Wwind = buff.windUpTime
	elseif buff.name == myHero:GetSpellData(_E).name then
		Ewind = buff.windUpTime
	elseif buff.name == myHero:GetSpellData(_R).name then
		Rwind = buff.windUpTime
	elseif GetDistance(unit) < 50 then
		AAwind = buff.windUpTime
	end
end

function OnProcessAttack(unit, attack) 
	if unit.isMe and attack ~= nil then
		if attack.name:lower():find("attack") then
			CastWValid = true
			DelayAction(function()
				CastWValid = false
			end, 3)
		end
	end
end 

function OnUpdateBuff(target, buff, stacks)
	if target and buff.name == "dariushemo" then
		Hemmorrhage[target.networkID] = stacks
	end
end

function OnApplyBuff(unit, target, buff)
	if target.isMe and buff.name == "DariusNoxianTacticsONH" then
		Wactive = true
	end
end

function OnRemoveBuff(target, buff)
	if target and buff then
		if buff.name == "dariushemo" then
			Hemmorrhage[target.networkID] = nil
		end
	end
	if target.isMe and buff.name == "DariusNoxianTacticsONH" then
		Wactive = false
	end
end

--		▓█████▄  ██▀███   ▄▄▄       █     █░ ██▓ ███▄    █   ▄████    
--		▒██▀ ██▌▓██ ▒ ██▒▒████▄    ▓█░ █ ░█░▓██▒ ██ ▀█   █  ██▒ ▀█▒   
--		░██   █▌▓██ ░▄█ ▒▒██  ▀█▄  ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒▒██░▄▄▄░   
--		░▓█▄   ▌▒██▀▀█▄  ░██▄▄▄▄██ ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█  ██▓   
--		░▒████▓ ░██▓ ▒██▒ ▓█   ▓██▒░░██▒██▓ ░██░▒██░   ▓██░░▒▓███▀▒   
--		▒▒▓  ▒ ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ░▒   ▒    
--		░ ▒  ▒   ░▒ ░ ▒░  ▒   ▒▒ ░  ▒ ░ ░   ▒ ░░ ░░   ░ ▒░  ░   ░    
--		░ ░  ░   ░░   ░   ░   ▒     ░   ░   ▒ ░   ░   ░ ░ ░ ░   ░    
--		░       ░           ░  ░    ░     ░           ░       ░    
--		░    

class("VisualManager")
function VisualManager:__init()
end
function VisualManager:OnDraw()
	for _, target in pairs(GetEnemyHeroes()) do
		if ValidTarget(target, 15000) then
			if target.visible and not target.dead and settings.draws.executeIndicator then
				currLine = 1
				DrawLineHPBar2(Darius:GetRDmg(target), currLine, "", target)
				DrawLineHPBar(Darius:GetRDmg(target), currLine, " R Damage " .. math.round(Darius:GetRDmg(target)), target)
				currLine = currLine + 1
			end
		end
	end
	if settings.draws.PStack then
		for _, target in pairs(GetEnemyHeroes()) do
			if target.visible and not target.dead and Hemmorrhage[target.networkID] ~= nil and Hemmorrhage[target.networkID] >= 1 then
				local feetdraw = WorldToScreen(D3DXVECTOR3(target.x, target.y, target.z))
				DrawText(tostring(Hemmorrhage[target.networkID] .." Stacks"), settings.draws.SizeP, feetdraw.x, feetdraw.y, ARGB(table.unpack(settings.draws.color.StacksPC)))
			end
		end
	end
	if settings.draws.drawkillable then
		for _, target in pairs(GetEnemyHeroes()) do
			if ValidTarget(target) and target.visible and not target.dead then
				local pos = WorldToScreen(D3DXVECTOR3(target.x, target.y, target.z))
				local target_Text, color = Darius:GetDrawText(target)
				if target_Text ~= nil then
					DrawText(target_Text, 18, pos.x - 40, pos.y - 10, color)
					self:DrawCircle(target.x, target.y, target.z, target.boundingRadius, ARGB(255, 255, 255, 255))
				end
			end
		end
	end
	if settings.draws.ESPEnemy then
		for _, target in pairs(GetEnemyHeroes()) do
			if ValidTarget(target) and not target.dead then
				local ESPEnemy_1_Feet = WorldToScreen(D3DXVECTOR3(target.x - (target.boundingRadius / 1.5), target.y, target.z - (target.boundingRadius / 1.5)))
				local ESPEnemy_2_Feet = WorldToScreen(D3DXVECTOR3(target.x + (target.boundingRadius / 1.5), target.y, target.z - (target.boundingRadius / 1.5)))
				local ESPEnemy_3_Feet = WorldToScreen(D3DXVECTOR3(target.x + (target.boundingRadius / 1.5), target.y, target.z + (target.boundingRadius / 1.5)))
				local ESPEnemy_4_Feet = WorldToScreen(D3DXVECTOR3(target.x - (target.boundingRadius / 1.5), target.y, target.z + (target.boundingRadius / 1.5)))
				local ESPEnemy_1_Head = WorldToScreen(D3DXVECTOR3(target.x - (target.boundingRadius / 1.5), target.y + (target.boundingRadius * 2.5), target.z - (target.boundingRadius / 1.5)))
				local ESPEnemy_2_Head = WorldToScreen(D3DXVECTOR3(target.x + (target.boundingRadius / 1.5), target.y + (target.boundingRadius * 2.5), target.z - (target.boundingRadius / 1.5)))
				local ESPEnemy_3_Head = WorldToScreen(D3DXVECTOR3(target.x + (target.boundingRadius / 1.5), target.y + (target.boundingRadius * 2.5), target.z + (target.boundingRadius / 1.5)))
				local ESPEnemy_4_Head = WorldToScreen(D3DXVECTOR3(target.x - (target.boundingRadius / 1.5), target.y + (target.boundingRadius * 2.5), target.z + (target.boundingRadius / 1.5)))
				if GetDistance(target, myHero) > 740 then
					DrawLine(ESPEnemy_1_Feet.x, ESPEnemy_1_Feet.y, ESPEnemy_2_Feet.x, ESPEnemy_2_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolor)))
					DrawLine(ESPEnemy_2_Feet.x, ESPEnemy_2_Feet.y, ESPEnemy_3_Feet.x, ESPEnemy_3_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolor)))
					DrawLine(ESPEnemy_3_Feet.x, ESPEnemy_3_Feet.y, ESPEnemy_4_Feet.x, ESPEnemy_4_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolor)))
					DrawLine(ESPEnemy_4_Feet.x, ESPEnemy_4_Feet.y, ESPEnemy_1_Feet.x, ESPEnemy_1_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolor)))
					DrawLine(ESPEnemy_1_Head.x, ESPEnemy_1_Head.y, ESPEnemy_2_Head.x, ESPEnemy_2_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolor)))
					DrawLine(ESPEnemy_2_Head.x, ESPEnemy_2_Head.y, ESPEnemy_3_Head.x, ESPEnemy_3_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolor)))
					DrawLine(ESPEnemy_3_Head.x, ESPEnemy_3_Head.y, ESPEnemy_4_Head.x, ESPEnemy_4_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolor)))
					DrawLine(ESPEnemy_4_Head.x, ESPEnemy_4_Head.y, ESPEnemy_1_Head.x, ESPEnemy_1_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolor)))
					DrawLine(ESPEnemy_1_Head.x, ESPEnemy_1_Head.y, ESPEnemy_1_Feet.x, ESPEnemy_1_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolor)))
					DrawLine(ESPEnemy_2_Head.x, ESPEnemy_2_Head.y, ESPEnemy_2_Feet.x, ESPEnemy_2_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolor)))
					DrawLine(ESPEnemy_3_Head.x, ESPEnemy_3_Head.y, ESPEnemy_3_Feet.x, ESPEnemy_3_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolor)))	
					DrawLine(ESPEnemy_4_Head.x, ESPEnemy_4_Head.y, ESPEnemy_4_Feet.x, ESPEnemy_4_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolor)))
				elseif GetDistance(target, myHero) < 740 then
					DrawLine(ESPEnemy_1_Feet.x, ESPEnemy_1_Feet.y, ESPEnemy_2_Feet.x, ESPEnemy_2_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorRange)))
					DrawLine(ESPEnemy_2_Feet.x, ESPEnemy_2_Feet.y, ESPEnemy_3_Feet.x, ESPEnemy_3_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorRange)))
					DrawLine(ESPEnemy_3_Feet.x, ESPEnemy_3_Feet.y, ESPEnemy_4_Feet.x, ESPEnemy_4_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorRange)))
					DrawLine(ESPEnemy_4_Feet.x, ESPEnemy_4_Feet.y, ESPEnemy_1_Feet.x, ESPEnemy_1_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorRange)))
					DrawLine(ESPEnemy_1_Head.x, ESPEnemy_1_Head.y, ESPEnemy_2_Head.x, ESPEnemy_2_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorRange)))
					DrawLine(ESPEnemy_2_Head.x, ESPEnemy_2_Head.y, ESPEnemy_3_Head.x, ESPEnemy_3_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorRange)))
					DrawLine(ESPEnemy_3_Head.x, ESPEnemy_3_Head.y, ESPEnemy_4_Head.x, ESPEnemy_4_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorRange)))
					DrawLine(ESPEnemy_4_Head.x, ESPEnemy_4_Head.y, ESPEnemy_1_Head.x, ESPEnemy_1_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorRange)))
					DrawLine(ESPEnemy_1_Head.x, ESPEnemy_1_Head.y, ESPEnemy_1_Feet.x, ESPEnemy_1_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorRange)))
					DrawLine(ESPEnemy_2_Head.x, ESPEnemy_2_Head.y, ESPEnemy_2_Feet.x, ESPEnemy_2_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorRange)))
					DrawLine(ESPEnemy_3_Head.x, ESPEnemy_3_Head.y, ESPEnemy_3_Feet.x, ESPEnemy_3_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorRange)))
					DrawLine(ESPEnemy_4_Head.x, ESPEnemy_4_Head.y, ESPEnemy_4_Feet.x, ESPEnemy_4_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorRange)))
				elseif self:GetTarget() < 635 then
					DrawLine(ESPEnemy_1_Feet.x, ESPEnemy_1_Feet.y, ESPEnemy_2_Feet.x, ESPEnemy_2_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorTarget)))
					DrawLine(ESPEnemy_2_Feet.x, ESPEnemy_2_Feet.y, ESPEnemy_3_Feet.x, ESPEnemy_3_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorTarget)))
					DrawLine(ESPEnemy_3_Feet.x, ESPEnemy_3_Feet.y, ESPEnemy_4_Feet.x, ESPEnemy_4_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorTarget)))
					DrawLine(ESPEnemy_4_Feet.x, ESPEnemy_4_Feet.y, ESPEnemy_1_Feet.x, ESPEnemy_1_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorTarget)))
					DrawLine(ESPEnemy_1_Head.x, ESPEnemy_1_Head.y, ESPEnemy_2_Head.x, ESPEnemy_2_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorTarget)))
					DrawLine(ESPEnemy_2_Head.x, ESPEnemy_2_Head.y, ESPEnemy_3_Head.x, ESPEnemy_3_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorTarget)))
					DrawLine(ESPEnemy_3_Head.x, ESPEnemy_3_Head.y, ESPEnemy_4_Head.x, ESPEnemy_4_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorTarget)))
					DrawLine(ESPEnemy_4_Head.x, ESPEnemy_4_Head.y, ESPEnemy_1_Head.x, ESPEnemy_1_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorTarget)))
					DrawLine(ESPEnemy_1_Head.x, ESPEnemy_1_Head.y, ESPEnemy_1_Feet.x, ESPEnemy_1_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorTarget)))
					DrawLine(ESPEnemy_2_Head.x, ESPEnemy_2_Head.y, ESPEnemy_2_Feet.x, ESPEnemy_2_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorTarget)))
					DrawLine(ESPEnemy_3_Head.x, ESPEnemy_3_Head.y, ESPEnemy_3_Feet.x, ESPEnemy_3_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorTarget)))
					DrawLine(ESPEnemy_4_Head.x, ESPEnemy_4_Head.y, ESPEnemy_4_Feet.x, ESPEnemy_4_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPEnemycolorTarget)))
				end
			end
		end
	end
	if settings.draws.DrawHitBox and not myHero.dead then
		self:DrawCircle(myHero.x, myHero.y, myHero.z, myHero.boundingRadius, ARGB(table.unpack(settings.draws.color.HitBoxcolor)))
	end
	if settings.draws.ESP and not myHero.dead then
		local ESP_1_Feet = WorldToScreen(D3DXVECTOR3(myHero.x - (myHero.boundingRadius / 1.5), myHero.y, myHero.z - (myHero.boundingRadius / 1.5)))
		local ESP_2_Feet = WorldToScreen(D3DXVECTOR3(myHero.x + (myHero.boundingRadius / 1.5), myHero.y, myHero.z - (myHero.boundingRadius / 1.5)))
		local ESP_3_Feet = WorldToScreen(D3DXVECTOR3(myHero.x + (myHero.boundingRadius / 1.5), myHero.y, myHero.z + (myHero.boundingRadius / 1.5)))
		local ESP_4_Feet = WorldToScreen(D3DXVECTOR3(myHero.x - (myHero.boundingRadius / 1.5), myHero.y, myHero.z + (myHero.boundingRadius / 1.5)))
		local ESP_1_Head = WorldToScreen(D3DXVECTOR3(myHero.x - (myHero.boundingRadius / 1.5), myHero.y + (myHero.boundingRadius * 2.5), myHero.z - (myHero.boundingRadius / 1.5)))
		local ESP_2_Head = WorldToScreen(D3DXVECTOR3(myHero.x + (myHero.boundingRadius / 1.5), myHero.y + (myHero.boundingRadius * 2.5), myHero.z - (myHero.boundingRadius / 1.5)))
		local ESP_3_Head = WorldToScreen(D3DXVECTOR3(myHero.x + (myHero.boundingRadius / 1.5), myHero.y + (myHero.boundingRadius * 2.5), myHero.z + (myHero.boundingRadius / 1.5)))
		local ESP_4_Head = WorldToScreen(D3DXVECTOR3(myHero.x - (myHero.boundingRadius / 1.5), myHero.y + (myHero.boundingRadius * 2.5), myHero.z + (myHero.boundingRadius / 1.5)))
		DrawLine(ESP_1_Feet.x, ESP_1_Feet.y, ESP_2_Feet.x, ESP_2_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
		DrawLine(ESP_2_Feet.x, ESP_2_Feet.y, ESP_3_Feet.x, ESP_3_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
		DrawLine(ESP_3_Feet.x, ESP_3_Feet.y, ESP_4_Feet.x, ESP_4_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
		DrawLine(ESP_4_Feet.x, ESP_4_Feet.y, ESP_1_Feet.x, ESP_1_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
		DrawLine(ESP_1_Head.x, ESP_1_Head.y, ESP_2_Head.x, ESP_2_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
		DrawLine(ESP_2_Head.x, ESP_2_Head.y, ESP_3_Head.x, ESP_3_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
		DrawLine(ESP_3_Head.x, ESP_3_Head.y, ESP_4_Head.x, ESP_4_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
		DrawLine(ESP_4_Head.x, ESP_4_Head.y, ESP_1_Head.x, ESP_1_Head.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
		DrawLine(ESP_1_Head.x, ESP_1_Head.y, ESP_1_Feet.x, ESP_1_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
		DrawLine(ESP_2_Head.x, ESP_2_Head.y, ESP_2_Feet.x, ESP_2_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
		DrawLine(ESP_3_Head.x, ESP_3_Head.y, ESP_3_Feet.x, ESP_3_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))	
		DrawLine(ESP_4_Head.x, ESP_4_Head.y, ESP_4_Feet.x, ESP_4_Feet.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
	end
	if Qup then
		self:DrawCircle(myHero.x, myHero.y, myHero.z, darius.skills.SkillQ.range, ARGB(table.unpack(settings.draws.color.Qcolor)))
		self:DrawCircle(myHero.x, myHero.y, myHero.z, darius.skills.SkillQ.rangeMAX, ARGB(table.unpack(settings.draws.color.Qcolor)))
	end
	if settings.draws.DrawW and Wactive then
		self:DrawCircle(myHero.x, myHero.y, myHero.z, darius.skills.SkillW.range, ARGB(table.unpack(settings.draws.color.Wcolor)))
	end
	if Eup then
		mousePosVec = myHero + (Vector(mousePos) - myHero):normalized() * 420
		Vec1 = Vector(mousePosVec) + (Vector(myHero.pos) - Vector(mousePosVec)):normalized()
		mousePosVec2 = myHero + (Vector(mousePos) - myHero):normalized() * 500
		Vec2 = Vector(mousePosVec2) + (Vector(myHero.pos) - Vector(mousePosVec2)):normalized()
		mousePosVec3 = myHero + (Vector(mousePos) - myHero):normalized() * 465
		Vec3 = Vector(mousePosVec3) + (Vector(myHero.pos) - Vector(mousePosVec3)):normalized()
		mousePosVec4 = myHero + (Vector(mousePos) - myHero):normalized() * 525
		Vec4 = Vector(mousePosVec4) + (Vector(myHero.pos) - Vector(mousePosVec4)):normalized()
		local MyHeroPosition = WorldToScreen(myHero.pos)
		local MyMousePosition = WorldToScreen(mousePos)
		self:DrawLineBoundry(myHero.x, myHero.y, myHero.z, Vec1.x, myHero.y, Vec1.z, Vec2.x, Vec2.z, Vec3.x, Vec3.z, Vec4.x, Vec4.z, 420, 500, 700, 300, 1, ARGB(255, 255, 255, 255))
	end
	if Rup then
		self:DrawCircle(myHero.x, myHero.y, myHero.z, darius.skills.SkillR.range, ARGB(table.unpack(settings.draws.color.Rcolor)))
	end
	if settings.draws.particles and not myHero.dead then
		if Qobj and Gobj then
			local Vec2 = Vector(Gobj.pos) + (Vector(myHero.pos) - Vector(Gobj.pos)):normalized()
			DrawLineBorder3D(Gobj.x, myHero.y, Gobj.z, myHero.x, myHero.y, myHero.z, myHero.boundingRadius * 2, ARGB(255,255,255,255), 1)
			DrawLineBorder3D(Gobj.x, myHero.y, Gobj.z, Vec2.x, myHero.y, Vec2.z, 300, ARGB(255, 0, 255, 0), 3)
		end
		if Robj then
			self:DrawCircle(Robj.x, Robj.y, Robj.z, 400, ARGB(table.unpack(settings.draws.color.Rcirlcecolor)))
		end
		if Gobj and not Qobj then
			self:DrawCircle(Gobj.x, Gobj.y, Gobj.z, 30, ARGB(table.unpack(settings.draws.color.particlescolor)))
		end
	end
	if settings.draws.Stackcircle then
		for _, target in pairs(GetEnemyHeroes()) do
			if target.visible and not target.dead and Hemmorrhage[target.networkID] ~= nil then
				self:DrawCircle(target.x, target.y, target.z, 150, ARGB(table.unpack(settings.draws.color.StackcircleColor)))
			end
		end
	end
	if PopUp1 then
		local w, h1, h2 = (WINDOW_W*0.50), (WINDOW_H*.15), (WINDOW_H*.9)
		DrawLine(w, h1/1.05, w, h2/1.97, w/1.75, ARGB(120, 205, 0, 0 ))
		DrawLine(w, h1, w, h2/2, w/1.8, ARGB(120, 50, 0 , 0 ))
		DrawTextA(tostring("Welcome to Darius Reborn!"), WINDOW_H*.028, (WINDOW_W/2), (WINDOW_H*.18), ARGB(255, 0 , 255, 255),"center","center")
		DrawTextA(tostring("Hold Spacebar to cast Q and Kite"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.210), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("Script will Auto cast E if "), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.225), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("Script will Auto Detect Ignite(?) and will add it to KillSteal setting"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.240), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("Script will cast Ultimate if:"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.255), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("  Target will die from it. (Killsteal)"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.270), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("  You are under % HP"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.285), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("Please make setting adjustments in the Drawings menu to your liking! :)"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.300), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("Don't forget to Upvote this script if you enjoyed it! :)"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.315), ARGB(255, 255, 255, 255))
		DrawTextA(tostring(""), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.330), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("VIP Users unlock:"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.345), ARGB(225, 225, 140, 0))
		DrawTextA(tostring("  Auto Leveler (updated 5.23)"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.360), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("  Advanced Debugger"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.375), ARGB(255, 255, 255, 255))
		local w, h1, h2 = (WINDOW_W*0.49), (WINDOW_H*.70), (WINDOW_H*.75)
		DrawLine(w, h1/1.775, w, h2/1.68, w*.11, ARGB(122, 255, 0, 255))
		DrawRectangleButton(WINDOW_W*0.467, WINDOW_H/2.375, WINDOW_W*.047, WINDOW_H*.041, ARGB(255,0,255,255))
		DrawTextA(tostring("OK"), WINDOW_H*.02, (WINDOW_W/2)*.98, (WINDOW_H/2.375), ARGB(255,0, 0, 0),"center","center")
	end
	if settings.autolvl.DrawText and SpellText ~= nil and drawlevelup then
		local spelldraw = WorldToScreen(D3DXVECTOR3(myHero.x, myHero.y, myHero.z))
		local spelldraw2 = spelldraw.x - 0
		local spelldraw3 = spelldraw.y - 0
		DrawText("Leveled:", 20, spelldraw2 - 30, spelldraw3 + 50, ARGB(255, 255, 255, 255))
		DrawText("" .. SpellText .. "", 30, spelldraw2 - 10, spelldraw3 + 65, ARGB(255, 0, 255, 255))
	end
end

function VisualManager:DrawCircle(x, y, z, radius, color)
	local vPos1 = Vector(x, y, z)
	local vPos2 = Vector(cameraPos.x, cameraPos.y, cameraPos.z)
	local tPos = vPos1 - (vPos1 - vPos2):normalized() * radius
	local sPos = WorldToScreen(D3DXVECTOR3(tPos.x, tPos.y, tPos.z))
	if OnScreen({x = sPos.x, y = sPos.y}, {x = sPos.x, y = sPos.y}) then
		self:DrawCircleNextLvl(x, y, z, radius, settings.draws.LFCwidth, color, settings.draws.LFCsnap)
	end
end

function VisualManager:DrawCircleNextLvl(x, y, z, radius, width, color, chordlength)
	radius = radius or 300
	quality = math.max(8, self:Round(180 / math.deg((math.asin(chordlength / (2 * radius))))))
	quality = 2 * math.pi / quality
	radius = radius * 0.92
	local points = {}
	for theta = 0, 2 * math.pi + quality, quality do
		local c = WorldToScreen(D3DXVECTOR3(x + radius * math.cos(theta), y, z - radius * math.sin(theta)))
		points[#points + 1] = D3DXVECTOR2(c.x, c.y)
	end
	DrawLines2(points, width or 1, color or 4294967295)
end

function VisualManager:Round(number)
	if number >= 0 then
		return math.floor(number + 0.5)
	else
		return math.ceil(number - 0.5)
	end
end

function VisualManager:DrawLineBoundry(x1, y1, z1, x2, y2, z2, x3, z3, x4, z4, x5, z5, size1, size2, size3, size4, width, color)
    local MainVector = {
		x = -(z2 - z1),
		z = x2 - x1
	}
    local Vector2 = {
		x = -(z2 - z1),
		z = x2 - x1
	}
    local Vector3 = {
		x = -(z3 - z1),
		z = x3 - x1
	}
    local Vector4 = {
		x = -(z3 - z1),
		z = x4 - x1
	}
    local Vector5 = {
		x = -(z3 - z1),
		z = x5 - x1
	}
    local len = math.sqrt(MainVector.x ^ 2 + MainVector.z ^ 2)
    MainVector.x = MainVector.x / len * size1 / 2
	MainVector.z = MainVector.z / len * size1 / 2
    Vector2.x = MainVector.x / len * (size1 / 2) / 2
	Vector2.z = MainVector.z / len * (size1 / 2) / 2
	Vector3.x = MainVector.x / len * size2 / 2
	Vector3.z = MainVector.z / len * size2 / 2
	Vector4.x = MainVector.x / len * size3 / 2
	Vector4.z = MainVector.z / len * size3 / 2
	Vector5.x = MainVector.x / len * size4 / 2
	Vector5.z = MainVector.z / len * size4 / 2
	local myHeroVec = myHero + (Vector(mousePos) - myHero):normalized() * myHero.boundingRadius
	local mousePosVec = myHero + (Vector(mousePos) - myHero):normalized() * 535
    local ApproxPoint_1 = WorldToScreen(D3DXVECTOR3(myHeroVec.x + Vector2.x, y2, myHeroVec.z + Vector2.z))
    local ApproxPoint_2 = WorldToScreen(D3DXVECTOR3(myHeroVec.x - Vector2.x, y2, myHeroVec.z - Vector2.z))
    local ApproxPoint_3 = WorldToScreen(D3DXVECTOR3(x2 - MainVector.x, y2, z2 - MainVector.z))
    local ApproxPoint_4 = WorldToScreen(D3DXVECTOR3(x4 - Vector4.x, y2, z4 - Vector4.z))
    local ApproxPoint_5 = WorldToScreen(D3DXVECTOR3(x3 - Vector3.x, y2, z3 - Vector3.z))
    local ApproxPoint_6 = WorldToScreen(D3DXVECTOR3(x5 - Vector5.x, y2, z5 - Vector5.z))
    local ApproxPoint_7 = WorldToScreen(D3DXVECTOR3(mousePosVec.x, y2, mousePosVec.z))
    local ApproxPoint_8 = WorldToScreen(D3DXVECTOR3(x5 + Vector5.x, y2, z5 + Vector5.z))
    local ApproxPoint_9 = WorldToScreen(D3DXVECTOR3(x3 + Vector3.x, y2, z3 + Vector3.z))
    local ApproxPoint_10 = WorldToScreen(D3DXVECTOR3(x4 + Vector4.x, y2, z4 + Vector4.z))
    local ApproxPoint_11 = WorldToScreen(D3DXVECTOR3(x2 + MainVector.x, y2, z2 + MainVector.z))
	DrawLine(ApproxPoint_1.x, ApproxPoint_1.y, ApproxPoint_2.x, ApproxPoint_2.y, width, color)
	DrawLine(ApproxPoint_2.x, ApproxPoint_2.y, ApproxPoint_3.x, ApproxPoint_3.y, width, color)
	--				Start Cone Curve
	--DrawLine(ApproxPoint_3.x, ApproxPoint_3.y, ApproxPoint_11.x, ApproxPoint_11.y, width, ARGB(255, 255, 0 , 0 ))
	DrawLine(ApproxPoint_3.x, ApproxPoint_3.y, ApproxPoint_4.x, ApproxPoint_4.y, width, color)
	--DrawLine(ApproxPoint_3.x, ApproxPoint_3.y, ApproxPoint_5.x, ApproxPoint_5.y, width, color)
	--DrawLine(ApproxPoint_3.x, ApproxPoint_3.y, ApproxPoint_7.x, ApproxPoint_7.y, width, ARGB(255, 255, 0 , 0 ))
	DrawLine(ApproxPoint_4.x, ApproxPoint_4.y, ApproxPoint_5.x, ApproxPoint_5.y, width, color)
	DrawLine(ApproxPoint_5.x, ApproxPoint_5.y, ApproxPoint_6.x, ApproxPoint_6.y, width, color)
	--DrawLine(ApproxPoint_5.x, ApproxPoint_5.y, ApproxPoint_7.x, ApproxPoint_7.y, width, color)
	DrawLine(ApproxPoint_6.x, ApproxPoint_6.y, ApproxPoint_7.x, ApproxPoint_7.y, width, color)
	DrawLine(ApproxPoint_7.x, ApproxPoint_7.y, ApproxPoint_8.x, ApproxPoint_8.y, width, color)
	--DrawLine(ApproxPoint_7.x, ApproxPoint_7.y, ApproxPoint_9.x, ApproxPoint_9.y, width, color)
	--DrawLine(ApproxPoint_7.x, ApproxPoint_7.y, ApproxPoint_11.x, ApproxPoint_11.y, width, ARGB(255, 255, 0 , 0 ))
	DrawLine(ApproxPoint_8.x, ApproxPoint_8.y, ApproxPoint_9.x, ApproxPoint_9.y, width, color)
	DrawLine(ApproxPoint_9.x, ApproxPoint_9.y, ApproxPoint_10.x, ApproxPoint_10.y, width, color)
	--DrawLine(ApproxPoint_9.x, ApproxPoint_9.y, ApproxPoint_11.x, ApproxPoint_11.y, width, color)
	DrawLine(ApproxPoint_10.x, ApproxPoint_10.y, ApproxPoint_11.x, ApproxPoint_11.y, width, color)
	--				End Cone Curve
	DrawLine(ApproxPoint_11.x, ApproxPoint_11.y, ApproxPoint_1.x, ApproxPoint_1.y, width, color)
end

local floor = math.floor
function DrawRectangleButton(x, y, w, h, color)
    local points = {}
    points[1] = D3DXVECTOR2(floor(x), floor(y))
    points[2] = D3DXVECTOR2(floor(x + w), floor(y))
	local points2 = {}
	points2[1] = D3DXVECTOR2(floor(x), floor(y - h/2))
	points2[2] = D3DXVECTOR2(floor(x + w), floor(y - h/2))
	points2[3] = D3DXVECTOR2(floor(x + w), floor(y + h/2))
	points2[4] = D3DXVECTOR2(floor(x), floor(y + h/2))
	local t = GetCursorPos()
	polygon = Polygon(Point(points2[1].x, points2[1].y), Point(points2[2].x, points2[2].y), Point(points2[3].x, points2[3].y), Point(points2[4].x, points2[4].y))
	if polygon:contains(Point(t.x, t.y)) then
		DrawLines2(points, floor(h), color)
	else
		DrawLines2(points, floor(h), ARGB(255, 63,236, 0 ))
	end
end

function GetHPBarPos(enemy)
	enemy.barData = {PercentageOffset = {x = -0.05, y = 0}}
	local barPos = GetUnitHPBarPos(enemy)
	local barPosOffset = GetUnitHPBarOffset(enemy)
	local barOffset = { x = enemy.barData.PercentageOffset.x, y = enemy.barData.PercentageOffset.y }
	local barPosPercentageOffset = { x = enemy.barData.PercentageOffset.x, y = enemy.barData.PercentageOffset.y }
	local BarPosOffsetX = -50
	local BarPosOffsetY = 46
	local CorrectionY = 39
	local StartHpPos = 31
	barPos.x = math.floor(barPos.x + (barPosOffset.x - 0.5 + barPosPercentageOffset.x) * BarPosOffsetX + StartHpPos)
	barPos.y = math.floor(barPos.y + (barPosOffset.y - 0.5 + barPosPercentageOffset.y) * BarPosOffsetY + CorrectionY)
	local StartPos = Vector(barPos.x , barPos.y, 0)
	local EndPos = Vector(barPos.x + 108 , barPos.y , 0)
	return Vector(StartPos.x, StartPos.y, 0), Vector(EndPos.x, EndPos.y, 0)
end

function DrawLineHPBar(damage, line, text, unit)
	local thedmg = 0
	if damage >= unit.maxHealth then
		thedmg = unit.maxHealth-1
	else
		thedmg=damage
	end
	local StartPos, EndPos = GetHPBarPos(unit)
	local Real_X = StartPos.x+24
	local Offs_X = (Real_X + ((unit.health-thedmg)/unit.maxHealth) * (EndPos.x - StartPos.x - 2))
	if Offs_X < Real_X then Offs_X = Real_X end	
	local mytrans = 350 - math.round(255*((unit.health-thedmg)/unit.maxHealth))
	if mytrans >= 255 then mytrans=254 end
	local my_redpart = math.round(400*((unit.health-thedmg)/unit.maxHealth))
	if my_redpart >= 255 then my_redpart=254 end
	if settings.draws.nameenable then
		DrawLine(Offs_X-150, StartPos.y-(42+(line*15)), Offs_X-150, StartPos.y-2, 2, ARGB(mytrans, my_redpart,255,0))
		DrawText(tostring(text),15,Offs_X-148,StartPos.y-(42+(line*15)), ARGB(mytrans, my_redpart,255,0))
	else
		DrawLine(Offs_X-150, StartPos.y-(30+(line*15)), Offs_X-150, StartPos.y-2, 2, ARGB(mytrans, my_redpart,255,0))
		DrawText(tostring(text),15,Offs_X-148,StartPos.y-(30+(line*15)), ARGB(mytrans, my_redpart,255,0))
	end
end

function DrawLineHPBar2(damage, line, text, unit)
	local thedmg = 0
	if damage >= unit.maxHealth then
		thedmg = unit.maxHealth-1
	else
		thedmg=damage
	end
	local StartPos, EndPos = GetHPBarPos(unit)
	local Real_X = StartPos.x+24
	local Offs_X = (Real_X + ((unit.health-thedmg)/unit.maxHealth) * (EndPos.x - StartPos.x - 2))
	if Offs_X < Real_X then
		Offs_X = Real_X
	end
	DrawLine(Offs_X-150, StartPos.y-(line*15), StartPos.x-20, StartPos.y-(line*15), 10, ARGB(140, 0, 0, 0))
end

--		 ███▄ ▄███▓ ██▓ ███▄    █  ██▓ ▒█████   ███▄    █   ██████ 
--		▓██▒▀█▀ ██▒▓██▒ ██ ▀█   █ ▓██▒▒██▒  ██▒ ██ ▀█   █ ▒██    ▒ 
--		▓██    ▓██░▒██▒▓██  ▀█ ██▒▒██▒▒██░  ██▒▓██  ▀█ ██▒░ ▓██▄   
--		▒██    ▒██ ░██░▓██▒  ▐▌██▒░██░▒██   ██░▓██▒  ▐▌██▒  ▒   ██▒
--		▒██▒   ░██▒░██░▒██░   ▓██░░██░░ ████▓▒░▒██░   ▓██░▒██████▒▒
--		░ ▒░   ░  ░░▓  ░ ▒░   ▒ ▒ ░▓  ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░
--		░  ░      ░ ▒ ░░ ░░   ░ ▒░ ▒ ░  ░ ▒ ▒░ ░ ░░   ░ ▒░░ ░▒  ░ ░
--		░      ░    ▒ ░   ░   ░ ░  ▒ ░░ ░ ░ ▒     ░   ░ ░ ░  ░  ░  
--		       ░    ░           ░  ░      ░ ░           ░       ░

class("Minions")
function Minions:__init()
	self.enemyMinions = minionManager(MINION_ENEMY, 670, player, MINION_SORT_HEALTH_ASC)
	self.allyMinions = minionManager(MINION_ALLY, 670, player, MINION_SORT_HEALTH_ASC)
	self.jungleMinions = minionManager(MINION_JUNGLE, 670, myHero, MINION_SORT_HEALTH_ASC)
	return self
end

function Minions:update()
	self.enemyMinions:update()
	self.jungleMinions:update()
	self.allyMinions:update()
end

function Minions:OnTick()
	self:update()
end

--		 ▄▄▄       █    ██ ▄▄▄█████▓ ▒█████         ██▓    ▓█████ ██▒   █▓▓█████  ██▓    ▓█████  ██▀███  
--		▒████▄     ██  ▓██▒▓  ██▒ ▓▒▒██▒  ██▒      ▓██▒    ▓█   ▀▓██░   █▒▓█   ▀ ▓██▒    ▓█   ▀ ▓██ ▒ ██▒
--		▒██  ▀█▄  ▓██  ▒██░▒ ▓██░ ▒░▒██░  ██▒      ▒██░    ▒███   ▓██  █▒░▒███   ▒██░    ▒███   ▓██ ░▄█ ▒
--		░██▄▄▄▄██ ▓▓█  ░██░░ ▓██▓ ░ ▒██   ██░      ▒██░    ▒▓█  ▄  ▒██ █░░▒▓█  ▄ ▒██░    ▒▓█  ▄ ▒██▀▀█▄  
--		 ▓█   ▓██▒▒▒█████▓   ▒██▒ ░ ░ ████▓▒░      ░██████▒░▒████▒  ▒▀█░  ░▒████▒░██████▒░▒████▒░██▓ ▒██▒
--		 ▒▒   ▓▒█░░▒▓▒ ▒ ▒   ▒ ░░   ░ ▒░▒░▒░       ░ ▒░▓  ░░░ ▒░ ░  ░ ▐░  ░░ ▒░ ░░ ▒░▓  ░░░ ▒░ ░░ ▒▓ ░▒▓░
--		  ▒   ▒▒ ░░░▒░ ░ ░     ░      ░ ▒ ▒░       ░ ░ ▒  ░ ░ ░  ░  ░ ░░   ░ ░  ░░ ░ ▒  ░ ░ ░  ░  ░▒ ░ ▒░
--		  ░   ▒    ░░░ ░ ░   ░      ░ ░ ░ ▒          ░ ░      ░       ░░     ░     ░ ░      ░     ░░   ░ 
--		      ░  ░   ░                  ░ ░            ░  ░   ░  ░     ░     ░  ░    ░  ░   ░  ░   ░     
--		                                                              ░   

function Levelstart()
	if countTable(tolevel) == 0 then
		Levelend()
		return
	end
	levelvariable = table.remove(tolevel, 1)
	spellLevel = myHero:GetSpellData(levelvariable).level
	leveltick = GetTickCount()
	point = true
	latency = GetLatency()
	LevelSpell(levelvariable)
end

function Levelend()
	point = false
	level = level + 1
end

function showLeveledSpell(spelldraw)
	drawlevelup = true
	if myHero:GetSpellData(spelldraw).level == 1 then
		leveltext = "available!"
	else
		leveltext = "at level " .. myHero:GetSpellData(spelldraw).level .. "!"
	end
	if levelvariable == 0 then
		SpellText = "Q"
	elseif levelvariable == 1 then
		SpellText = "W"
	elseif levelvariable == 2 then
		SpellText = "E"
	elseif levelvariable == 3 then
		SpellText = "R"
	end
	local spelldraw2 = " Spell " .. "<font color='#00FFFF'>(" .. SpellText .. ") <font color='#FFFF00'>-</font></font> is now " .. leveltext
	print("<font color='#FF00C8'>[Darius Reborn] <font color='#FFFF00'>-</font><font color='#FFFFFF'>" .. spelldraw2 .. "</font>")
	DelayAction(function()
		drawlevelup = false
	end, settings.autolvl.DrawTextSlider)
end

function Config()
	SkillOrder()
	return countTable(tolevel) == 4 or myHero.level == settings.autolvl.getAllAtLevel
end

function SkillOrder()
	tolevel = {}
	if myHero.level == settings.autolvl.getAllAtLevel then
		local spelldraw = {
			SPELL_1,
			SPELL_2,
			SPELL_3
		}
		local spelldraw2 = false
		for i = 1, 3 do
			if myHero:GetSpellData(spelldraw[i]).level == 0 then
				spelldraw2 = spelldraw[i]
			end
		end
	if spelldraw2 ~= false then
		tolevel[1] = spelldraw2
	end
	else
		tolevel[settings.autolvl.maxQ] = SPELL_1
		tolevel[settings.autolvl.maxW] = SPELL_2
		tolevel[settings.autolvl.maxE] = SPELL_3
		tolevel[settings.autolvl.maxR] = SPELL_4
	end
end

function Error()
	print("<font color='#FF00C8'>[Darius Reborn] </font><font color='#FFFF00'>-</font><font color='#FFFFFF'> There's something wrong with the AutoLeveler! Please configure and check your settings!</font>")
	settings.AutoLevelOn = false
end

function countTable(spelldraw)
	local spelldraw2 = 0
	for spelldraw3, spelldraw4 in pairs(spelldraw) do
		spelldraw2 = spelldraw2 + 1
	end
	return spelldraw2
end

--		▓█████▄ ▓█████  ▄▄▄▄    █    ██   ▄████   ▄████ ▓█████  ██▀███  
--		▒██▀ ██▌▓█   ▀ ▓█████▄  ██  ▓██▒ ██▒ ▀█▒ ██▒ ▀█▒▓█   ▀ ▓██ ▒ ██▒
--		░██   █▌▒███   ▒██▒ ▄██▓██  ▒██░▒██░▄▄▄░▒██░▄▄▄░▒███   ▓██ ░▄█ ▒
--		░▓█▄   ▌▒▓█  ▄ ▒██░█▀  ▓▓█  ░██░░▓█  ██▓░▓█  ██▓▒▓█  ▄ ▒██▀▀█▄  
--		░▒████▓ ░▒████▒░▓█  ▀█▓▒▒█████▓ ░▒▓███▀▒░▒▓███▀▒░▒████▒░██▓ ▒██▒
--		 ▒▒▓  ▒ ░░ ▒░ ░░▒▓███▀▒░▒▓▒ ▒ ▒  ░▒   ▒  ░▒   ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░
--		 ░ ▒  ▒  ░ ░  ░▒░▒   ░ ░░▒░ ░ ░   ░   ░   ░   ░  ░ ░  ░  ░▒ ░ ▒░
--		 ░ ░  ░    ░    ░    ░  ░░░ ░ ░ ░ ░   ░ ░ ░   ░    ░     ░░   ░ 
--		 	░       ░  ░ ░         ░           ░       ░    ░  ░   ░     
--		░                   ░  

function OnTick()
	if VIP_USER and settings.misc.Debug then
		if myHero:CanUseSpell(_Q) == READY then
			readytextQ = true
		else
			readytextQ = false
		end
		if myHero:CanUseSpell(_W) == READY then
			readytextW = true
		else
			readytextW = false
		end
		if myHero:CanUseSpell(_E) == READY then
			readytextE = true
		else
			readytextE = false
		end
		if myHero:CanUseSpell(_R) == READY then
			readytextR = true
		else
			readytextR = false
		end
	end
end

function OnDraw()
	if VIP_USER and settings.misc.Debug then
		local totalAP = myHero.ap * (1 + myHero.apPercent)
		local World_x1 = 40 + settings.misc.xAxis
		local World_x2 = 220 + settings.misc.xAxis
		local World_x3 = 410 + settings.misc.xAxis
		local World_x4 = 580 + settings.misc.xAxis
		local World_y1 = 60 + settings.misc.yAxis
		DrawText("" .. myHero.charName .. "", 35, World_x1 - 20, World_y1 - 50, ARGB(255, 0, 255, 255))
		DrawText("Level: " .. myHero.level, 18, World_x1 + 105, World_y1 - 30, ARGB(255, 255, 255, 255))
		DrawText("Attack Damage: (       +       ) = ", 15, World_x1 - 20, World_y1 - 10, ARGB(255, 255, 255, 255))
		DrawText("" .. math.round(myHero.addDamage), 15, World_x1 + 77, World_y1 - 10, ARGB(255, 0,255, 255))
		DrawText("" .. math.round(myHero.damage), 15, World_x1 + 108, World_y1 - 10, ARGB(255, 0, 255, 0))
		DrawText("" .. math.round(myHero.totalDamage), 15, World_x1 + 144, World_y1 - 10, ARGB(255, 255, 0, 255))
		DrawText("Ability Power: (   +       ) = ", 15, World_x1 - 20, World_y1 + 5, ARGB(255, 255, 255, 255))
		DrawText("0", 15, World_x1 + 65, World_y1 + 5, ARGB(255, 0,255, 255))
		DrawText("" .. math.round(totalAP), 15, World_x1 + 82, World_y1 + 5, ARGB(255, 0, 255, 0))
		DrawText("" .. math.round(totalAP), 15, World_x1 + 118, World_y1 + 5, ARGB(255, 255, 0, 255))

		-- [Q Debug]
		DrawText("Q Debug", 15, World_x1, World_y1 + 20, ARGB(255, 0, 255, 255))
		DrawText("Name:", 15, World_x1, World_y1 + 35, ARGB(255, 255, 255, 255))
		DrawText("" .. myHero:GetSpellData(_Q).name, 15, World_x1 + 40, World_y1 + 35, ARGB(255, 255, 255, 0))
		DrawText("Ready:", 15, World_x1, World_y1 + 50, ARGB(255, 255, 255, 255))
		if readytextQ then
			DrawText("true", 15, World_x1 + 43, World_y1 + 50, ARGB(255, 0, 255, 0))
		elseif channelingQ then
			DrawText("Channeling", 15, World_x1 + 43, World_y1 + 50, ARGB(255, 0, 255, 255))
		elseif readytextQ == false then
			DrawText("false", 15, World_x1 + 43, World_y1 + 50, ARGB(255, 255, 0, 0))
		end
		DrawText("Level:", 15, World_x1, World_y1 + 65, ARGB(255, 255, 255, 255))
		if myHero:GetSpellData(_Q).level < 5 then
			DrawText("" .. myHero:GetSpellData(_Q).level, 15, World_x1 + 38, World_y1 + 65, ARGB(255, 255, 175, 0))
		elseif myHero:GetSpellData(_Q).level >= 5 then
			DrawText("MAX", 15, World_x1 + 38, World_y1 + 65, ARGB(255, 0, 255, 0))
		end
		DrawText("Delay:", 15, World_x1, World_y1 + 80, ARGB(255, 255, 255, 255))
		DrawText("" .. Qwind, 15, World_x1 + 38, World_y1 + 80, ARGB(255, 255, 175, 0))
		DrawText("Bonus Damage:", 15, World_x1, World_y1 + 95, ARGB(255, 255, 255, 255))
		if myHero:GetSpellData(_Q).level >= 1 then
			local Qtotal = { 1, 1.1, 1.2, 1.3, 1.4}
			DrawText("" .. math.round(myHero.totalDamage * Qtotal[myHero:GetSpellData(_Q).level]), 15, World_x1 + 92, World_y1 + 95, ARGB(255, 0, 255, 0))
		end
		DrawText("Bonus Heal (per champ):", 15, World_x1, World_y1 + 110, ARGB(255, 255, 255, 255))
		DrawText("" .. math.round((myHero.maxHealth - myHero.health) * 0.12), 15, World_x1 + 143, World_y1 + 110, ARGB(255, 0, 255, 0))

		-- [W Debug]
		DrawText("W Debug", 15, World_x2, World_y1 + 20, ARGB(255, 0, 255, 255))
		DrawText("Name:", 15, World_x2, World_y1 + 35, ARGB(255, 255, 255, 255))
		DrawText("" .. myHero:GetSpellData(_W).name, 15, World_x2 + 40, World_y1 + 35, ARGB(255, 255, 255, 0))
		DrawText("Ready:", 15, World_x2, World_y1 + 50, ARGB(255, 255, 255, 255))
		if readytextW then
			DrawText("true", 15, World_x2 + 43, World_y1 + 50, ARGB(255, 0, 255, 0))
		elseif readytextW == false then
			DrawText("false", 15, World_x2 + 43, World_y1 + 50, ARGB(255, 255, 0, 0))
		end
		DrawText("Level:", 15, World_x2, World_y1 + 65, ARGB(255, 255, 255, 255))
		if myHero:GetSpellData(_W).level < 5 then
			DrawText("" .. myHero:GetSpellData(_W).level, 15, World_x2 + 38, World_y1 + 65, ARGB(255, 255, 175, 0))
		elseif myHero:GetSpellData(_W).level >= 5 then
			DrawText("MAX", 15, World_x2 + 38, World_y1 + 65, ARGB(255, 0, 255, 0))
		end
		DrawText("Delay:", 15, World_x2, World_y1 + 80, ARGB(255, 255, 255, 255))
		DrawText("" .. Wwind, 15, World_x2 + 38, World_y1 + 80, ARGB(255, 255, 175, 0))
		DrawText("Bonus Damage:", 15, World_x2, World_y1 + 95, ARGB(255, 255, 255, 255))
		DrawText("" .. math.round(myHero.totalDamage * 1.4), 15, World_x2 + 92, World_y1 + 95, ARGB(255, 0, 255, 0))

		-- [E Debug]
		DrawText("E Debug", 15, World_x3, World_y1 + 20, ARGB(255, 0, 255, 255))
		DrawText("Name:", 15, World_x3, World_y1 + 35, ARGB(255, 255, 255, 255))
		DrawText("" .. myHero:GetSpellData(_E).name, 15, World_x3 + 40, World_y1 + 35, ARGB(255, 255, 255, 0))
		DrawText("Ready:", 15, World_x3, World_y1 + 50, ARGB(255, 255, 255, 255))
		if readytextE then
			DrawText("true", 15, World_x3 + 43, World_y1 + 50, ARGB(255, 0, 255, 0))
		elseif readytextE == false then
			DrawText("false", 15, World_x3 + 43, World_y1 + 50, ARGB(255, 255, 0, 0))
		end
		DrawText("Level:", 15, World_x3, World_y1 + 65, ARGB(255, 255, 255, 255))
		if myHero:GetSpellData(_E).level < 5 then
			DrawText("" .. myHero:GetSpellData(_E).level, 15, World_x3 + 38, World_y1 + 65, ARGB(255, 255, 175, 0))
		elseif myHero:GetSpellData(_E).level >= 5 then
			DrawText("MAX", 15, World_x3 + 38, World_y1 + 65, ARGB(255, 0, 255, 0))
		end
		DrawText("Delay:", 15, World_x3, World_y1 + 80, ARGB(255, 255, 255, 255))
		DrawText("" .. Ewind, 15, World_x3 + 38, World_y1 + 80, ARGB(255, 255, 175, 0))

		-- [R Debug]
		DrawText("R Debug", 15, World_x4, World_y1 + 20, ARGB(255, 0, 255, 255))
		DrawText("Name:", 15, World_x4, World_y1 + 35, ARGB(255, 255, 255, 255))
		DrawText("" .. myHero:GetSpellData(_R).name, 15, World_x4 + 40, World_y1 + 35, ARGB(255, 255, 255, 0))
		DrawText("Ready:", 15, World_x4, World_y1 + 50, ARGB(255, 255, 255, 255))
		if readytextR then
			DrawText("true", 15, World_x4 + 43, World_y1 + 50, ARGB(255, 0, 255, 0))
		elseif readytextR == false then
			DrawText("false", 15, World_x4 + 43, World_y1 + 50, ARGB(255, 255, 0, 0))
		end
		DrawText("Level:", 15, World_x4, World_y1 + 65, ARGB(255, 255, 255, 255))
		if myHero:GetSpellData(_R).level < 3 then
			DrawText("" .. myHero:GetSpellData(_R).level, 15, World_x4 + 38, World_y1 + 65, ARGB(255, 255, 175, 0))
		elseif myHero:GetSpellData(_R).level >= 3 then
			DrawText("MAX", 15, World_x4 + 38, World_y1 + 65, ARGB(255, 0, 255, 0))
		end
		DrawText("Delay:", 15, World_x4, World_y1 + 80, ARGB(255, 255, 255, 255))
		DrawText("" .. Rwind, 15, World_x4 + 38, World_y1 + 80, ARGB(255, 255, 175, 0))
		DrawText("Stack Count:", 15, World_x4, World_y1 + 95, ARGB(255, 255, 255, 255))
		if not rtext then
			DrawText("nil", 15, World_x4 + 78, World_y1 + 95, ARGB(255, 255, 0, 255))
		end
		local i = 0
		local flag = false
		for _, target in pairs(GetEnemyHeroes()) do
			if target.visible and not target.dead and Hemmorrhage[target.networkID] ~= nil and Hemmorrhage[target.networkID] >= 1 then
				DrawText(tostring(Hemmorrhage[target.networkID] .. ""), 15, World_x4 + 78, World_y1 + 95 + (i*15), ARGB(255, 255, 0, 255))
				DrawText("on " .. target.charName, 15, World_x4 + 88, World_y1 + 95 + (i*15), ARGB(255, 255, 255, 255))
				DrawText("Damage:" , 15, World_x4 + 78, World_y1 + 110 + (i*15), ARGB(255, 255, 255, 255))
				DrawText("" .. math.round(Darius:GetRDmg(target)), 15, World_x4 + 131, World_y1 + 110 + (i*15), ARGB(255, 0, 255, 0))
				rtext = true
				flag = true
				i = i + 2
			end
		end
		if flag == false then
			rtext = false
		end
	end
end
