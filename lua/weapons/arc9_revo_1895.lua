AddCSLuaFile()
SWEP.Base = "arc9_base"
SWEP.Category = "ARC9 - Revo Arsenal"
SWEP.Spawnable = true

---- FUNDAMENTALS

SWEP.Slot = 3 -- Which slot the weapon is in; starts at 0

---- Name, Description, Class, Category and Trivia
SWEP.PrintName = "M1895 Russian"
SWEP.Description = "John Browning's final lever-action design, and one of the few lever-action rifles to see military service, the Model 1895 did away with the typical tube magazine found on similar rifles in favor of a top-loaded box magazine. During World War I, the Russian Empire put in an order for the rifle to equip its airforce and police units amid an arms shortage. These Russian contract guns are chambered for 7.62x54mmR and feature a stripper clip guide on top of the receiver. \n\nOriginally from Khris REVO."
SWEP.Class = "Lever-Action Rifle" -- In the Customization Menu
SWEP.SubCategory = "Rifles" -- In the Spawnmenu

SWEP.Trivia = {
    ["Manufacturer"] = "Winchester",
    ["Caliber"] = "7.62x54mmR",
    ["Mechanism"] = "Lever-action",
    ["Country of Origin"] = "United States",
    ["Year Introduced"] = "1895"
}

SWEP.Credits = {
	["Model & textures"] = "DICE",
	["Source Engine compile & materials"] = "Moon",
	["Animations"] = "Khris",
	["Sounds"] = "Unknown",
	["Lua"] = "speedonerd"
}

SWEP.StandardPresets = {}

---- Muzzle Effects, Shell Effects, Camera
SWEP.MuzzleParticle = "muzzleflash_ak47"
SWEP.MuzzleEffectQCA = 1

SWEP.TracerNum = 1
SWEP.TracerSize = 1

SWEP.ShellModel = "models/weapons/khrcw2/shells/762rshell.mdl"
SWEP.ShellScale = 0.6
SWEP.ShellPitch = 90
SWEP.EjectDelay = 0.35
SWEP.NoShellEject = false

SWEP.CaseEffectQCA = 2

---- View & Worldmodel
SWEP.ViewModel = "models/weapons/khrcw2/temp/win1895.mdl"
SWEP.WorldModel = "models/weapons/khrcw2/w_win1895.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
-- SWEP.WorldModelMirror = "models/weapons/arc9/c_uplp_ak.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-3.5, 3, -8),
    Ang = Angle(0, 0, 180),
    TPIKPos = Vector(-4.5, 2, -5),
    TPIKAng = Angle(-12, -0, 180),
    Scale = 1,

    TPIKPosSightOffset = Vector(-1, 2, -3),
}

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0.25, -2, 0.5)
SWEP.ActiveAng = Angle(0, 0.5, 0)

SWEP.RestPos = Vector(3, 0, 0)
SWEP.RestAng = Angle(40, -20, 0)

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC

---- Weapon Stats and Behaviour
-- Damage
-- make sure ak12 matches this
SWEP.DamageMax = 34
SWEP.DamageMin = 18
SWEP.HeadshotDamage = 1
SWEP.DamageType = DMG_BULLET

SWEP.Penetration = 18
SWEP.ImpactForce = 4

-- Range
SWEP.RangeMin = 20 / ARC9.HUToM
SWEP.RangeMax = 90 / ARC9.HUToM

-- Physical Bullets
SWEP.PhysBulletMuzzleVelocity = 715 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-- Magazine Info
SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0
SWEP.ClipSize = 5
SWEP.ReloadInSights = false
SWEP.ShotgunReload = true
SWEP.ShotgunReloadIncludesChamber = false
SWEP.HybridReload = false

-- Recoil
SWEP.Recoil = 4 * 0.75
SWEP.RecoilUp = 1.35
SWEP.RecoilSide = 1.2

SWEP.RecoilRandomUp = 1
SWEP.RecoilRandomSide = 1

SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.RecoilPunch = 0
SWEP.RecoilAutoControl = 1.25 * 1.5

SWEP.RecoilMultSights = 0.75
SWEP.RecoilMultCrouch = 0.85

-- Visual Recoil
SWEP.VisualRecoil = 0.5
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilCenter = Vector(2, 11, 2)
SWEP.VisualRecoilUp = 0 -- Vertical tilt
SWEP.VisualRecoilSide = -0.015 -- Horizontal tilt
SWEP.VisualRecoilRoll = 10 -- Roll tilt
SWEP.VisualRecoilPunch = 2.5 -- How far back visual recoil moves the gun
SWEP.VisualRecoilDampingConst = 80
SWEP.VisualRecoilSpringMagnitude = 0.44
SWEP.VisualRecoilPositionBumpUp = .1

SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilUpHipFire = 2
SWEP.VisualRecoilSideHipFire = -0.2
SWEP.VisualRecoilRollHipFire = 20
SWEP.VisualRecoilPunchHipFire = 0.5
SWEP.VisualRecoilDampingConstHipFire = 45
SWEP.VisualRecoilPositionBumpUpHipFire = .5

