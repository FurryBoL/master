--		 ██▒   █▓ ██▓    ▄▄▄      ▓█████▄  ██▓ ███▄ ▄███▓ ██▓ ██▀███         ██▀███  ▓█████  ▄▄▄▄    ▒█████   ██▀███   ███▄    █ 
--		▓██░   █▒▓██▒   ▒████▄    ▒██▀ ██▌▓██▒▓██▒▀█▀ ██▒▓██▒▓██ ▒ ██▒      ▓██ ▒ ██▒▓█   ▀ ▓█████▄ ▒██▒  ██▒▓██ ▒ ██▒ ██ ▀█   █ 
--		 ▓██  █▒░▒██░   ▒██  ▀█▄  ░██   █▌▒██▒▓██    ▓██░▒██▒▓██ ░▄█ ▒      ▓██ ░▄█ ▒▒███   ▒██▒ ▄██▒██░  ██▒▓██ ░▄█ ▒▓██  ▀█ ██▒
--		  ▒██ █░░▒██░   ░██▄▄▄▄██ ░▓█▄   ▌░██░▒██    ▒██ ░██░▒██▀▀█▄        ▒██▀▀█▄  ▒▓█  ▄ ▒██░█▀  ▒██   ██░▒██▀▀█▄  ▓██▒  ▐▌██▒
--		   ▒▀█░  ░██████▒▓█   ▓██▒░▒████▓ ░██░▒██▒   ░██▒░██░░██▓ ▒██▒      ░██▓ ▒██▒░▒████▒░▓█  ▀█▓░ ████▓▒░░██▓ ▒██▒▒██░   ▓██░
--		   ░ ▐░  ░ ▒░▓  ░▒▒   ▓▒█░ ▒▒▓  ▒ ░▓  ░ ▒░   ░  ░░▓  ░ ▒▓ ░▒▓░      ░ ▒▓ ░▒▓░░░ ▒░ ░░▒▓███▀▒░ ▒░▒░▒░ ░ ▒▓ ░▒▓░░ ▒░   ▒ ▒ 
--		   ░ ░░  ░ ░ ▒  ░ ▒   ▒▒ ░ ░ ▒  ▒  ▒ ░░  ░      ░ ▒ ░  ░▒ ░ ▒░        ░▒ ░ ▒░ ░ ░  ░▒░▒   ░   ░ ▒ ▒░   ░▒ ░ ▒░░ ░░   ░ ▒░
--		     ░░    ░ ░    ░   ▒    ░ ░  ░  ▒ ░░      ░    ▒ ░  ░░   ░         ░░   ░    ░    ░    ░ ░ ░ ░ ▒    ░░   ░    ░   ░ ░ 
--		      ░      ░  ░     ░  ░   ░     ░         ░    ░     ░              ░        ░  ░ ░          ░ ░     ░              ░ 
--		     ░                     ░                                                              ░

-- by Furry
-- Version 1.0

_AUTO_UPDATE = true -- Set this to false to prevent automatic updates

--			[ ChangeLog ]
--  Check forum:
--  
--			[ ChangeLog ]

if myHero.charName ~= 'Vladimir' then return end
_SCRIPT_VERSION = 1.0
_SCRIPT_VERSION_MENU = "1.0"
_FILE_PATH = SCRIPT_PATH .. GetCurrentEnv().FILE_NAME
_PATCH = "5.23"
_GAME_VERSION = string.find(GetGameVersion(), 'Releases/5.23') -- Change this after a patch if you want errors and bugsplats :)
_GAME_VERSION_LEVELER = string.find(GetGameVersion(), 'Releases/5.23') -- Change this after a patch if you want errors and bugsplats :)

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

