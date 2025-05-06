AddCSLuaFile()

ENT.Base                     = "arc9_revo_proj_base"
ENT.PrintName                = "84mm HE"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/ar2_grenade.mdl"

ENT.IsRocket = false // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = false // projectile explodes when it takes damage.
ENT.ExplodeUnderwater = true

ENT.Delay = 0

ENT.ExplodeSounds = {
    "^weapons/explode3.wav",
    "^weapons/explode4.wav",
    "^weapons/explode5.wav",
}

--ENT.AudioLoop = "TacRP/weapons/rpg7/rocket_flight-1.wav"

function ENT:Detonate(ent)
    local attacker = self.Attacker or self:GetOwner() or self
    --local mult = TacRP.ConVars["mult_damage_explosive"]:GetFloat() * (self.NPCDamage and 0.25 or 1)
    local dmg = 150

    util.BlastDamage(self, attacker, self:GetPos(), 300, dmg)
    self:ImpactTraceAttack(ent, dmg, 100)

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("Explosion", fx)
    end

    self:EmitSound(table.Random(self.ExplodeSounds), 125)

    self:Remove()
end