-- Accuracy and Spread
SWEP.Spread = 0.0045
SWEP.SpreadAddHipFire = 0.03 - 0.01

SWEP.SpreadAddRecoil = 0.015
SWEP.SpreadAddMove = 0.02
SWEP.SpreadAddMidAir = 0.05

SWEP.SpreadMultSights = 1
SWEP.SpreadMultMove = 1

SWEP.RecoilDissipationRate = 5
SWEP.RecoilResetTime = 0.02
SWEP.RecoilPerShot = 1 / 9
SWEP.RecoilMax = 1
SWEP.RecoilModifierCap = 1

-- Weapon handling
SWEP.Speed = 0.82 + 0.05 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.6 / 0.85 -- When aiming
SWEP.SpeedMultShooting = 0.8

SWEP.AimDownSightsTime = 0.37 - 0.1 -- Time it takes to fully enter ADS
SWEP.SprintToFireTime = 0.37 - 0.1 -- Time it takes to fully enter sprint

SWEP.SwayAddSights = 1
SWEP.BarrelLength = 40

-- Shooting and Firemodes
SWEP.RPM = 88 -- How fast gun shoot
SWEP.HeatCapacity = 120 * 1.5 -- For suppresors; how many shots for full heat With big silencer (Small silencers will make this number lower down to 70%)

SWEP.Num = 1 -- How many bullets shot at once

SWEP.Firemodes = {
    { 
		Mode = 1,
		PrintName = "LEVER",
	},
}

SWEP.ShootPitch = 90
SWEP.ShootVolume = 120

-- HoldType Info
SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "smg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeNPC = nil

-- NPC Info
SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Iron Sight and Sight Info
SWEP.IronSights = {
     Pos = Vector(-2.8, -1, 2.4),
     Ang = Angle(0, 0.05, 0),
     Magnification = 1.15,
     ViewModelFOV = 55,
}

-- Customization Menu Info
SWEP.CustomizePos = Vector(20, 50, 5)
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizeRotateAnchor = Vector(18, -2.5, -3)

SWEP.CustomizeSnapshotPos = Vector(0, 30, 0)
SWEP.CustomizeSnapshotFOV = 60

-- Dropped Magazine
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false

---- Sounds
local path1895 = "khrcw2/win1895/"
local pathAuto5 = "khrcw2/auto5/"

SWEP.ShootSound = "^" .. path1895 .. "shot2.wav"

--SWEP.ShootSoundSilenced = pathAuto5 .. "m14_suppressed_fp.wav"


SWEP.DistantShootSound = {

}

SWEP.DistantShootSoundSilenced = {

}

SWEP.DropMagazineSounds = {

}

-- Animations
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["ready"] = {
        Source = "draw",
		Mult = 1.2,
        MinProgress = 0.9,
		FireASAP = true,
        EventTable = {
			{ s = pathAuto5 .. "deploy.wav", t = 0.1, v = 0.6 },
		},
    },
    ["draw"] = {
        Source = "draw",
		Mult = 1.2,		
        MinProgress = 0.75,
		FireASAP = true,
        EventTable = {
			{ s = pathAuto5 .. "deploy.wav", t = 0.1, v = 0.6 },
		},
    },
	["fire"] = {
        Source = "firefull",
		Mult = 0.8,
        EventTable = {
			{ s = path1895 .. "leverforward1.wav", t = 0.3, v = 0.6 },
			{ s = path1895 .. "leverback1.wav", t = 0.6, v = 0.6 },
		}
    },
	["fire_sights"] = {
        Source = "fireironfull",
		Mult = 0.8,
        EventTable = {
			{ s = path1895 .. "leverforward1.wav", t = 0.3, v = 0.6 },
			{ s = path1895 .. "leverback1.wav", t = 0.62, v = 0.6 },
		}
    },
	["reload"] = {
		Source = "reloadclip",
		Mult = 1,
		MinProgress = 1,
		EventTable = {
			{ s = path1895 .. "leverforward1.wav", t = 0.1, v = 0.6 },
		}
	},
	["reload_start"] = {
		Source = "reloadstart",
		Mult = 1,
		MinProgress = 1,
		EventTable = {
			{ s = path1895 .. "leverforward1.wav", t = 0.1, v = 0.6 },
		}
	},
	["reload_insert"] = {
		Source = "reload",
		Mult = 0.7,
		MinProgress = 0.4,
		FireASAP = false,
		EventTable = {
			{ s = path1895 .. "shell1.wav", t = 0.05, v = 0.6 },
		}
	},
	["reload_finish"] = {
		Source = "reloadend",
		Mult = 0.9,
		MinProgress = 0.2,
		FireASAP = true,
		EventTable = {
			{ s = path1895 .. "leverback1.wav", t = 0.15, v = 0.6 },
		}
	},
}

---- Attachments
SWEP.Attachments = {}