--Here:

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
class("Vladimir")
function Vladimir:__init()
	targetsWithR = {}
	self.skills = {
		SkillQ = {
			range = 635,
			ready = false,
		},
		SkillW = {
			range = 150,
			ready = false,
		},
		SkillE = {
			range = 575,
			ready = false,
		},
		SkillR = {
			range = 700,
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
		vladimir:OnTick()
	end)
	AddDrawCallback(function()
		draw:OnDraw()
	end)
end

local Qwind = 0
local Wwind = 0
local Ewind = 0
local Rwind = 0

local SACENABLED = false
local readytextQ = false
local untergetableW = false
local ValidR = false
local readytextW = false
local readytextE = false
local Recalling = false
local noEbuff = true
local ETickCount = 0
local etext = false
local readytextR = false

local igniteFound = false
local flashFound = false

local TargetableSelf = true
local cfgpath = LIB_PATH.."Saves\\Vladimir_Reborn_2.cfg"
local level, tolevel, point, leveltick, levelvariable, spellLevel, latency
local enable = false
local drawlevelup = false
local leveltext = ""

function CurrentTimeInMillis()
	return (os.clock() * 1000);
end
local lastTimeTickCalled = 0

local SafetyItems = {
	ZhonyasHourglass = {
		id = 3157,
		range = nil,
		requireTarget = false,
		slot = nil
	},
	WoogletsWitchcap = {
		id = 3090,
		range = nil,
		requireTarget = false,
		slot = nil
	},
}

ChampionData = {
	["Aatrox"] = {
		charName = "Aatrox",
		skillshots = {
			["AatroxE"] = {
				name = "Blade of Torment",
				spellName = "AatroxE",
				castDelay = 250,
				projectileName = "AatroxBladeofTorment_mis.troy",
				projectileSpeed = 1200,
				range = 1075,
				radius = 75,
				type = "line",
				danger = 1
			},
			["AatroxQ"] = {
				name = "AatroxQ",
				spellName = "AatroxQ",
				castDelay = 250,
				projectileName = "AatroxQ.troy",
				projectileSpeed = 450,
				range = 650,
				radius = 145,
				type = "circular",
				danger = 1
			},
		}
	},
	["Ahri"] = {
		charName = "Ahri",
		skillshots = {
			["AhriOrbofDeception"] = {
				name = "Orb of Deception",
				spellName = "AhriOrbofDeception",
				castDelay = 250,
				projectileName = "Ahri_Orb_mis.troy",
				projectileSpeed = 1750,
				range = 900,
				radius = 100,
				type = "line",
				danger = 0
			},
			["AhriSeduce"] = {
				name = "Charm",
				spellName = "AhriSeduce",
				castDelay = 250,
				projectileName = "Ahri_Charm_mis.troy",
				projectileSpeed = 1600,
				range = 1000,
				radius = 60,
				type = "line",
				danger = 1
			}
		}
	},
	["Akali"] = {
		charName = "Akali",
		skillshots = {
			["AkaliMota"] = {
				name = "Mark of the assassin",
				spellName = "AkaliMota",
				castDelay = 125,
				projectileName = "AkaliMota_mis.troy",
				projectileSpeed = 1300,
				range = 1500,
				radius = 60,
				type = "line",
				danger = 1
			}
		}
	},
	--		Alisar
	["Amumu"] = {
		charName = "Amumu",
		skillshots = {
			["BandageToss"] = {
				name = "Bandage Toss",
				spellName = "BandageToss",
				castDelay = 260,
				projectileName = "Bandage_beam.troy",
				projectileSpeed = 2000,
				range = 1100,
				radius = 80,
				type = "line",
				evasiondanger = true,
				danger = 1
			}
		}
	},
	["Anivia"] = {
		charName = "Anivia",
		skillshots = {
			["FlashFrostSpell"] = {
				name = "Flash Frost",
				spellName = "FlashFrostSpell",
				castDelay = 250,
				projectileName = "cryo_FlashFrost_mis.troy",
				projectileSpeed = 850,
				range = 1100,
				radius = 110,
				type = "line",
				danger = 1
			},
			["FrostBite"] = {
				name = "Frost Bite",
				spellName = "FrostBite",
				castDelay = 250,
				projectileName = "cryo_FrostBite_mis.troy",
				projectileSpeed = 1200,
				range = 1100,
				radius = 110,
				type = "line",
				danger = 1
			},
		}
	},
	["Annie"] = {
		charName = "Annie",
		skillshots = {
			["Disintegrate"] = {
				name = "Disintegrate",
				spellName = "Disintegrate",
				castDelay = 250,
				projectileName = "Disintegrate.troy",
				projectileSpeed = 1500,
				range = 875,
				radius = 140,
				danger = 0
			},
			["Disintegrate"] = {
				name = "Disintegrate",
				spellName = "Disintegrate",
				castDelay = 250,
				projectileName = "Disintegrate.troy",
				projectileSpeed = 1500,
				range = 875,
				radius = 140,
				danger = 1
			}
		}
	},
	["Ashe"] = {
		charName = "Ashe",
		skillshots = {
			["EnchantedCrystalArrow"] = {
				name = "Enchanted Arrow",
				spellName = "EnchantedCrystalArrow",
				castDelay = 250,
				projectileName = "EnchantedCrystalArrow_mis.troy",
				projectileSpeed = 1600,
				range = 25000,
				radius = 130,
				type = "line",
				danger = 1
			},
			["Volley"] = {
				name = "Volley",
				spellName = "Volley",
				range = 1200,
				danger = 1
			},
		}
	},
	--		Azir
	["Bard"] = {
		charName = "Bard",
		skillshots = {
			["BardQ"] = {
				name = "Cosmic Binding",
				spellName = "BardQ",
				castDelay = 250,
				projectileSpeed = 1100,
				range = 850,
				radius = 108,
				type="line",
				danger = 1
			}
		}
	},
	["Blitzcrank"] = {
		charName = "Blitzcrank",
		skillshots = {
			["RocketGrabMissile"] = {
				name = "Rocket Grab",
				spellName = "RocketGrabMissile",
				castDelay = 250,
				projectileName = "FistGrab_mis.troy",
				projectileSpeed = 1800,
				range = 1050,
				radius = 70,
				type = "line",
				danger = 1
			}
		}
	},
	["Brand"] = {
		charName = "Brand",
		skillshots = {
			["BrandBlaze"] = {
				name = "Blaze",
				spellName = "BrandBlaze",
				castDelay = 250,
				projectileName = "BrandBlaze_mis.troy",
				projectileSpeed = 1600,
				range = 1100,
				radius = 80,
				type = "line",
				danger = 1
			},
			["BrandWildfire"] = {
				name = "BrandWildfire",
				spellName = "BrandWildfire",
				castDelay = 250,
				projectileName = "BrandWildfire_mis.troy",
				projectileSpeed = 1000,
				range = 1100,
				radius = 250,
				type = "circular",
				danger = 0
			}
		}
	},
	["Braum"] = {
		charName = "Braum",
		skillshots = {
			["Winters Bite"] = {
				name = "Winters Bite",
				spellName = "BraumQMissile",
				castDelay = 0,
				projectileName = "Braum_Base_Q_mis.troy",
				projectileSpeed = 1700,
				range = 1000,
				radius = 100,
				type = "line",
				danger = 1
			},
			["Glacial Fissure"] = {
				name = "Glacial Fissure",
				spellName = "BraumRWrapper",
				castDelay = 510,
				projectileName = "Braum_Base_R_mis.troy",
				projectileSpeed = 1438,
				range = 1250,
				radius = 100,
				type = "line",
				danger = 1
			}, 
		}
	},
	["Caitlyn"] = {
		charName = "Caitlyn",
		skillshots = {
			["CaitlynPiltoverPeacemaker"] = {
				name = "Piltover Peacemaker",
				spellName = "CaitlynPiltoverPeacemaker",
				castDelay = 625,
				projectileName = "caitlyn_Q_mis.troy",
				projectileSpeed = 2200,
				range = 1300,
				radius = 90,
				type = "line",
				danger = 0
			},
			["CaitlynEntrapment"] = {
				name = "Caitlyn Entrapment",
				spellName = "CaitlynEntrapment",
				castDelay = 150,
				projectileName = "caitlyn_entrapment_mis.troy",
				projectileSpeed = 2000,
				range = 950,
				radius = 80,
				type = "line",
				danger = 1
			},
			["CaitlynAceintheHole"] = {
				name = "Ace in the Hole",
				spellName = "CaitlynAceintheHole",
				range = 3000, 
				danger = 1,
				projectileName = "caitlyn_ult_mis.troy"
			},
		}
	},
	["Cassiopeia"] = {
		charName = "Cassiopeia",
		skillshots = {
			["CassiopeiaNoxiousBlast"] = {
				name = "Noxious Blast",
				spellName = "CassiopeiaNoxiousBlast",
				castDelay = 250,
				projectileName = "CassNoxiousSnakePlane_green.troy",
				projectileSpeed = 500,
				range = 850,
				radius = 130,
				type = "circular",
				danger = 0
			},
		}
	},
	--		ChoGath
	["Corki"] = {
		charName = "Corki",
		skillshots = {
			["MissileBarrage"] = {
				name = "Missile Barrage",
				spellName = "MissileBarrage",
				castDelay = 250,
				projectileName = "corki_MissleBarrage_mis.troy",
				projectileSpeed = 2000,
				range = 1300,
				radius = 40,
				type = "line",
				danger = 0
			},
		}
	},
	--		Darius
	["Diana"] = {
		charName = "Diana",
		skillshots = {
			["DianaArc"] = {
				name = "DianaArc",
				spellName = "DianaArc",
				castDelay = 250,
				projectileName = "Diana_Q_trail.troy",
				projectileSpeed = 1600,
				range = 1000,
				radius = 195,
				type="circular",
				danger = 0
			},
		}
	},
	["Draven"] = {
		charName = "Draven",
		skillshots = {
			["DravenDoubleShot"] = {
				name = "Stand Aside",
				spellName = "DravenDoubleShot",
				castDelay = 250,
				projectileName = "Draven_E_mis.troy",
				projectileSpeed = 1400,
				ange = 1100,
				radius = 130,
				type = "line",
				danger = 1
			},
			["DravenRCast"] = {
				name = "DravenR",
				spellName = "DravenRCast",
				castDelay = 500,
				projectileName = "Draven_R_mis!.troy",
				rojectileSpeed = 2000,
				range = 25000,
				radius = 160,
				type = "line",
				danger = 0
			},
		}
	},
	["DrMundo"] = {
		charName = "DrMundo",
		skillshots = {
			["InfectedCleaverMissile"] = {
				name = "Infected Cleaver",
				spellName = "InfectedCleaverMissile",
				castDelay = 250,
				projectileName = "dr_mundo_infected_cleaver_mis.troy",
				projectileSpeed = 2000,
				range = 1050,
				radius = 75,
				type = "line",
				danger = 1
			},
		}
	},
	--		Ekko
	["Elise"] = {
		charName = "Elise",
		skillshots = {
			["EliseHumanE"] = {
				name = "Cocoon",
				spellName = "EliseHumanE",
				castDelay = 250,
				projectileName = "Elise_human_E_mis.troy",
				projectileSpeed = 1450,
				range = 1100,
				radius = 70,
				type = "line",
				danger = 1
			}
		}
	},
	--		Evelynn
	["Ezreal"] = {
		charName = "Ezreal",
		skillshots = {
			["EzrealMysticShot"] = {
				name = "Mystic Shot",
				spellName = "EzrealMysticShot",
				castDelay = 250,
				projectileName = "Ezreal_mysticshot_mis.troy",
				projectileSpeed = 2000,
				range = 1200,
				radius = 80,
				type = "line",
				danger = 0
			},
			["EzrealEssenceFlux"] = {
				name = "Essence Flux",
				spellName = "EzrealEssenceFlux",
				castDelay = 250,
				projectileName = "Ezreal_essenceflux_mis.troy",
				projectileSpeed = 1500,
				range = 1050,
				radius = 80,
				type = "line",
				danger = 0
			},
			["EzrealMysticShotPulse"] = {
				name = "MysticShot Pulse",
				spellName = "EzrealMysticShotPulse",
				castDelay = 250,
				projectileName = "Ezreal_mysticshot_mis.troy",
				projectileSpeed = 2000,
				range = 1200,
				radius = 80,
				type = "line",
				danger = 0
			},
			["EzrealTrueshotBarrage"] = {
				name = "Trueshot Barrage",
				spellName = "EzrealTrueshotBarrage",
				castDelay = 1000,
				projectileName = "Ezreal_TrueShot_mis.troy",
				projectileSpeed = 2000,
				range = 20000,
				radius = 160,
				type = "line",
				danger = 0
			},
		}
	},
	["FiddleSticks"] = {
		charName = "FiddleSticks",
		skillshots = {
			["FiddlesticksDarkWind"] = {
				name = "DarkWind",
				spellName="FiddlesticksDarkWind",
				danger = 0,
				range=750
			},
		}
	},
	--		Fiora
	["Fizz"] = {
		charName = "Fizz",
		skillshots = {
			["FizzMarinerDoom"] = {
				name = "Fizz ULT",
				spellName = "FizzMarinerDoom",
				castDelay = 250,
				projectileName = "Fizz_UltimateMissile.troy",
				projectileSpeed = 1350,
				range = 1275,
				radius = 80,
				type = "line",
				danger = 1
			},
		}
	},
	["Galio"] = {
		charName = "Galio",
		skillshots = {
			["GalioResoluteSmite"] = {
				name = "Resolute smite",
				spellName = "GalioResoluteSmite",
				castDelay = 250,
				projectileName = "galio_concussiveBlast_mis.troy",
				projectileSpeed = 850,
				range = 2000,
				radius = 200,
				type = "circular",
				danger = 1
			},
			["GalioRighteousGust"] = {
				name = "Righteous gust",
				spellName = "GalioRighteousGust",
				castDelay = 0.5,
				projectileName = "galio_windTunnel_mis_02.troy",
				projectileSpeed = 1200,
				range = 1180,
				radius = 140,
				type = "line",
				danger = 1
			}
		}
	},
	--		Gangplank
	--		Garen
	--		Gnarr
	["Gragas"] = {
		charName = "Gragas",
		skillshots = {
			["GragasExplosiveCask"] = {
				name = "Ult",
				spellName = "GragasExplosiveCask",
				blockable = true,
				danger = 0,
				range = 1050
			},
			["GragasBarrelRoll"] = {
				name = "BarrelRoll",
				spellName ="GragasBarrelRoll",
				blockable = true,
				danger = 0,
				range = 950
			},
			["Barrel Roll"] = {
				name = "Barrel Roll",
				spellName = "GragasBarrelRoll",
				castDelay = 250,
				projectileName = "gragas_barrelroll_mis.troy",
				projectileSpeed = 1000,
				range = 1115,
				radius = 180,
				type = "circular",
				danger = 0
			},
			["Barrel Roll Missile"] = {
				name = "Barrel Roll Missile",
				spellName = "GragasBarrelRollMissile",
				castDelay = 0,
				projectileName = "gragas_barrelroll_mis.troy",
				projectileSpeed = 1000,
				range = 1115,
				radius = 180,
				type = "circular",
				danger = 0
			},
		}
	},
	--		Graves
	--		Hecarim
	["Heimerdinger"] = {
		charName = "Heimerdinger",
		skillshots = {
			["HeimerdingerW"] = {
				name = "HeimerdingerW",
				spellName = "HeimerdingerW",
				castDelay = 250,
				projectileName = "Heimerdinger_Base_w_Mis.troy",
				projectileSpeed = 1846,
				range = 1230,
				radius = 80,
				type = "line",
				blockable = true,
				danger = 0
			},
			["HeimerdingerW"] = {
				name = "HeimerdingerW",
				spellName = "HeimerdingerW",
				castDelay = 260,
				projectileName = "Heimerdinger_Base_W_Mis_Ult.troy",
				projectileSpeed = 1846,
				range = 1230,
				radius = 80,
				type = "line",
				blockable = true,
				danger = 0
			},		
			["Storm Grenade"] = {
				name = "Storm Grenade",
				spellName = "StormGrenade",
				castDelay = 250,
				projectileName = "Heimerdinger_Base_E_Mis.troy",
				projectileSpeed = 2500,
				range = 970,
				radius = 80,
				type = "circular",
				blockable = true,
				danger = 1
			},
			["Storm Grenade"] = {
				name = "Storm Grenade",
				spellName = "StormGrenade",
				castDelay = 250,
				projectileName = "Heimerdinger_Base_E_Mis_Ult.troy",
				projectileSpeed = 2500,
				range = 970,
				radius = 80,
				type = "circular",
				blockable = true,
				danger = 1
			},		
		}
	},
	--		Illaoi
	--		Irelia is my next script.
	["Janna"] = {
		charName = "Janna",
		skillshots = {
			["HowlingGale"] = {
				name = "HowlingGale",
				spellName = "HowlingGale",
				castDelay = 250,
				projectileName = "HowlingGale_mis.troy",
				projectileSpeed = 1200,
				range = 1500,
				radius = 140,
				danger = 1
			}
		}
	},
	--		JarvanIV
	--		Jax
	["Jayce"] = {
		charName = "Jayce",
		skillshots = {
			["jayceshockblast"] = {
				name = "jayceshockblast",
				spellName = "jayceshockblast",
				castDelay = 250,
				projectileName = "JayceOrbLightning.troy",
				projectileSpeed = 1450,
				range = 1050,
				radius = 70,
				type = "line",
				danger = 0
			},
			["Q2"] = {
				name = "Q2",
				spellName = "JayceShockBlast",
				castDelay = 250,
				projectileName = "JayceOrbLightningCharged.troy",
				projectileSpeed = 2350,
				ange = 1600,
				radius = 70,
				type = "line",
				danger = 0
			},
		}
	},
	["Jinx"] = {
		charName = "Jinx",
		skillshots = {
			["JinxWMissile"] = {
				name = "Zap",
				spellName = "JinxWMissile",
				castDelay = 600,
				projectileName = "Jinx_W_mis.troy",
				projectileSpeed = 3300,
				range = 1450,
				radius = 70,
				type = "line",
				danger = 1
			},
			["JinxRWrapper"] = {
				name = "Super Mega Death Rocket",
				spellName = "JinxRWrapper",
				castDelay = 600 + 900,
				projectileName = "Jinx_R_Mis.troy",
				projectileSpeed = 2500,
				range = 20000,
				radius = 120,
				type = "line",
				danger = 0
			}
		}
	},
	--		Kalista
	["Karma"] = {
		charName = "Karma",
		skillshots = {
			["KarmaQ"] = {
				name = "KarmaQ",
				spellName = "KarmaQ",
				castDelay = 250,
				projectileName = "TEMP_KarmaQMis.troy",
				projectileSpeed = 1700,
				range = 1050,
				radius = 90,
				type = "line",
				danger = 1
			},
		}
	},
	["Karthus"] = {
		charName = "Karthus",
		skillshots = {
			["LayWaste"] = {
				name = "Lay Waste",
				spellName = "LayWaste",
				castDelay = 250,
				projectileName = "LayWaste_point.troy",
				projectileSpeed = 1750,
				range = 875,
				radius = 140,
				type = "circular",
				danger = 0
			}
		}
	},
	["Kassadin"] = {
		charName = "Kassadin",
		skillshots = {
			["NullLance"] = {
				name = "Null Sphere",
				spellName = "NullLance",
				castDelay = 300,
				projectileName = "Null_Lance_mis.troy",
				projectileSpeed = 1400,
				range = 650,
				radius = 1,
				type = "line",
				danger = 1
			},
		}
	},
	["Katarina"] = {
		charName = "Katarina",
		skillshots = {
			["KatarinaQ"] = {
				name = "Bouncing Blades",
				spellName = "KatarinaQ",
				range = 675,
				danger = 1
			},
			["KatarinaR"] = {
				name = "Death Lotus",
				spellName = "KatarinaR",
				range = 550, 
				danger = 1
			},
		}
	},
	["Kayle"] = {
		charName = "Kayle",
		skillshots = {
			["JudicatorReckoning"] = {
				name = "JudicatorReckoning",
				spellName="JudicatorReckoning",
				castDelay = 100,
				projectileName = "Reckoning_mis.troy",
				projectileSpeed = 1500,
				range = 875,
				danger = 1,
				range=650
			},
		}
	},
	["Kennen"] = {
		charName = "Kennen",
		skillshots = {
			["KennenShurikenHurlMissile1"] = {
				name = "Thundering Shuriken",
				spellName = "KennenShurikenHurlMissile1",
				castDelay = 180,
				projectileName = "kennen_ts_mis.troy",
				projectileSpeed = 1700,
				range = 1050,
				radius = 50,
				type = "line",
				danger = 0
			}
		}
	},
	["Khazix"] = {
		charName = "Khazix",
		skillshots = {
			["KhazixW"] = {
				name = "KhazixW",
				spellName = "KhazixW",
				castDelay = 250,
				projectileName = "Khazix_W_mis_enhanced.troy",
				projectileSpeed = 1700,
				range = 1025,
				radius = 70,
				type = "line",
				danger = 0
			},
		}
	},
	--		Kindred
	["KogMaw"] = {
		charName = "KogMaw",
		skillshots = {
			["KogMawQMis"] = {
				name = "KogMawQMis",
				spellName = "KogMawQMis",
				castDelay = 0,
				projectileName = "KogMawSpit_mis.troy",
				projectileSpeed = 1650,
				range = 1000,
				radius = 80,
				type = "line",
				danger = 1
			},
			["KogMawVoidOozeMissile"] = {
				name = "KogMawVoidOozeMissile",
				spellName = "KogMawVoidOozeMissile",
				castDelay = 250,
				projectileName = "KogMawVoidOozeMissile_mis.troy",
				projectileSpeed = 1433,
				range = 1280,
				radius = 150,
				type = "line",
				danger = 1
			},			
			["KogMawLivingArtillery"] = {
				name = "Living Artillery",
				spellName = "KogMawLivingArtillery",
				castDelay = 250,
				projectileName = "KogMawLivingArtillery_mis.troy",
				projectileSpeed = 1050,
				range = 2200,
				radius = 225,
				type = "circular",
				danger = 0
			},
		}
	},
	["Leblanc"] = {
		charName = "Leblanc",
		skillshots = {
			["LeblancChaosOrb"] = {
				name = "Ethereal LeblancChaosOrb",
				spellName = "LeblancChaosOrb",
				castDelay = 250,
				projectileName = "Leblanc_ChaosOrb_mis.troy",
				projectileSpeed = 1600,
				range = 960,
				radius = 70,
				danger = 1
			},
			["LeblancChaosOrbM"] = {
				name = "Ethereal LeblancChaosOrbM",
				spellName = "LeblancChaosOrbM",
				castDelay = 250,
				projectileName = "Leblanc_ChaosOrb_mis_ult.troy",
				projectileSpeed = 1600,
				range = 960,
				radius = 70,
				danger = 1
			},
			["LeblancSoulShackle"] = {
				name = "Ethereal Chains",
				spellName = "LeblancSoulShackle",
				castDelay = 250,
				projectileName = "leBlanc_shackle_mis.troy",
				projectileSpeed = 1600,
				range = 960,
				radius = 70,
				type = "line",
				danger = 1
			},
			["LeblancSoulShackleM"] = {
				name = "Ethereal Chains R",
				spellName = "LeblancSoulShackleM",
				castDelay = 250,
				projectileName = "leBlanc_shackle_mis_ult.troy",
				projectileSpeed = 1600,
				range = 960,
				radius = 70,
				type = "line",
				danger = 1
			},
			["LeblancMimic"] = {
				name = "LeblancMimic",
				spellName="LeblancMimic",
				blockable="true",
				danger = 0,
				range=650
			}
		}
	},
	["LeeSin"] = {
		charName = "LeeSin",
		skillshots = {
			["BlindMonkQOne"] = {
				name = "Sonic Wave",
				spellName = "BlindMonkQOne",
				castDelay = 218,
				projectileName = "blindMonk_Q_mis_01.troy",
				projectileSpeed = 1844,
				range = 1100,
				radius = 60+10,
				type = "line",
				danger = 1
			}
		}
	},
	["Leona"] = {
		charName = "Leona",
		skillshots = {
			["LeonaZenithBlade"] = {
				name = "Zenith Blade",
				spellName = "LeonaZenithBlade",
				castDelay = 250,
				projectileName = "Leona_ZenithBlade_mis.troy",
				projectileSpeed = 2000,
				range = 900,
				radius = 100,
				type = "line",
				danger = 1
			},
			["LeonaSolarFlare"] = {
				name = "Solar Flare",
				spellName = "LeonaSolarFlare",
				castDelay = 250,
				projectileName = "Leona_SolarFlare_cas.troy",
				projectileSpeed = 650 + 350,
				range = 1200,
				radius = 300,
				type = "circular",
				danger = 1
			}
		}
	},
	["Lissandra"] = {
		charName = "Lissandra",
		skillshots = {
			["LissandraQMissile"] = {
				name = "LissandraQMissile",
				spellName = "LissandraQMissile",
				castDelay = 250,
				projectileName = "Lissandra_Q_mis.troy",
				projectileSpeed = 2160,
				range = 1300,
				radius = 80,
				type = "line",
				danger = 1
			},
			["LissandraEMissile"] = {
				name = "LissandraEMissile",
				spellName = "LissandraEMissile",
				castDelay = 250,
				projectileName = "Lissandra_E_mis.troy",
				projectileSpeed = 850,
				range = 1000,
				radius = 275,
				type = "line",
				danger = 1
			},
			["LissandraW"] = {
				name = "LissandraW",
				spellName = "LissandraW",
				castDelay = 10,
				projectileName = "Zyra_Dummy_Controller.troy",
				projectileSpeed = 3850,
				range = 430,
				radius = 275,
				type = "line",
				danger = 1
			},		
		}
	},
	["Lucian"] = {
		charName = "Lucian",
		skillshots = {
			["LucianQ"] = {
				name = "LucianQ",
				spellName = "LucianQ",
				castDelay = 350,
				projectileName = "Lucian_Q_laser.troy",
				projectileSpeed = math.huge,
				range = 570*2,
				radius = 65,
				type = "line",
				danger = 0
			},
			["LucianW"] = {
				name = "LucianW",
				spellName = "LucianW",
				castDelay = 300,
				projectileName = "Lucian_W_mis.troy",
				projectileSpeed = 1600,
				range = 1000,
				radius = 80,
				type = "line",
				danger = 0
			},
		}
	},
	["Lulu"] = {
		charName = "Lulu",
		skillshots = {
			["LuluQ"] = {
				name = "LuluQ",
				spellName = "LuluQ",
				castDelay = 250,
				projectileName = "Lulu_Q_Mis.troy",
				projectileSpeed = 1450,
				range = 1000,
				radius = 50,
				type = "line",
				danger = 1
			}
		}
	},
	["Lux"] = {
		charName = "Lux",
		skillshots = {
			["LuxLightBinding"] = {
				name = "Light Binding",
				spellName = "LuxLightBinding",
				castDelay = 250,
				projectileName = "LuxLightBinding_mis.troy",
				projectileSpeed = 1200,
				range = 1300,
				radius = 80,
				type = "line",
				danger = 1
			},
			["LuxLightStrikeKugel"] = {
				name = "Lucent Singularity",
				spellName = "LuxLightStrikeKugel",
				castDelay = 250,
				projectileName = "LuxLightstrike_mis.troy",
				projectileSpeed = 1400,
				range = 1100,
				radius = 275,
				type = "circular", 
				danger = 0
			},
			["LuxMaliceCannon"] = {
				name = "Final Spark",
				spellName = "LuxMaliceCannon",
				castDelay = 1375,
				projectileName = "Enrageweapon_buf_02.troy",
				projectileSpeed = math.huge,
				range = 3500,
				radius = 190,
				type = "line",
				danger = 1
			},
		}
	},
	["Malphite"] = {
		charName = "Malphite",
		skillshots = {
			["SeismicShard"] = {
				name = "SeismicShard",
				spellName = "SeismicShard",
				castDelay = 250,
				projectileName = "SeismicShard_mis.troy",
				projectileSpeed = 1500,
				range = 1500,
				radius = 140,
				danger = 1
			}
		}
	},
	--		Malzahar
	--		Maokai
	--		MasterYi
	["MissFortune"] = {
		charName = "MissFortune",
		skillshots = {
			["MissFortuneScattershot"] = {
				name = "Scattershot",
				spellName = "MissFortuneScattershot",
				castDelay = 250,
				projectileName = "",
				projectileSpeed = 1400,
				range = 800,
				radius = 200,
				type = "circular",
				danger = 0
			},
			["MissFortuneBulletTime"] = {
				name = "Bullettime",
				spellName = "MissFortuneBulletTime",
				castDelay = 250,
				projectileName = "",
				projectileSpeed = 1400,
				range = 1400,
				radius = 200,
				type = "line",
				danger = 0
			}
		}
	},
	--		Monkeyking
	--		Mordekaiser
	["Morgana"] = {
		charName = "Morgana",
		skillshots = {
			["DarkBindingMissile"] = {
				name = "Dark Binding",
				spellName = "DarkBindingMissile",
				castDelay = 250,
				projectileName = "DarkBinding_mis.troy",
				projectileSpeed = 1200,
				range = 1300,
				radius = 90,
				type = "line",
				danger = 1
			},
			["TormentedSoil"] = {
				name = "Tormented Soil",
				spellName = "TormentedSoil",
				castDelay = 250,
				projectileName = "",
				projectileSpeed = 1200,
				range = 900,
				radius = 300,
				type = "circular",
				danger = 1
			},
		}
	},
	["Nami"] = {
		charName = "Nami",
		skillshots = {
			["NamiQ"] = {
				name = "NamiQ",
				spellName = "NamiQ",
				castDelay = 250,
				projectileName = "Nami_Q_mis.troy",
				projectileSpeed = 800,
				range = 850,
				radius = 225,
				type="circular",
				danger = 1
			},
			["NamiRMissile"] = {
				name = "NamiRMissile",
				spellName = "NamiRMissile",
				castDelay = 484,
				projectileName = "Nami_R_Mis.troy",
				projectileSpeed = 846,
				range = 2735,
				radius = 210,
				type = "line",
				danger = 1
			},
		}
	},
	--		Nasus
	["Nautilus"] = {
		charName = "Nautilus",
		skillshots = {
			["NautilusAnchorDrag"] = {
				name = "Dredge Line",
				spellName = "NautilusAnchorDrag",
				castDelay = 250,
				projectileName = "Nautilus_Q_mis.troy",
				projectileSpeed = 2000,
				range = 1080,
				radius = 80,
				type = "line",
				danger = 1
			},
		}
	},
	["Nidalee"] = {
		charName = "Nidalee",
		skillshots = {
			["JavelinToss"] = {
				name = "Javelin Toss",
				spellName = "JavelinToss",
				castDelay = 125,
				projectileName = "nidalee_javelinToss_mis.troy",
				projectileSpeed = 1300,
				range = 1500,
				radius = 60,
				type = "line",
				danger = 1
			}
		}
	},
	["Nocturne"] = {
		charName = "Nocturne",
		skillshots = {
			["NocturneDuskbringer"] = {
				name = "NocturneDuskbringer",
				spellName = "NocturneDuskbringer",
				castDelay = 250,
				projectileName = "NocturneDuskbringer_mis.troy",
				projectileSpeed = 1400,
				range = 1125,
				radius = 60,
				type = "line",
				danger = 0
			},
		}
	},
	["Nunu"] = {
		charName = "Nunu",
		skillshots = {
			["IceBlast"] = {
				name = "Ice Blast",
				spellName = "IceBlast",
				blockable = true,
				danger = 1,
				range = 550
			},
		}
	},
	["Olaf"] = {
		charName = "Olaf",
		skillshots = {
			["OlafAxeThrowCast"] = {
				name = "Undertow",
				spellName = "OlafAxeThrowCast",
				castDelay = 265,
				projectileName = "olaf_axe_mis.troy",
				projectileSpeed = 1600,
				range = 1000,
				radius = 90,
				type = "line",
				danger = 1
			}
		}
	},
	--		Orianna
	["Pantheon"] = {
		charName = "Pantheon",
		skillshots = {
			["Pantheon_Throw"] = {
				name = "Pantheon_Throw",
				spellName = "Pantheon_Throw",
				castDelay = 250,
				projectileName = "pantheon_spear_mis.troy",
				projectileSpeed = 1500,
				range = 1500,
				radius = 140,
				danger = 1
			}
		}
	},
	["Quinn"] = {
		charName = "Quinn",
		skillshots = {
			["QuinnQ"] = {
				name = "QuinnQ",
				spellName = "QuinnQ",
				castDelay = 250,
				projectileName = "Quinn_Q_missile.troy",
				projectileSpeed = 1550,
				range = 1050,
				radius = 80,
				type = "line",
				danger = 0
			}
		}
	},
	--		Rammus
	--		RekSai
	--		Renekton
	["Rengar"] = {
		charName = "Rengar",
		skillshots = {
			["RengarEFinalMAX"] = {
				name = "RengarEFinalMAX",
				spellName = "RengarEFinalMAX",
				castDelay = 250,
				projectileName = "Rengar_Base_E_Max_Mis.troy",
				projectileSpeed = 1500,
				range = 1000,
				radius = 60,
				type = "line",
				danger = 1
			}
		}
	},
	["Riven"] = {
		charName = "Riven",
		skillshots = {
			["rivenizunablade"] = {
				name = "rivenizunablade",
				spellName = "rivenizunablade",
				castDelay = 234,
				projectileName = "Riven_Base_R_Mis_Middle.troy",
				projectileSpeed = 2210,
				range = 1000,
				radius = 180,
				type = "line",
				danger = 1
			}
		}
	},
	["Rumble"] = {
		charName = "Rumble",
		skillshots = {
			["RumbleGrenade"] = {
				name = "RumbleGrenade",
				spellName = "RumbleGrenade",
				castDelay = 250,
				projectileName = "rumble_taze_mis.troy",
				projectileSpeed = 2000,
				range = 950,
				radius = 90,
				type = "line",
				danger = 1
			},
		}
	},
	["Ryze"] = {
		charName = "Ryze",
		skillshots = {
			["Overload"] = {
				name = "Overload",
				spellName = "Overload",
				castDelay = 250,
				projectileName = "Overload_mis.troy",
				projectileSpeed = 1500,
				range = 1500,
				radius = 140,
				danger = 1
			},
			["SpellFlux"] = {
				name = "SpellFlux",
				spellName = "SpellFlux",
				castDelay = 250,
				projectileName = "SpellFlux_mis.troy",
				projectileSpeed = 1500,
				range = 1500,
				radius = 140,
				danger = 1
			}
		}
	},
	["Sejuani"] = {
		charName = "Sejuani",
		skillshots = {
			["SejuaniGlacialPrisonCast"] = {
				name = "SejuaniGlacialPrisonCast",
				spellName = "SejuaniGlacialPrisonCast",
				castDelay = 249,
				projectileName = "Sejuani_R_mis.troy",
				projectileSpeed = 1628,
				range = 1100,
				radius = 250,
				type = "line",
				danger = 1
			}
		}
	},
	--		Shaco
	["Shen"] = {
		charName = "Shen",
		skillshots = {
			["ShenShadowDash"] = {
				name = "ShadowDash",
				spellName = "ShenShadowDash",
				castDelay = 0,
				projectileName = "shen_shadowDash_mis.troy",
				projectileSpeed = 3000,
				range = 575,
				radius = 50,
				type = "line",
				danger = 1
			}
		}
	},
	--		Shyvana
	--		Singed
	--		Sion
	["Sivir"] = {
		charName = "Sivir",
		skillshots = {
			["SivirQ"] = {
				name = "Boomerang Blade",
				spellName = "SivirQ",
				castDelay = 250,
				projectileName = "Sivir_Base_Q_mis.troy",
				projectileSpeed = 1350,
				range = 1175,
				radius = 101,
				type = "line",
				danger = 0
			},
		}
	},
	--		Skarner
	["Sona"] = {
		charName = "Sona",
		skillshots = {
			["SonaHymnofValor"] = {
				name = "SonaHymnofValor",
				spellName = "SonaHymnofValor",
				castDelay = 250,
				projectileName = "SonaHymnofValor_beam.troy",
				projectileSpeed = 1500,
				range = 1500,
				radius = 140,
				danger = 1
			},
			["SonaCrescendo"] = {
				name = "SonaCrescendo",
				spellName = "SonaCrescendo",
				castDelay = 250,
				projectileName = "SonaCrescendo_mis.troy",
				projectileSpeed = 1500,
				range = 1500,
				radius = 500,
				danger = 1
			}
		}
	},
	["Swain"] = {
		charName = "Swain",
		skillshots = {
			["SwainShadowGrasp"] = {
				name = "Nevermove",
				spellName = "SwainShadowGrasp",
				castDelay = 250,
				projectileName = "swain_shadowGrasp_transform.troy",
				projectileSpeed = 1000,
				range = 900,
				radius = 180,
				type = "circular",
				danger = 1
			},
			["SwainTorment"] = {
				name = "SwainTorment",
				spellName = "SwainTorment",
				castDelay = 250,
				projectileName = "swain_torment_mis.troy",
				projectileSpeed = 1000,
				range = 900,
				radius = 180,
				type = "circular",
				danger = 1
			}
		}
	},
	["Syndra"] = {
		charName = "Syndra",
		skillshots = {
			["SyndraQ"] = {
				name = "Q",
				spellName = "SyndraQ",
				castDelay = 250,
				projectileName = "Syndra_Q_cas.troy",
				projectileSpeed = 500,
				range = 800,
				radius = 175,
				type = "circular",
				danger = 0
			},
			["SyndraR"] = {
				name = "SyndraR",
				spellName="SyndraR",
				blockable=true,
				danger = 0,
				range=675
			}
		}
	},
	--		TahmKench
	--		Talon
	["Taric"] = {
		charName = "Taric",
		skillshots = {
			["Dazzle"] = {
				name = "Dazzle",
				spellName = "Dazzle",
				blockable = true,
				danger = 0,
				range=625
			},
		}
	},
	["Teemo"] = {
		charName = "Teemo",
		skillshots = {
			["BlindingDart"] = {
				name = "BlindingDart",
				spellName = "BlindingDart",
				castDelay = 250,
				projectileName = "BlindShot_mis.troy",
				projectileSpeed = 1500,
				range = 680,
				radius = 450,
				danger = 1
			}
		}
	},
	["Thresh"] = {
		charName = "Thresh",
		skillshots = {
			["ThreshQ"] = {
				name = "ThreshQ",
				spellName = "ThreshQ",
				castDelay = 500,
				projectileName = "Thresh_Q_whip_beam.troy",
				projectileSpeed = 1900,
				range = 1100,
				radius = 65,
				type = "line",
				danger = 1
			}
		}
	},
	--		Tristana
	--		Trundle
	--		Tryndamere
	["TwistedFate"] = {
		charName = "TwistedFate",
		skillshots = {
			["WildCards"] = {
				name = "Loaded Dice",
				spellName = "WildCards",
				castDelay = 250,
				projectileName = "Roulette_mis.troy",
				projectileSpeed = 1000,
				range = 1450,
				radius = 40,
				type = "line",
				danger = 0
			},
		}
	},
	--		Twitch
	--		Udyr
	--		Urgot
	["Varus"] = {
		charName = "Varus",
		skillshots = {
			["VarusQ"] = {
				name = "Varus Q Missile",
				spellName = "VarusQ",
				castDelay = 0,
				projectileName = "VarusQ_mis.troy",
				projectileSpeed = 1900,
				range = 1600,
				radius = 70,
				type = "line",
				danger = 0
			},
			["VarusE"] = {
				name = "Varus E",
				spellName = "VarusE",
				castDelay = 250,
				projectileName = "VarusEMissileLong.troy",
				projectileSpeed = 1500,
				range = 925,
				radius = 275,
				type = "circular",
				danger = 1
			},
			["VarusR"] = {
				name = "VarusR",
				spellName = "VarusR",
				castDelay = 250,
				projectileName = "VarusRMissile.troy",
				projectileSpeed = 1950,
				range = 1250,
				radius = 100,
				type = "line",
				danger = 1
			},
		}
	},
	["Vayne"] = {
		charName = "Vayne",
		skillshots = {
			["VayneCondemn"] = {
				name = "VayneCondemn",
				spellName = "VayneCondemn",
				castDelay = 250,
				projectileName = "vayne_E_mis.troy",
				projectileSpeed = 1200,
				range = 550,
				radius = 450,
				danger = 1
			}
		}
	},
	["Veigar"] = {
		charName = "Veigar",
		skillshots = {
			["VeigarPrimordialBurst"] = {
				name = "VeigarPrimordialBurst",
				spellName="VeigarPrimordialBurst",
				projectileName = "permission_Shadowbolt_mis.troy",
				range = 650,
				danger = 0
			},
			["VeigarBalefulStrike"] = {
				name = "VeigarBalefulStrike",
				spellName="VeigarBalefulStrike",
				projectileName = "permission__mana_flare_mis.troy.troy",
				range = 650,
				danger = 0
			}
		}
	},
	["Velkoz"] = {
		charName = "Velkoz",
		skillshots = {
			["VelkozQMissile"] = {
				name = "VelkozQMissile",
				spellName = "VelkozQMissile",
				castDelay = 250,
				projectileName = "Velkoz_Base_Q_mis.troy",
				projectileSpeed = 1300,
				range = 1100,
				radius = 80,
				type = "line",
				danger = 1
			},
			["velkozqsplitactivate"] = {
				name = "velkozqsplitactivate",
				spellName = "velkozqsplitactivate",
				castDelay = 250,
				projectileName = "Velkoz_Base_Q_Split_mis.troy",
				projectileSpeed = 1300,
				range = 1100,
				radius = 80,
				type = "line",
				danger = 1
			},		
			["VelkozW"] = {
				name = "VelkozW",
				spellName = "VelkozW",
				castDelay = 250,
				projectileName = "Velkoz_Base_W_Turret.troy",
				projectileSpeed = 1600,
				range = 1100,
				radius = 80,
				type = "line",
				danger = 1
			},
			["velkozqsplitactivate"] = {
				name = "velkozqsplitactivate",
				spellName = "velkozqsplitactivate",
				castDelay = 250,
				projectileName = "Velkoz_Base_Q_Split_mis.troy",
				projectileSpeed = 1300,
				range = 1100,
				radius = 80,
				type = "line",
				danger = 1
			},		
			["VelkozR"] = {
				name = "VelkozR",
				spellName = "VelkozR",
				castDelay = 250,
				projectileName = "FountainHeal.troy",
				projectileSpeed = 1300,
				range = 1100,
				radius = 80,
				type = "line",
				danger = 1
			},
			["VelkozR"] = {
				name = "VelkozR",
				spellName = "VelkozR",
				castDelay = 250,
				projectileName = "Velkoz_Base_R_beam.troy",
				projectileSpeed = 1300,
				range = 1100,
				radius = 80,
				type = "line",
				danger = 1
			},
			["VelkozR"] = {
				name = "VelkozR",
				spellName = "VelkozR",
				castDelay = 250,
				projectileName = "Velkoz_Base_R_Lens.troy",
				projectileSpeed = 1300,
				range = 1100,
				radius = 80,
				type = "line",
				danger = 1
			},
		}
	},
	--		Vi
	--		Viktor
	--		Vladimir
	--		Volibear
	--		Warwick
	["Xerath"] = {
		charName = "Xerath",
		skillshots = {
			["XerathArcanopulse"] = {
				name = "Xerath Arcanopulse",
				spellName = "XerathArcanopulse",
				castDelay = 1375,
				projectileName = "Xerath_Beam_cas.troy",
				projectileSpeed = math.huge,
				range = 1025,
				radius = 100,
				type = "line",
				danger = 0
			},
			["xeratharcanopulseextended"] = {
				name = "Xerath Arcanopulse Extended",
				spellName = "xeratharcanopulseextended",
				castDelay = 1375,
				projectileName = "Xerath_Beam_cas.troy",
				projectileSpeed = math.huge,
				range = 1625,
				radius = 100,
				type = "line",
				danger = 0
			},
			["xeratharcanebarragewrapper"] = {
				name = "xeratharcanebarragewrapper",
				spellName = "xeratharcanebarragewrapper",
				castDelay = 250,
				projectileName = "Xerath_E_cas_green.troy",
				projectileSpeed = 300,
				range = 1100,
				radius = 265,
				type = "circular",
				danger = 0
			},
			["xeratharcanebarragewrapperext"] = {
				name = "xeratharcanebarragewrapperext",
				spellName = "xeratharcanebarragewrapperext",
				castDelay = 250,
				projectileName = "Xerath_E_cas_green.troy",
				projectileSpeed = 300,
				range = 1600,
				radius = 265,
				type = "circular",
				danger = 0
			},
			["XerathMageSpearMissile"] = {
				name = "XerathMageSpearMissile",
				spellName = "XerathMageSpearMissile",
				castDelay = 0,
				projectileName = "Xerath_Base_E_mis.troy",
				projectileSpeed = 1200,
				range = 1300,
				radius = 80,
				type = "line",
				danger = 1
			},
			["xerathlocuspulse"] = {
				name = "xerathlocuspulse",
				spellName = "xerathlocuspulse",
				castDelay = 0,
				projectileName = "Xerath_Base_R_mis.troy",
				projectileSpeed = 1200,
				range = 5600,
				radius = 80,
				type = "line",
				danger = 1
			},
		}
	},
	--		XinZhao
	["Yasuo"] = {
		charName = "Yasuo",
		skillshots = {
			["yasuoq3w"] = {
				name = "Steel Tempest",
				spellName = "yasuoq3w",
				castDelay = 300,
				projectileName = "Yasuo_Q_wind_mis.troy",
				projectileSpeed = 1200,
				range = 900,
				radius = 375,
				type = "line",
				danger = 1
			},
		}
	},
	--		Yorick
	--		Zac
	["Zed"] = {
		charName = "Zed",
		skillshots = {
			["ZedShuriken"] = {
				name = "ZedShuriken",
				spellName = "ZedShuriken",
				castDelay = 250,
				projectileName = "Zed_Q_Mis.troy",
				projectileSpeed = 1700,
				range = 925,
				radius = 50,
				type = "line",
				danger = 0
			},
		}
	},
	["Ziggs"] = {
		charName = "Ziggs",
		skillshots = {
			["ZiggsQ"] = {
				name = "ZiggsQ",
				spellName = "ZiggsQ",
				castDelay = 1500,
				projectileName = "ZiggsQ.troy",
				projectileSpeed = math.huge,
				range = 1500,
				radius = 100,
				type = "line",
				danger = 0
			},
			["ZiggsW"] = {
				name = "ZiggsW",
				spellName = "ZiggsW",
				castDelay = 250,
				projectileName = "ZiggsW_mis.troy",
				projectileSpeed = math.huge,
				range = 1500,
				radius = 100,
				type = "line",
				danger = 0
			},
			["ZiggsE"] = {
				name = "ZiggsE",
				spellName = "ZiggsE",
				castDelay = 250,
				projectileName = "ZiggsEMine.troy",
				projectileSpeed = math.huge,
				range = 1500,
				radius = 100,
				type = "line",
				danger = 0
			},
			["ZiggsR"] = {
				name = "ZiggsR",
				spellName = "ZiggsR",
				projectileName = "ZiggsR_Mis_Nuke.troy",
				range = 1500,
				unBlockable = true,
				danger = 0
			}
		}
	},
	--		Zilean
	["Zyra"] = {
		charName = "Zyra",
		skillshots = {
			["ZyraGraspingRoots"] = {
				name = "Grasping Roots",
				spellName = "ZyraGraspingRoots",
				castDelay = 230,
				projectileName = "Zyra_Dummy_Controller.troy",
				projectileSpeed = 1150,
				range = 1150,
				radius = 70,
				type = "line",
				danger = 1
			},
			["zyrapassivedeathmanager"] = {
				name = "Zyra Passive",
				spellName = "zyrapassivedeathmanager",
				castDelay = 500,
				projectileName = "zyra_passive_plant_mis.troy",
				projectileSpeed = 2000,
				range = 1474,
				radius = 60,
				type = "line",
				danger = 0
			},
		}
	}
}

--		 █    ██  ██▓███  ▓█████▄  ▄▄▄     ▄▄▄█████▓▓█████   ██████ 
--		 ██  ▓██▒▓██░  ██▒▒██▀ ██▌▒████▄   ▓  ██▒ ▓▒▓█   ▀ ▒██    ▒ 
--		▓██  ▒██░▓██░ ██▓▒░██   █▌▒██  ▀█▄ ▒ ▓██░ ▒░▒███   ░ ▓██▄   
--		▓▓█  ░██░▒██▄█▓▒ ▒░▓█▄   ▌░██▄▄▄▄██░ ▓██▓ ░ ▒▓█  ▄   ▒   ██▒
--		▒▒█████▓ ▒██▒ ░  ░░▒████▓  ▓█   ▓██▒ ▒██▒ ░ ░▒████▒▒██████▒▒
--		░▒▓▒ ▒ ▒ ▒▓▒░ ░  ░ ▒▒▓  ▒  ▒▒   ▓▒█░ ▒ ░░   ░░ ▒░ ░▒ ▒▓▒ ▒ ░
--		░░▒░ ░ ░ ░▒ ░      ░ ▒  ▒   ▒   ▒▒ ░   ░     ░ ░  ░░ ░▒  ░ ░
--		 ░░░ ░ ░ ░░        ░ ░  ░   ░   ▒    ░         ░   ░  ░  ░  
--		   ░                 ░          ░  ░           ░  ░      ░  

function Vladimir:OnTick()
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
	if settings.killsteal.stealcamps then
		self:stealcamp()
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
	if settings.oSpells.safeRKey then
		if GetDistance(mousePos) > 660 then
			Rcast = myHero + (Vector(mousePos) - myHero):normalized() * 660
			CastSpell(_R, Rcast.x, Rcast.z)
		end
	end
	if settings.oSpells.UseRLowHp and self.skills.SkillR.ready then
		for _, target in pairs(GetEnemyHeroes()) do
			if GetDistance(target, myHero) < 740 and myHero.health / myHero.maxHealth <= settings.oSpells.RLowHp / 100 then
				self:Cast("R", target)
			end
		end
	end
	if settings.oSpells.UseWLowHp and self.skills.SkillW.ready then
		for _, target in pairs(GetEnemyHeroes()) do
			if GetDistance(target, myHero) < 740 and myHero.health / myHero.maxHealth <= settings.oSpells.WLowHp / 100 then
				self:Cast("W")
			end
		end
	end
	if settings.draws.DrawQ and self.skills.SkillQ.ready then
		Qup = true
	else
		Qup = false
	end
	if settings.draws.DrawW and self.skills.SkillW.ready then
		Wup = true
	else
		Wup = false
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
	if settings.draws.DrawR2 and self.skills.SkillR.ready then
		R2up = true
	else
		R2up = false
	end
	if settings.oSpells.MaintainEstacks and self.skills.SkillE.ready and not Recalling then
		if myHero.level >= settings.oSpells.MaintainEstacks2 then
			--if noEbuff then
				CastSpell(_E)
			--end
		end
	end
	if settings.oSpells.DodgeSpellsTable.HourGlass and not self.skills.SkillW.ready then
		if self:EnemyInRange(900, myHero) > 0 then
			if myHero.health / myHero.maxHealth <= settings.oSpells.DodgeSpellsTable.HourGlassHP / 100 then
				if target ~= nil then
					for _, item in pairs(SafetyItems) do
						item.slot = GetInventorySlotItem(item.id)
						if item.slot ~= nil then
							if not item.requireTarget then
								CastSpell(item.slot)
							end
						end
					end
				end		
			end
		end
	end
	if ((CurrentTimeInMillis() - lastTimeTickCalled) > 200) then
		lastTimeTickCalled = CurrentTimeInMillis()
		if settings.selectedVladimirSkin ~= lastSkin then
			lastSkin = settings.selectedVladimirSkin
			SendSkinPacket(myHero.charName, skinsPB[settings.selectedVladimirSkin], myHero.networkID)
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

function Vladimir:GetTarget()
	settings.ts:update()
	if _G.AutoCarry and  _G.AutoCarry.Attack_Crosshair and _G.AutoCarry.Attack_Crosshair.target and _G.AutoCarry.Attack_Crosshair.target.type == myHero.type then 
		return _G.AutoCarry.Attack_Crosshair.target 
	elseif settings.ts.target and ValidTarget(settings.ts.target) then
		return settings.ts.target
	end
end

function Vladimir:EnemyInRange(range, unit)
    local Targets = 0
    for _, target in pairs(GetEnemyHeroes()) do
        if ValidTarget(target) and GetDistance(target, unit) < range then
            Targets = Targets + 1
        end
    end
    return Targets
end

function AntiAFKSystem()
	if os.clock() < Clock or not settings.antiAFK then return end
	Clock = os.clock() + math.random(60,120)
	myHero:MoveTo(myHero.x, myHero.z)
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
	settings = scriptConfig("> > > Vladimir Reborn < < <", "Vladimir_Reborn")
			settings.ts = TargetSelector(TARGET_LESS_CAST, 740, DAMAGE_MAGIC, true)
			settings.ts.name = 'Vladimir'
			settings:addTS(settings.ts)
		settings:addSubMenu("Combo", "combo")
			settings.combo:addParam("UseQ", "Use Q in Combo", SCRIPT_PARAM_ONOFF, true)
			settings.combo:addParam("UseE", "Use E in Combo", SCRIPT_PARAM_ONOFF, true)
			settings.combo:addParam("EHP", "Only E over % HP", SCRIPT_PARAM_ONOFF, true)
			settings.combo:addParam("EHPValue", "    Set % HP", SCRIPT_PARAM_SLICE, 35, 1, 100, 0)
			settings.combo:addParam("UseR", "Use R in Combo - Middlefight", SCRIPT_PARAM_ONOFF, true)
		settings:addSubMenu("Harass", "harass")
			settings.harass:addParam("harassq", "Use Q in Harass", SCRIPT_PARAM_ONOFF, true)
			settings.harass:addParam("harasse", "Use E in Harass", SCRIPT_PARAM_ONOFF, true)
			settings.harass:addParam("EHP", "Only E over % HP", SCRIPT_PARAM_ONOFF, true)
			settings.harass:addParam("EHPValue", "    Set % HP", SCRIPT_PARAM_SLICE, 35, 1, 100, 0)
		settings:addSubMenu("Other Spells", "oSpells")
			settings.oSpells:addSubMenu("Spell Dodging", "DodgeSpellsTable")
				settings.oSpells.DodgeSpellsTable:addParam("WEnemiesEnable", "Use W On Dangerous Spells", SCRIPT_PARAM_ONOFF, true)
				settings.oSpells.DodgeSpellsTable:addParam("WEnemiesEnablePercentage", "HP Above % HP to dodge:", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
				settings.oSpells.DodgeSpellsTable:addParam("spaceText1","Dangerous Spells:", SCRIPT_PARAM_INFO, "")
					for _, enemyHero in pairs(GetEnemyHeroes()) do
						if ChampionData[enemyHero.charName] ~= nil then
							for _, DangerSkills in pairs(ChampionData[enemyHero.charName].skillshots) do
								settings.oSpells.DodgeSpellsTable:addParam(DangerSkills.spellName, enemyHero.charName .. " - " .. DangerSkills.name, SCRIPT_PARAM_ONOFF, true)
							end
						else
							settings.oSpells.DodgeSpellsTable:addParam("space", "No Enemies have any supported skills.", SCRIPT_PARAM_INFO, "")
						end
					end
				settings.oSpells.DodgeSpellsTable:addParam("space", "", SCRIPT_PARAM_INFO, "")
				settings.oSpells.DodgeSpellsTable:addParam("HourGlass", "Auto Use Zhonya or Wooglets on % HP", SCRIPT_PARAM_ONOFF, true)
				settings.oSpells.DodgeSpellsTable:addParam("HourGlassHP", "    Set % HP", SCRIPT_PARAM_SLICE, 35, 1, 100, 0)
			settings.oSpells:addParam("UseWLowHp", "Use W On Low Health", SCRIPT_PARAM_ONOFF, true)
			settings.oSpells:addParam("WLowHp", "    Set Low Health %", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
			settings.oSpells:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.oSpells:addParam("UseRLowHp", "Use R On Low Health", SCRIPT_PARAM_ONOFF, true)
			settings.oSpells:addParam("RLowHp", "    Set Low Health %", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
			settings.oSpells:addParam("infoText2", "I recommend using the same % for both", SCRIPT_PARAM_INFO, "")
			settings.oSpells:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.oSpells:addParam("MaintainEstacks", "Maintain E stacks", SCRIPT_PARAM_ONOFF, false)
			settings.oSpells:addParam("MaintainEstacks2", "Maintain E stacks if at/over Level:", SCRIPT_PARAM_SLICE, 7, 1, 18, 0)
			settings.oSpells:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.oSpells:addParam("safeRKey", "Max Range Secure Key", SCRIPT_PARAM_ONKEYDOWN, false, GetKey("R"))
			settings.oSpells:addParam("safeinfo", "    Please make sure this is bound", SCRIPT_PARAM_INFO, "")
			settings.oSpells:addParam("safeinfo2", "    to your Hemoplague key.", SCRIPT_PARAM_INFO, "")
	if VIP_USER then
		settings:addSubMenu("Misc", "misc")
			settings.misc:addParam("Debug", "Debugger", SCRIPT_PARAM_ONOFF, true)
			settings.misc:addParam("ChatDebug", "Add Chat Debug", SCRIPT_PARAM_ONOFF, false)
			settings.misc:addParam("xAxis", "X Axis", SCRIPT_PARAM_SLICE, 150, 0, 1230, 0)
			settings.misc:addParam("yAxis", "Y Axis", SCRIPT_PARAM_SLICE, 150, 0, 750, 0)
	end
		settings:addSubMenu("Kill Steal", "killsteal")
			settings.killsteal:addParam("killsteal", "Killsteal with Spells", SCRIPT_PARAM_ONOFF, true)
			settings.killsteal:addParam("info", "", SCRIPT_PARAM_INFO, "")
			settings.killsteal:addParam("stealcamps", "KS Jungle Creeps", SCRIPT_PARAM_ONOFF, true)
			settings.killsteal:addParam("jungleQ", "   - Use Q to steal Jungle Creeps", SCRIPT_PARAM_ONOFF, true)
			settings.killsteal:addParam("jungleE", "   - Use E to steal Jungle Creeps", SCRIPT_PARAM_ONOFF, false)
		settings:addSubMenu("Farm", "farm")
			settings.farm:addParam("space", "Last Hit:", SCRIPT_PARAM_INFO, "")
			settings.farm:addParam("lasthitq", "Use Q Last Hit", SCRIPT_PARAM_ONOFF, true)
			settings.farm:addParam("lasthitq2", "Only Last Hit Q if Level is or above:", SCRIPT_PARAM_ONOFF, true)
			settings.farm:addParam("lasthitq3", "    Set Level:", SCRIPT_PARAM_SLICE, 7, 1, 18, 0)
			settings.farm:addParam("lasthite", "Use E Last Hit", SCRIPT_PARAM_ONOFF, true)
			settings.farm:addParam("lasthite2", "Only use E to Last Hit if Q is on cooldown", SCRIPT_PARAM_ONOFF, true)
			settings.farm:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.farm:addParam("space", "Lane Clear:", SCRIPT_PARAM_INFO, "")
			settings.farm:addParam("farmq", "Use Q Lane Clear", SCRIPT_PARAM_ONOFF, true)
			settings.farm:addParam("farme", "Use E Lane Clear", SCRIPT_PARAM_ONOFF, true)
			settings.farm:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.farm:addParam("space", "Jungle Creeps:", SCRIPT_PARAM_INFO, "")
			settings.farm:addParam("farmqjng", "Use Q Jungle Creeps", SCRIPT_PARAM_ONOFF, true)
			settings.farm:addParam("farmejng", "Use E Jungle Creeps", SCRIPT_PARAM_ONOFF, true)
		settings:addSubMenu("Auto Level", "autolvl")
			if VIP_USER then
				settings.autolvl:addParam("getAllAtLevel", "Have Q, W and E by level:", SCRIPT_PARAM_SLICE, 3, 3, 4, 0)
				settings.autolvl:addParam("info", "Level priority:", SCRIPT_PARAM_INFO, "")
				settings.autolvl:addParam("maxQ", "Level (Q) priority", SCRIPT_PARAM_SLICE, 2, 1, 4, 0)
				settings.autolvl:addParam("maxW", "Level (W) priority", SCRIPT_PARAM_SLICE, 4, 1, 4, 0)
				settings.autolvl:addParam("maxE", "Level (E) priority", SCRIPT_PARAM_SLICE, 3, 1, 4, 0)
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
			settings.draws:addParam("DrawUntargetable", "Draw Untargetable", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("DrawQ", "Draw Q Range", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("DrawW", "Draw W Range", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("DrawE", "Draw E Range", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("DrawR", "Draw R Range", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("DrawR2", "Draw R Radius", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("DrawRtext", "Draw R Text", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("DrawHitBox", "Draw Hit Box", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("ESP", "Draw ESP Vladimir", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("ESPEnemy", "Draw ESP Enemy", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("LFCwidth", "LFC - Width", 4, 2, 1, 5, 0)
			settings.draws:addParam("LFCsnap", "LFC - Length Before Snapping", 4, 100, 50, 510, 0)
			settings.draws:addParam("space", "", SCRIPT_PARAM_INFO, "")
			settings.draws:addParam("Rcircle", "Draw targets with R", SCRIPT_PARAM_ONOFF, true)
			settings.draws:addParam("particles", "Draw Particles", SCRIPT_PARAM_ONOFF, true)
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
						210,
						0,
						0
					})
					settings.draws.color:addParam("Ecolor", "E Range Color", SCRIPT_PARAM_COLOR, {
						255,
						150,
						0,
						0
					})
					settings.draws.color:addParam("Rcolor", "R Color", SCRIPT_PARAM_COLOR, {
						255,
						255,
						255,
						0
					})
					settings.draws.color:addParam("Rcolor2", "R Radius Color", SCRIPT_PARAM_COLOR, {
						100,
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
					settings.draws.color:addParam("Rcirlcecolor", "R Circle Color", SCRIPT_PARAM_COLOR, {
						255,
						0,
						255,
						255
					})
					settings.draws.color:addParam("RcircleColor", "Targets with R Color", SCRIPT_PARAM_COLOR, {
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
			SAC = print("<font color='#FF0000'>[Vladimir Reborn] </font><font color='#FFFF00'>-</font><font color='#FF8B22'> SAC</font><font color='#FFFF00'>:</font><font color='#FF8B22'>Reborn</font><font color='#FFFFFF'> Loading... Please wait! </font>")
			SACENABLED = true
			DelayAction(function()
			settings:addSubMenu("Orbwalker", "orbWalk")
			settings.orbWalk:addParam("SACLoaded", "SAC:R integration supported!", SCRIPT_PARAM_INFO, "")
			end, 5)
		elseif not _G.Reborn_Loaded and FileExist(LIB_PATH .. "SxOrbWalk.lua") then
			print("<font color='#FF0000'>[Vladimir Reborn] </font><font color='#FFFF00'>-</font><font color='#FF8B22'>SxOrbWalk</font><font color='#FFFFFF'> Loading... Please wait! </font>")
			SxOrb = true
			require("SxOrbWalk")
			DelayAction(function()
			settings:addSubMenu("SxOrbWalk", "orbWalk")
			end, 5)
			DelayAction(function()
			_G.SxOrb:LoadToMenu(settings.orbWalk)
			end, 5)
		elseif SAC ~= true and SxOrb ~= true then
			print("<font color='#FF0000'>[Vladimir Reborn] </font><font color='#FFFF00'>-</font><font color='#FF8B22'> SAC</font><font color='#FFFF00'>:</font><font color='#FF8B22'>Reborn</font><font color='#FFFFFF'> or </font><font color='#FF8B22'>SxOrbWalk</font><font color='#FFFFFF'> is required.</font>")
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
		print("<font color='#FF0000'>[Vladimir Reborn] <font color='#FFFF00'>-</font></font><font color='#FFFFFF'> by </font><font color='#FF8B22'>Furry</font> <font color='#FFFFFF'>Version </font><font color='#00FFFF'>" .. _SCRIPT_VERSION_MENU .. "</font><font color='#FFFFFF'> Patch: </font><font color='#00FFFF'>" .. _PATCH .. "</font>")
		if _AUTO_UPDATE then
			GetAsyncWebResult("raw.github.com", "/FurryBoL/master/master/VladimirReborn.version", function(result)
				local latest = tonumber(result)
				if latest > _SCRIPT_VERSION then
					print("<font color='#FF0000'>[Vladimir Reborn] </font><font color='#FFFF00'>-</font><font color='#FFFFFF'> A update has been found and it is now downloading!</font>")
					DelayAction(DownloadFile, 0, {
						"https://raw.githubusercontent.com/FurryBoL/master/master/VladimirReborn.lua",
						_FILE_PATH,
						function()
							print("<font color='#FF0000'>[Vladimir Reborn] </font><font color='#FFFF00'>-</font><font color='#FFFFFF'> Script has been updated, please reload! (2xF9)</font>")
						end
					})
				end
			end)
		end
		settings:addParam("thepatch", "Patch:", SCRIPT_PARAM_INFO, _PATCH)
		settings:addParam("furry", "Vladimir Reborn By:", SCRIPT_PARAM_INFO, "Furry")
		if VIP_USER then
			settings:addParam("selectedVladimirSkin", "Skin Changer", SCRIPT_PARAM_LIST, 1, {
				[1] = 'Off',
				[2] = 'Original',
				[3] = 'Count',
				[4] = 'Marquis',
				[5] = 'Nosferatu',
				[6] = 'Vandal',
				[7] = 'Blood Lord',
				[8] = 'Soulstealer',
				[9] = 'Academy',
			})
		end
				settings:permaShow("comboactive")
				settings:permaShow("harassKey")
				settings:permaShow("lastHit")
				settings:permaShow("clearKey")
				settings:permaShow("AutoLevelOn")
	if FileExist(cfgpath) == false then
		settings.instruct = true
		WriteFile("Delete this file if you want to run instructions on first load.", cfgpath)
	else
		settings.instruct = false
	end
	draw = VisualManager()
	minions = Minions()
	vladimir = Vladimir()
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
	print("<font color='#FF0000'>[Vladimir Reborn] </font><font color='#FFFF00'>-</font><font color='#FFFFFF'> Unloaded! </font>")
	if VIP_USER then
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

function Vladimir:KillSteal()
	for _, target in pairs(GetEnemyHeroes()) do
		if ValidTarget(target, 740) then
			local DmgTable = {
				Q = self.skills.SkillQ.ready and getDmg("Q", target, myHero) or 0,
				E = self.skills.SkillE.ready and getDmg("E", target, myHero) or 0,
				R = self.skills.SkillR.ready and getDmg("R", target, myHero) or 0
			}
			if DmgTable.Q > target.health and GetDistance(target) <= self.skills.SkillQ.range then
				self:Cast("Q", target)
			elseif DmgTable.R > target.health then
				self:Cast("R", target)
			elseif DmgTable.E > target.health and GetDistanceSqr(myHero, target) <= self.skills.SkillE.range * self.skills.SkillE.range then
				self:Cast("E", target)
			elseif DmgTable.Q + DmgTable.R > target.health then
				self:Cast("Q", target)
				self:Cast("R", target)
			elseif DmgTable.R + DmgTable.E > target.health and GetDistanceSqr(myHero, target) <= self.skills.SkillE.range * self.skills.SkillE.range then
				self:Cast("R", target)
				self:Cast("E", target)
			elseif DmgTable.R + DmgTable.Q + DmgTable.E > target.health then
				self:Cast("Q", target)
				if GetDistanceSqr(myHero, target) <= self.skills.SkillE.range * self.skills.SkillE.range then
					self:Cast("E", target)
					self:Cast("R", target)
				end
			end
		end
	end
end

function Vladimir:GetDrawText(target)
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

function Vladimir:GetMyDmg(target)
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

function Vladimir:Combo(target)
	if settings.combo.UseQ and self.skills.SkillQ.ready and GetDistance(target) <= self.skills.SkillQ.range then
		self:Cast("Q", target)
	end
	if settings.combo.UseE and self.skills.SkillE.ready and GetDistanceSqr(target) <= self.skills.SkillE.range * self.skills.SkillE.range then
		if settings.combo.EHP then
			if myHero.health / myHero.maxHealth >= settings.combo.EHPValue / 100 then
				self:Cast("E", target)
			end
		elseif not settings.combo.EHP then
			self:Cast("E", target)
		end
	end
	if settings.combo.UseR and self.skills.SkillR.ready and GetDistance(target) <= self.skills.SkillR.range and target.health / target.maxHealth <= getDmg("R", target, myHero) * 2 / 1000 then
		self:Cast("R", target)
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

function Vladimir:harass(target)
	if settings.harass.harassq and self.skills.SkillQ.ready and GetDistance(target) <= self.skills.SkillQ.range then
		self:Cast("Q", target)
	end
	if settings.harass.harasse and self.skills.SkillE.ready and GetDistanceSqr(target) <= self.skills.SkillE.range * self.skills.SkillE.range then
		if settings.harass.EHP then
			if myHero.health / myHero.maxHealth >= settings.harass.EHPValue / 100 then
				self:Cast("E", target)
			end
		elseif not settings.harass.EHP then
			self:Cast("E", target)
		end
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

function Vladimir:lastHit()
	for _, target in pairs(minions.enemyMinions.objects) do
		local Qdamage = getDmg("Q", target, myHero)
		local Edamage = getDmg("E", target, myHero)
		if ValidTarget(target) and target ~= nil and self.skills.SkillQ.ready and settings.farm.lasthitq and GetDistanceSqr(target) <= self.skills.SkillQ.range * self.skills.SkillQ.range and Qdamage >= target.health then
			if settings.farm.lasthitq2 then
				if myHero.level >= settings.farm.lasthitq3 then
					self:Cast("Q", target)
					break
				end
			elseif not settings.farm.lasthitq2 then
				self:Cast("Q", target)
				break
			end
		end
		if ValidTarget(target) and target ~= nil and self.skills.SkillE.ready and settings.farm.lasthite and GetDistanceSqr(target) <= self.skills.SkillE.range * self.skills.SkillE.range and Edamage >= target.health then
			if settings.farm.lasthite2 then
				if not self.skills.SkillQ.ready then
					self:Cast("E", target)
					break
				end
			elseif not settings.farm.lasthite2 then
				self:Cast("E", target)
				break
			end
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

function Vladimir:clearLane()
	for _, target in pairs(minions.enemyMinions.objects) do
		if ValidTarget(target) and target ~= nil and self.skills.SkillQ.ready and settings.farm.farmq and GetDistanceSqr(target) <= self.skills.SkillQ.range * self.skills.SkillQ.range then
			self:Cast("Q", target)
		end
		if ValidTarget(target) and target ~= nil and self.skills.SkillE.ready and settings.farm.farme and GetDistanceSqr(target) <= self.skills.SkillE.range * self.skills.SkillE.range then
			self:Cast("E", target)
		end
	end
	for _, target in pairs(minions.jungleMinions.objects) do
		if ValidTarget(target) and target ~= nil and self.skills.SkillQ.ready and settings.farm.farmqjng and GetDistanceSqr(target) <= self.skills.SkillQ.range * self.skills.SkillQ.range then
			self:Cast("Q", target)
		end
		if ValidTarget(target) and target ~= nil and self.skills.SkillE.ready and settings.farm.farmejng and GetDistanceSqr(target) <= self.skills.SkillE.range * self.skills.SkillE.range then
			self:Cast("E", target)
		end
	end
end

--		  ██████ ▄▄▄█████▓▓█████ ▄▄▄       ██▓           ▄████▄   ▄▄▄       ███▄ ▄███▓ ██▓███  
--		▒██    ▒ ▓  ██▒ ▓▒▓█   ▀▒████▄    ▓██▒          ▒██▀ ▀█  ▒████▄    ▓██▒▀█▀ ██▒▓██░  ██▒
--		░ ▓██▄   ▒ ▓██░ ▒░▒███  ▒██  ▀█▄  ▒██░          ▒▓█    ▄ ▒██  ▀█▄  ▓██    ▓██░▓██░ ██▓▒
--		  ▒   ██▒░ ▓██▓ ░ ▒▓█  ▄░██▄▄▄▄██ ▒██░          ▒▓▓▄ ▄██▒░██▄▄▄▄██ ▒██    ▒██ ▒██▄█▓▒ ▒
--		▒██████▒▒  ▒██▒ ░ ░▒████▒▓█   ▓██▒░██████▒      ▒ ▓███▀ ░ ▓█   ▓██▒▒██▒   ░██▒▒██▒ ░  ░
--		▒ ▒▓▒ ▒ ░  ▒ ░░   ░░ ▒░ ░▒▒   ▓▒█░░ ▒░▓  ░      ░ ░▒ ▒  ░ ▒▒   ▓▒█░░ ▒░   ░  ░▒▓▒░ ░  ░
--		░ ░▒  ░ ░    ░     ░ ░  ░ ▒   ▒▒ ░░ ░ ▒  ░        ░  ▒     ▒   ▒▒ ░░  ░      ░░▒ ░     
--		░  ░  ░    ░         ░    ░   ▒     ░ ░         ░          ░   ▒   ░      ░   ░░       
--		      ░              ░  ░     ░  ░    ░  ░      ░ ░            ░  ░       ░            
--		                                                ░   

function Vladimir:stealcamp()
	for _, target in pairs(minions.jungleMinions.objects) do
		if ValidTarget(target) and target ~= nil and self.skills.SkillQ.ready and settings.killsteal.jungleQ and GetDistanceSqr(target) <= self.skills.SkillQ.range * self.skills.SkillQ.range and getDmg("Q", target, myHero) >= target.health then
			self:Cast("Q", target)
		elseif ValidTarget(target) and target ~= nil and self.skills.SkillE.ready and settings.killsteal.jungleE and GetDistanceSqr(target) <= self.skills.SkillE.range * self.skills.SkillE.range and getDmg("E", target, myHero) >= target.health then
			self:Cast("E", target)
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

function Vladimir:AutoIgnite()
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

function Vladimir:Cast(spell, target)
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
	if obj.name:find("Vladimir_Base_Q_tar.troy") then
		Qobj = true
	end
	if obj.name:find("Vladimir_Base_Q_heal_tar.troy") then
		Qobj = false
	end
	if obj.name:find("Vladimir_Base_W_buf.troy") and GetDistanceSqr(obj, myHero) <= 4900 then
		TargetableSelf = false
	end
	if obj.name:find("Vladimir_Base_R_AoE_nova.troy") then
		Robj = obj
		ValidR = true
	end
	if (obj.name == "TeleportHomeImproved.troy" or obj.name == "TeleportHome.troy") and GetDistance(myHero, obj) < 50 then
		Recalling = true
	end
	if obj.spellOwner == myHero and obj.name:find("missile") then
		Gobj = obj
	end
end

function OnDeleteObj(obj)
	if obj.name and obj.name:find("Vladimir_Base_R_AoE_nova.troy") then
		Robj = nil
		ValidR = false
	end
	if (obj.name == "TeleportHomeImproved.troy" or obj.name == "TeleportHome.troy") and GetDistance(myHero, object) < 50 then
		Recalling = false
	end
	if obj.spellOwner == myHero and obj.name and obj.name:find("missile") then
		Gobj = nil
	end
end

function Vladimir:OnProcessSpell(unit, buff)
	if unit and buff and unit.isMe and buff.name == myHero:GetSpellData(_R).name then
		ValidR = true
	end
	if unit.isMe and buff.name == myHero:GetSpellData(_E).name then
		ETickCount = GetTickCount()
	end
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
	if settings.oSpells.DodgeSpellsTable.WEnemiesEnable then
		if unit.team ~= player.team and string.find(buff.name, "Basic") == nil then
			if ChampionData[unit.charName] ~= nil then
				DangerSkills = ChampionData[unit.charName].skillshots[buff.name]
				if DangerSkills ~= nil then
					range = DangerSkills.range
					if not buff.startPos then
						buff.startPos.x = unit.x
						buff.startPos.z = unit.z
					end
					if GetDistance(buff.startPos) <= range then
						if settings.oSpells.DodgeSpellsTable[buff.name] then
							if self.skills.SkillW.ready then
								if buff.endPos.x == myHero.x + 20 and buff.endPos.z == myHero.z + 20 and myHero.health / myHero.maxHealth <= settings.oSpells.DodgeSpellsTable.WEnemiesEnablePercentage / 100 then
									self:Cast("W")
								end
							end
						end
					end
				end
			end
		end
	end
end

function OnApplyBuff(unit, target, buff)
	if unit == myHero and buff.name == "vladimirhemoplaguedebuff" then
		targetsWithR[target.networkID] = true
	end
	if unit == myHero and buff.name:find("vladimirtidesofbloodcost") then
		noEbuff = false
	end
end

function OnRemoveBuff(target, buff)
	if buff and buff.name:find("VladimirSanguinePool") then
		TargetableSelf = true
	end
	if target and buff then
		if buff.name == "vladimirhemoplaguedebuff" then
			targetsWithR[target.networkID] = nil
		end
	end
	if buff and buff.name:find("vladimirtidesofbloodcost") then
		noEbuff = true
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
				DrawLineHPBar2(Vladimir:GetMyDmg(target), currLine, "", target)
				DrawLineHPBar(Vladimir:GetMyDmg(target), currLine, "Damage " .. math.round(Vladimir:GetMyDmg(target)), target)
				currLine = currLine + 1
			end
		end
	end
	if settings.draws.drawkillable then
		for _, target in pairs(GetEnemyHeroes()) do
			if ValidTarget(target) and not target.dead then
				local pos = WorldToScreen(D3DXVECTOR3(target.x, target.y, target.z))
				local target_Text, color = Vladimir:GetDrawText(target)
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
		if TargetableSelf then
			self:DrawCircle(myHero.x, myHero.y, myHero.z, myHero.boundingRadius, ARGB(table.unpack(settings.draws.color.HitBoxcolor)))
		elseif not TargetableSelf then
			self:DrawCircle(myHero.x, myHero.y, myHero.z, 375, ARGB(table.unpack(settings.draws.color.HitBoxcolor)))
		end
	end
	if settings.draws.ESP and not myHero.dead then
		if TargetableSelf then
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
		elseif not TargetableSelf then
			local ESP_1_Feet_Pool = WorldToScreen(D3DXVECTOR3(myHero.x - 375 / 1.5, myHero.y, myHero.z - 375 / 1.5))
			local ESP_2_Feet_Pool = WorldToScreen(D3DXVECTOR3(myHero.x + 375 / 1.5, myHero.y, myHero.z - 375 / 1.5))
			local ESP_3_Feet_Pool = WorldToScreen(D3DXVECTOR3(myHero.x + 375 / 1.5, myHero.y, myHero.z + 375 / 1.5))
			local ESP_4_Feet_Pool = WorldToScreen(D3DXVECTOR3(myHero.x - 375 / 1.5, myHero.y, myHero.z + 375 / 1.5))
			local ESP_1_Head_Pool = WorldToScreen(D3DXVECTOR3(myHero.x - 375 / 1.5, myHero.y + 30, myHero.z - 375 / 1.5))
			local ESP_2_Head_Pool = WorldToScreen(D3DXVECTOR3(myHero.x + 375 / 1.5, myHero.y + 30, myHero.z - 375 / 1.5))
			local ESP_3_Head_Pool = WorldToScreen(D3DXVECTOR3(myHero.x + 375 / 1.5, myHero.y + 30, myHero.z + 375 / 1.5))
			local ESP_4_Head_Pool = WorldToScreen(D3DXVECTOR3(myHero.x - 375 / 1.5, myHero.y + 30, myHero.z + 375 / 1.5))
			local ESP_1_Feet_Pool_2 = WorldToScreen(D3DXVECTOR3(myHero.x - 347.5, myHero.y, myHero.z))
			local ESP_2_Feet_Pool_2 = WorldToScreen(D3DXVECTOR3(myHero.x, myHero.y, myHero.z - 347.5))
			local ESP_3_Feet_Pool_2 = WorldToScreen(D3DXVECTOR3(myHero.x + 347.5, myHero.y, myHero.z))
			local ESP_4_Feet_Pool_2 = WorldToScreen(D3DXVECTOR3(myHero.x, myHero.y, myHero.z + 347.5))
			local ESP_1_Head_Pool_2 = WorldToScreen(D3DXVECTOR3(myHero.x - 347.5, myHero.y + 30, myHero.z))
			local ESP_2_Head_Pool_2 = WorldToScreen(D3DXVECTOR3(myHero.x, myHero.y + 30, myHero.z - 347.5))
			local ESP_3_Head_Pool_2 = WorldToScreen(D3DXVECTOR3(myHero.x + 347.5, myHero.y + 30, myHero.z))
			local ESP_4_Head_Pool_2 = WorldToScreen(D3DXVECTOR3(myHero.x, myHero.y + 30, myHero.z + 347.5))
			DrawLine(ESP_1_Feet_Pool.x, ESP_1_Feet_Pool.y, ESP_2_Feet_Pool.x, ESP_2_Feet_Pool.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_2_Feet_Pool.x, ESP_2_Feet_Pool.y, ESP_3_Feet_Pool.x, ESP_3_Feet_Pool.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_3_Feet_Pool.x, ESP_3_Feet_Pool.y, ESP_4_Feet_Pool.x, ESP_4_Feet_Pool.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_4_Feet_Pool.x, ESP_4_Feet_Pool.y, ESP_1_Feet_Pool.x, ESP_1_Feet_Pool.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_1_Head_Pool.x, ESP_1_Head_Pool.y, ESP_2_Head_Pool.x, ESP_2_Head_Pool.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_2_Head_Pool.x, ESP_2_Head_Pool.y, ESP_3_Head_Pool.x, ESP_3_Head_Pool.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_3_Head_Pool.x, ESP_3_Head_Pool.y, ESP_4_Head_Pool.x, ESP_4_Head_Pool.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_4_Head_Pool.x, ESP_4_Head_Pool.y, ESP_1_Head_Pool.x, ESP_1_Head_Pool.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_1_Head_Pool.x, ESP_1_Head_Pool.y, ESP_1_Feet_Pool.x, ESP_1_Feet_Pool.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_2_Head_Pool.x, ESP_2_Head_Pool.y, ESP_2_Feet_Pool.x, ESP_2_Feet_Pool.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_3_Head_Pool.x, ESP_3_Head_Pool.y, ESP_3_Feet_Pool.x, ESP_3_Feet_Pool.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_4_Head_Pool.x, ESP_4_Head_Pool.y, ESP_4_Feet_Pool.x, ESP_4_Feet_Pool.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_1_Feet_Pool_2.x, ESP_1_Feet_Pool_2.y, ESP_2_Feet_Pool_2.x, ESP_2_Feet_Pool_2.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_2_Feet_Pool_2.x, ESP_2_Feet_Pool_2.y, ESP_3_Feet_Pool_2.x, ESP_3_Feet_Pool_2.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_3_Feet_Pool_2.x, ESP_3_Feet_Pool_2.y, ESP_4_Feet_Pool_2.x, ESP_4_Feet_Pool_2.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_4_Feet_Pool_2.x, ESP_4_Feet_Pool_2.y, ESP_1_Feet_Pool_2.x, ESP_1_Feet_Pool_2.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_1_Head_Pool_2.x, ESP_1_Head_Pool_2.y, ESP_2_Head_Pool_2.x, ESP_2_Head_Pool_2.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_2_Head_Pool_2.x, ESP_2_Head_Pool_2.y, ESP_3_Head_Pool_2.x, ESP_3_Head_Pool_2.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_3_Head_Pool_2.x, ESP_3_Head_Pool_2.y, ESP_4_Head_Pool_2.x, ESP_4_Head_Pool_2.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_4_Head_Pool_2.x, ESP_4_Head_Pool_2.y, ESP_1_Head_Pool_2.x, ESP_1_Head_Pool_2.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_1_Head_Pool_2.x, ESP_1_Head_Pool_2.y, ESP_1_Feet_Pool_2.x, ESP_1_Feet_Pool_2.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_2_Head_Pool_2.x, ESP_2_Head_Pool_2.y, ESP_2_Feet_Pool_2.x, ESP_2_Feet_Pool_2.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_3_Head_Pool_2.x, ESP_3_Head_Pool_2.y, ESP_3_Feet_Pool_2.x, ESP_3_Feet_Pool_2.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
			DrawLine(ESP_4_Head_Pool_2.x, ESP_4_Head_Pool_2.y, ESP_4_Feet_Pool_2.x, ESP_4_Feet_Pool_2.y, 1, ARGB(table.unpack(settings.draws.color.ESPcolor)))
		end
	end
	if Qup then
		self:DrawCircle(myHero.x, myHero.y, myHero.z, 635, ARGB(table.unpack(settings.draws.color.Qcolor)))
	end
	if Wup then
		self:DrawCircle(myHero.x, myHero.y, myHero.z, 375, ARGB(table.unpack(settings.draws.color.Wcolor)))
	end
	if Eup then
		self:DrawCircle(myHero.x, myHero.y, myHero.z, 575, ARGB(table.unpack(settings.draws.color.Ecolor)))
	end
	if Rup then
		self:DrawCircle(myHero.x, myHero.y, myHero.z, 700, ARGB(table.unpack(settings.draws.color.Rcolor)))
	end
	if R2up then
		myPosV = Vector(myHero.x, myHero.z)
		mousePosV = Vector(mousePos.x, mousePos.z)
		if GetDistance(myPosV, mousePosV) < 700 - 60 then
			self:DrawCircle(mousePos.x, mousePos.y, mousePos.z, 400, ARGB(table.unpack(settings.draws.color.Wcolor)))	
		else
			finalV = myPosV+(mousePosV-myPosV):normalized()* (700 - 60)
			self:DrawCircle(finalV.x, myHero.y, finalV.y, 400, ARGB(table.unpack(settings.draws.color.Rcolor2)))
			if settings.draws.DrawRtext then
				DrawText3D("Cast R Here", finalV.x - 150, myHero.y, finalV.y + 50, 45, ARGB(table.unpack(settings.draws.color.Rcolor2)))
			end
		end
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
	if settings.draws.Rcircle then
		for _, target in pairs(GetEnemyHeroes()) do
			if target.visible and not target.dead and targetsWithR[target.networkID] ~= nil then
				self:DrawCircle(target.x, target.y, target.z, 150, ARGB(table.unpack(settings.draws.color.RcircleColor)))
			end
		end
	end
	if settings.draws.DrawUntargetable then
		local UntargetableSelfvec = WorldToScreen(D3DXVECTOR3(myHero.x, myHero.y, myHero.z))
		if not myHero.dead then
			if not TargetableSelf then
				DrawText("Untargetable", 25, UntargetableSelfvec.x - 60, UntargetableSelfvec.y + 31, ARGB(255, 200, 200, 200))
			elseif TargetableSelf then
				DrawText("Targetable", 25, UntargetableSelfvec.x - 50, UntargetableSelfvec.y + 31, ARGB(255, 255, 0, 0))
			end
		end
	end
	if PopUp1 then	-- Draw instructions Box and Text
		local w, h1, h2 = (WINDOW_W*0.50), (WINDOW_H*.15), (WINDOW_H*.9)
		DrawLine(w, h1/1.05, w, h2/1.97, w/1.75, ARGB(120, 205, 0, 0 ))
		DrawLine(w, h1, w, h2/2, w/1.8, ARGB(120, 50, 0 , 0 ))
		DrawTextA(tostring("Welcome to Vladimir Reborn!"), WINDOW_H*.028, (WINDOW_W/2), (WINDOW_H*.18), ARGB(255, 0 , 255, 255),"center","center")
		DrawTextA(tostring("Hold Spacebar to cast standard Q + E Combo."), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.210), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("Script will not E if you are under % HP (configurable)"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.225), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("Script will Auto Detect Ignite(?) and will add it to KillSteal setting"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.240), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("Script will cast Ultimate if:"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.255), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("  Enemy HP is before a full rotation*.5"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.270), ARGB(255, 255, 255, 255))
		DrawTextA(tostring("  Target will die from it. (Killsteal)"), WINDOW_H*.015, (WINDOW_W/2.65), (WINDOW_H*.285), ARGB(255, 255, 255, 255))
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

if (string.find(GetGameVersion(), 'Releases/5.23') ~= nil) then
	_G.LevelSpell = function(id)
		local offsets = { 
			[_Q] = 0x61,
			[_W] = 0x81,
			[_E] = 0xA1,
			[_R] = 0xC1,
		}
		local p = CLoLPacket(0x0033)
		p.vTable = 0xE556E8
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
	print("<font color='#FF0000'>[Vladimir Reborn] <font color='#FFFF00'>-</font><font color='#FFFFFF'>" .. spelldraw2 .. "</font>")
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
	print("<font color='#FF0000'>[Vladimir Reborn] </font><font color='#FFFF00'>-</font><font color='#FFFFFF'> There's something wrong with the AutoLeveler! Please configure and check your settings!</font>")
	settings.AutoLevelOn = false
end

function countTable(spelldraw)
	local spelldraw2 = 0
	for spelldraw3, spelldraw4 in pairs(spelldraw) do
		spelldraw2 = spelldraw2 + 1
	end
	return spelldraw2
end

--		  ██████  ██ ▄█▀ ██▓ ███▄    █        ▄████▄   ██░ ██  ▄▄▄       ███▄    █   ▄████ ▓█████  ██▀███  
--		▒██    ▒  ██▄█▒ ▓██▒ ██ ▀█   █       ▒██▀ ▀█  ▓██░ ██▒▒████▄     ██ ▀█   █  ██▒ ▀█▒▓█   ▀ ▓██ ▒ ██▒
--		░ ▓██▄   ▓███▄░ ▒██▒▓██  ▀█ ██▒      ▒▓█    ▄ ▒██▀▀██░▒██  ▀█▄  ▓██  ▀█ ██▒▒██░▄▄▄░▒███   ▓██ ░▄█ ▒
--		  ▒   ██▒▓██ █▄ ░██░▓██▒  ▐▌██▒      ▒▓▓▄ ▄██▒░▓█ ░██ ░██▄▄▄▄██ ▓██▒  ▐▌██▒░▓█  ██▓▒▓█  ▄ ▒██▀▀█▄  
--		▒██████▒▒▒██▒ █▄░██░▒██░   ▓██░      ▒ ▓███▀ ░░▓█▒░██▓ ▓█   ▓██▒▒██░   ▓██░░▒▓███▀▒░▒████▒░██▓ ▒██▒
--		▒ ▒▓▒ ▒ ░▒ ▒▒ ▓▒░▓  ░ ▒░   ▒ ▒       ░ ░▒ ▒  ░ ▒ ░░▒░▒ ▒▒   ▓▒█░░ ▒░   ▒ ▒  ░▒   ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░
--		░ ░▒  ░ ░░ ░▒ ▒░ ▒ ░░ ░░   ░ ▒░        ░  ▒    ▒ ░▒░ ░  ▒   ▒▒ ░░ ░░   ░ ▒░  ░   ░  ░ ░  ░  ░▒ ░ ▒░
--		░  ░  ░  ░ ░░ ░  ▒ ░   ░   ░ ░       ░         ░  ░░ ░  ░   ▒      ░   ░ ░ ░ ░   ░    ░     ░░   ░ 
--		      ░  ░  ░    ░           ░       ░ ░       ░  ░  ░      ░  ░         ░       ░    ░  ░   ░     
--		                                     ░

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
	}
	skinObjectPos = 11
	skinHeader = 0x13
	dispellHeader = 0x13B
	skinH = 0x74
	skinHPos = 11
end

	-- Skin Order:
		--|>  Original
		--|>  Count
		--|>  Marquis
		--|>  Nosferatu
		--|>  Vandal
		--|>  Blood Lord
		--|>  Soulstealer
		--|>  Academy

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
	if settings.misc.Debug then
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
	if settings.misc.Debug then
		local totalAP = myHero.ap * (1 + myHero.apPercent)
		local World_x1 = 40 + settings.misc.xAxis
		local World_x2 = 220 + settings.misc.xAxis
		local World_x3 = 400 + settings.misc.xAxis
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
		DrawText("Bonus AP:", 15, World_x1, World_y1 + 95, ARGB(255, 255, 255, 255))
		DrawText("" .. math.round(totalAP * 0.6), 15, World_x1 + 61, World_y1 + 95, ARGB(255, 0, 255, 0))
		DrawText("Bonus AP Heal:", 15, World_x1, World_y1 + 110, ARGB(255, 255, 255, 255))
		DrawText("" .. math.round(totalAP * 0.25), 15, World_x1 + 90, World_y1 + 110, ARGB(255, 0, 255, 0))

		-- [W Debug]
		DrawText("W Debug", 15, World_x2, World_y1 + 20, ARGB(255, 0, 255, 255))
		DrawText("Name:", 15, World_x2, World_y1 + 35, ARGB(255, 255, 255, 255))
		DrawText("" .. myHero:GetSpellData(_W).name, 15, World_x2 + 40, World_y1 + 35, ARGB(255, 255, 255, 0))
		DrawText("Ready:", 15, World_x2, World_y1 + 50, ARGB(255, 255, 255, 255))
		if readytextW then
			DrawText("true", 15, World_x2 + 43, World_y1 + 50, ARGB(255, 0, 255, 0))
		elseif untergetableW then
			DrawText("Untargetable", 15, World_x2 + 43, World_y1 + 50, ARGB(255, 255, 175, 0))
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
		DrawText("HP Cost:", 15, World_x2, World_y1 + 95, ARGB(255, 255, 255, 255))
		DrawText("" .. math.round(myHero.health * 0.2), 15, World_x2 + 55, World_y1 + 95, ARGB(255, 0, 255, 0))
		DrawText("Bonus Damage:", 15, World_x2, World_y1 + 110, ARGB(255, 255, 255, 255))
		DrawText("" .. math.round(myHero.maxHealth * 0.15), 15, World_x2 + 90, World_y1 + 110, ARGB(255, 0, 255, 0))

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
		DrawText("Bonus AP:", 15, World_x3, World_y1 + 95, ARGB(255, 255, 255, 255))
		DrawText("" .. math.round(totalAP * 0.45), 15, World_x3 + 61, World_y1 + 95, ARGB(255, 0, 255, 0))

		-- [R Debug]
		DrawText("R Debug", 15, World_x4, World_y1 + 20, ARGB(255, 0, 255, 255))
		DrawText("Name:", 15, World_x4, World_y1 + 35, ARGB(255, 255, 255, 255))
		DrawText("" .. myHero:GetSpellData(_R).name, 15, World_x4 + 40, World_y1 + 35, ARGB(255, 255, 255, 0))
		DrawText("Ready:", 15, World_x4, World_y1 + 50, ARGB(255, 255, 255, 255))
		if readytextR then
			DrawText("true", 15, World_x4 + 43, World_y1 + 50, ARGB(255, 0, 255, 0))
		elseif ValidR then
			DrawText("Ultimate Placed!", 15, World_x4 + 43, World_y1 + 50, ARGB(255, 0, 255, 255))
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
		DrawText("Bonus AP:", 15, World_x4, World_y1 + 95, ARGB(255, 255, 255, 255))
		DrawText("" .. math.round(totalAP * 0.7), 15, World_x4 + 61, World_y1 + 95, ARGB(255, 0, 255, 0))
	end
end
