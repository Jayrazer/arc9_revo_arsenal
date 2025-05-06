AddCSLuaFile()
SWEP.Base = "arc9_base"
SWEP.Category = "ARC9 - Revo Arsenal"
SWEP.Spawnable = true

---- FUNDAMENTALS

SWEP.Slot = 3 -- Which slot the weapon is in; starts at 0

---- Name, Description, Class, Category and Trivia
SWEP.PrintName = "Carl Gustaf"
SWEP.Description = "The SR-25 is a marksman rifle designed by Eugene Stoner after joining Knight's Armament, and is essentially an improved AR-10 system with elements taken from the M16. It was primarily used by USSOCOM in a modified form known as the Mk 11 MOD 0 and has since been developed into the M110 SASS. \n\nOriginally from Khris REVO."

SWEP.Class = "Recoilless Rifle" -- In the Customization Menu
SWEP.SubCategory = "Launchers" -- In the Spawnmenu

SWEP.Trivia = {
    ["Manufacturer"] = "SAAB Bofors",
    ["Caliber"] = "84x245mmR RCL",
    ["Mechanism"] = "Lateral percussion fire",
    ["Country of Origin"] = "Sweden",
    ["Year Introduced"] = "1948"
}

SWEP.Credits = {
	["Model & textures"] = "New World Interactive",
	["Animations"] = "speedonerd",
	["Sounds"] = "Infinity Ward",
	["Lua"] = "speedonerd"
}

SWEP.StandardPresets = {}

---- Muzzle Effects, Shell Effects, Camera
SWEP.MuzzleParticle = "muzzleflash_suppressed"
SWEP.MuzzleEffectQCA = 1

SWEP.TracerNum = 1
SWEP.TracerSize = 1

SWEP.ShellModel = "models/weapons/khrcw2/shells/308shell.mdl"
SWEP.ShellScale = 0.3
SWEP.ShellPitch = 90
SWEP.NoShellEject = true

SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 0
SWEP.CamOffsetAng = Angle(0, 90, 180)

---- View & Worldmodel
SWEP.ViewModel = "models/weapons/cw2_shark/v_cgm3.mdl"
SWEP.WorldModel = "models/weapons/cw2_shark/w_cgm3.mdl"

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
SWEP.ActivePos = Vector(-0.25, 0, 0.1)

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
SWEP.DamageType = nil

SWEP.ShootEnt = "arc9_revo_proj_84mmhe" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 1800
SWEP.ShootEntityData = {}

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
SWEP.Ammo = "smg1_grenade" -- What ammo type this gun uses.

SWEP.ChamberSize = 0
SWEP.ClipSize = 1
SWEP.ReloadInSights = false

-- Recoil
SWEP.Recoil = 0
SWEP.RecoilUp = 0
SWEP.RecoilSide = 0

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
SWEP.RPM = 500 -- How fast gun shoot
SWEP.HeatCapacity = 120 * 1.5 -- For suppresors; how many shots for full heat With big silencer (Small silencers will make this number lower down to 70%)

SWEP.Num = 1 -- How many bullets shot at once

SWEP.Firemodes = {
    { Mode = 1 }
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
     Pos = Vector(-3.5, -5, 0.73),
     Ang = Angle(0.02, 0.1, 0),
     Magnification = 1.15,
     ViewModelFOV = 55,
}

-- Customization Menu Info
SWEP.CustomizePos = Vector(8, 45, 5)
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizeRotateAnchor = Vector(18, -2.5, -3)

SWEP.CustomizeSnapshotPos = Vector(0, 30, 0)
SWEP.CustomizeSnapshotFOV = 60

-- Dropped Magazine
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/Items/combine_rifle_cartridge01.mdl"
SWEP.DropMagazineTime = 1.2
SWEP.DropMagazineQCA = 5
SWEP.DropMagazinePos = Vector(-45, 20, -15)
SWEP.DropMagazineAng = Angle(0, 95, 90)
SWEP.DropMagazineVelocity = Vector(-120, 60, -20)

---- Sounds
local pathCarlM3 = "weapons/cw2_shark/cgm3/"

SWEP.ShootSound = pathCarlM3 .. "weap_kgolf_fire_plr_01.ogg"

--SWEP.ShootSoundSilenced = pathCarlM3 .. "m14_suppressed_fp.wav"


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
        MinProgress = 0.75,
		FireASAP = true,
        --EventTable = {},
    },
	["fire"] = {
        Source = "fire",
        EventTable = {}
    },
	["reload"] = {
		Source = "reload",
		Mult = 0.8,
		MinProgress = 1,
		RefillProgress = 0.6,
		FireASAP = true,
		EventTable = {
			{ s = pathCarlM3 .. "wfoly_la_kgolf_reload_rotate.ogg", t = 0.1, v = 0.6 },
			{ s = pathCarlM3 .. "wfoly_la_kgolf_reload_breechopen.ogg", t = 0.8, v = 0.6 },
			{ s = pathCarlM3 .. "wfoly_la_kgolf_reload_shellout.ogg", t = 1.2, v = 0.6 },
			{ s = pathCarlM3 .. "wfoly_la_kgolf_reload_shelldrop.ogg", t = 2, v = 0.6 },
			{ s = pathCarlM3 .. "wfoly_la_kgolf_reload_raise.ogg", t = 2.6, v = 0.6 },
			{ s = pathCarlM3 .. "wfoly_la_kgolf_reload_shellin.ogg", t = 3.9, v = 0.6 },
			--{ s = pathCarlM3 .. "wfoly_la_kgolf_reload_breechclose.ogg", t = 4.9, v = 0.6 },
			{ s = pathCarlM3 .. "wfoly_la_kgolf_reload_breechclose2.ogg", t = 5.12, v = 0.6 },
			{ s = pathCarlM3 .. "wfoly_la_kgolf_reload_raise.ogg", t = 6, v = 0.6 },
		}
	},
}

---- Attachments
