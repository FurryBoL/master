-- Furry Packets Lib
-- by Furry
-- Version 5.24

_AUTO_UPDATE_FURRY = true -- Set this to false to prevent automatic updates

--			[ ChangeLog ]
--  There is no ChangeLog, this is just a script to keep AutoLeveler and SkinChanger Packets all in one place, so when I need to update them, all I need to do is update this script.
--			[ ChangeLog ]

_GAME_VERSION = string.find(GetGameVersion(), 'Releases/5.23') -- Change this after a patch if you want errors and bugsplats :)
_GAME_VERSION_LEVELER = string.find(GetGameVersion(), 'Releases/5.23') -- Change this after a patch if you want errors and bugsplats :)

local serveradress = "raw.githubusercontent.com"
local scriptadress = "/FurryBoL/master/master"
local LocalVersion = "5.24"
 
 
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
			[_Q] = 0x61,
			[_W] = 0x81,
			[_E] = 0xA1,
			[_R] = 0xC1,
		}
		local p = CLoLPacket(0x0033)
		p.vTable = 0xEECE14
		p:EncodeF(myHero.networkID)
		p:Encode1(0x73)
		for i = 1, 4 do p:Encode1(0xF9) end
		for i = 1, 4 do p:Encode1(0x1E) end
		p:Encode1(offsets[id])
		for i = 1, 4 do p:Encode1(0x99) end
		for i = 1, 4 do p:Encode1(0x00) end
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
		[2] = 0x74,
		[3] = 0xF4,
		[4] = 0xB4,
		[5] = 0x34,
		[6] = 0x54,
		[7] = 0xD4,
		[8] = 0x94,
		[9] = 0x14,
		[10] = 0x84,
		[11] = 0x44,
		[12] = 0xC4,
		[13] = 0x04,
	}
	skinObjectPos = 11
	skinHeader = 0x13
	dispellHeader = 0x13B
	skinH = 0x74
	skinHPos = 11
end

function SendSkinPacket(mObject, skinPB, networkID)
	if (_GAME_VERSION ~= nil) then
		local mP = CLoLPacket(0x13)
		mP.vTable = 0xF4FDE0
		mP:EncodeF(myHero.networkID)
		mP:Encode4(0x00000000)
		mP:Encode1(0x00)
		if (skinPB == nil) then
			mP:Encode4(0x2F2F2F2F)
		else
			mP:Encode1(skinPB)
			for I = 1, 3 do
				mP:Encode1(0x74)
			end
			end
		mP:Encode1(0x75)
		for I = 1, string.len(mObject) do
			mP:Encode1(string.byte(string.sub(mObject, I, I)))
		end
		for I = 1, (16 - string.len(mObject)) do
			mP:Encode1(0x00)
		end
		mP:Encode4(0x00000000)
		mP:Encode4(0x0000000F)
		mP:Encode4(0x00000000)
		mP:Encode1(0x00)
		mP:Hide()
		RecvPacket(mP)
	end
end
