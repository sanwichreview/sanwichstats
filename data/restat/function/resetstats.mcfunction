function restat:items/nohead/remove
function restat:items/nochest/remove
tag @s remove ss.noelytra
tag @s remove ss.nochest
tag @s remove ss.nolegs
tag @s remove ss.nofeet

function restat:items/abilityitems/remove
#tag @s remove ss.ability.teleport
#tag @s remove ss.ability.levitation
#tag @s remove ss.majorAbility

#scoreboard players set @s ss.size 10
#scoreboard players set @s ss.health 20
#scoreboard players set @s ss.armor 0
#scoreboard players set @s ss.damage 10
#scoreboard players set @s ss.speed 100
#scoreboard players set @s ss.blockReach 45
#scoreboard players set @s ss.entityReach 30
#scoreboard players set @s ss.mineSpeed 10
#scoreboard players set @s ss.attackSpeed 40

scoreboard players set @s ss.size 0
scoreboard players set @s ss.health 0
scoreboard players set @s ss.armor 0
scoreboard players set @s ss.damage 0
scoreboard players set @s ss.speed 0
scoreboard players set @s ss.blockReach 0
scoreboard players set @s ss.entityReach 0
scoreboard players set @s ss.mineSpeed 0
scoreboard players set @s ss.attackSpeed 0

scoreboard players set @s ss.sizeBonus 0
scoreboard players set @s ss.healthBonus 0
scoreboard players set @s ss.armorBonus 0
scoreboard players set @s ss.damageBonus 0
scoreboard players set @s ss.speedBonus 0
scoreboard players set @s ss.blockReachBonus 0
scoreboard players set @s ss.entityReachBonus 0
scoreboard players set @s ss.mineSpeedBonus 0
scoreboard players set @s ss.attackSpeedBonus 0

advancement revoke @s only restat:nog


function restat:setstats