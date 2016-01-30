-- Furry Packets Lib
-- by Furry
-- Version 6.2

_AUTO_UPDATE_FURRY = true -- Set this to false to prevent automatic updates

--			[ ChangeLog ]
--  There is no ChangeLog, this is just a script to keep AutoLeveler and SkinChanger Packets all in one place, so when I need to update them, all I need to do is update this script.
--			[ ChangeLog ]

_GAME_VERSION = string.find(GetGameVersion(), 'Releases/6.2') -- Change this after a patch if you want errors and bugsplats :)
_GAME_VERSION_LEVELER = string.find(GetGameVersion(), 'Releases/6.2') -- Change this after a patch if you want errors and bugsplats :)

local serveradress = "raw.githubusercontent.com"
local scriptadress = "/FurryBoL/master/master"
local LocalVersion = "6.2"

if _AUTO_UPDATE_FURRY or true then
	local ServerVersionDATA = GetWebResult(serveradress , scriptadress.."/Furry_Packets_Lib.version")
	if ServerVersionDATA then
		local ServerVersion = tonumber(ServerVersionDATA)
		if ServerVersion then
			if ServerVersion > tonumber(LocalVersion) then
				print("<font color='#9900FF'>[Furry Packets Lib] </font><font color='#FF0000'>-</font><font color='#00FFFF'> Updating Furry_Packets_Lib, don't press F9</font>")
				DelayAction(DownloadFile, 0, {
					"http://"..serveradress..scriptadress.."/Furry_Packets_Lib.lua",
					LIB_PATH.."\\Furry_Packets_Lib.lua",
					function ()
						print("<font color='#9900FF'>[Furry Packets Lib] </font><font color='#FF0000'>-</font><font color='#00FFFF'> Updated, press 2xF9</font>")
					end
				})
			end
		else
			print("<font color='#9900FF'>[Furry Packets Lib] </font><font color='#FF0000'>-</font><font color='#00FFFF'> An error occured, while updating, please reload</font>")
		end
	else
		print("<font color='#9900FF'>[Furry Packets Lib] </font><font color='#FF0000'>-</font><font color='#00FFFF'> Could not connect to update Server</font>")
	end
end
	
print("<font color='#9900FF'>[Furry Packets Lib] </font><font color='#FF0000'>-</font><font color='#00FFFF'> Loaded!</font>")

if (_GAME_VERSION_LEVELER ~= nil) then
	_G.LevelSpell = function(id)
	local offsets = { 
		[_Q] = 0x41,
		[_W] = 0xFC,
		[_E] = 0x64,
		[_R] = 0xAA,
	}
	local p = CLoLPacket(0x0153)
	p.vTable = 0xFE9264
	p:EncodeF(myHero.networkID)
	p:Encode1(offsets[id])
	for i = 1, 4 do
		p:Encode1(0xF7)
	end
	for i = 1, 4 do
		p:Encode1(0xAF)
	end
	p:Encode1(0x8F)
	for i = 1, 4 do
		p:Encode1(0xA5)
	end
	SendPacket(p)
	end
end

function SkinChanger()
local skinsPB = {}
local skinObjectPos = nil
local skinHeader = nil
local dispellHeader = nil
local skinH = nil
local skinHPos = nil
end

if (_GAME_VERSION ~= nil) then
	skinsPB = {
		[1] = nil,
		[2] = 0xD4,
		[3] = 0xB5,
		[4] = 0xB4,
		[5] = 0x95,
		[6] = 0x94,
		[7] = 0xED,
		[8] = 0xEC,
		[9] = 0xCD,
		[10] = 0xCC,
		[11] = 0xAD,
		[12] = 0xAC,
		[13] = 0x8D,
	}
	skinObjectPos = 37
	skinHeader = 0x0E
	dispellHeader = 0x130
	skinH = 0xD4
	skinHPos = 32
end

function SendSkinPacket(mObject, skinPB, networkID)
	if (_GAME_VERSION ~= nil) then
		local mP = CLoLPacket(skinHeader)
		mP.vTable = 0xFB7464
		mP:EncodeF(myHero.networkID)
		mP:Encode1(0x00)
		for I = 1, string.len(mObject) do
			mP:Encode1(string.byte(string.sub(mObject, I, I)))
		end
		for I = 1, (14 - string.len(mObject)) do
			mP:Encode1(0x00)
		end
		mP:Encode2(0x0000)
		mP:Encode4(0x0000000D)
		mP:Encode4(0x0000000F)
		mP:Encode4(0x00000000)
		mP:Encode2(0x0000)
		if (skinPB == nil) then
			mP:Encode4(0xD5D5D5D5)
		else
			mP:Encode1(skinPB)
			for I = 1, 3 do
				mP:Encode1(skinH)
			end
		end
		mP:Hide()
		RecvPacket(mP)
	end
end
