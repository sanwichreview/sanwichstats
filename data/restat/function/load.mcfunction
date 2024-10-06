
scoreboard objectives add ss.entID dummy
scoreboard players add $total ss.entID 0
scoreboard players add @a ss.entID 0
scoreboard objectives add ss.deathDetect deathCount
scoreboard objectives add ss.incompatabilityCheck dummy
scoreboard players add @a ss.incompatabilityCheck 0
scoreboard objectives add ss.replaceCheck dummy
scoreboard players add @a ss.replaceCheck 0
scoreboard objectives add ss.lowDamageCheck dummy
scoreboard players set @a ss.lowDamageCheck 0
scoreboard objectives add ss.lowDamageCompare dummy
scoreboard objectives add statDisplayTimer dummy
scoreboard objectives add ss.usedEnderPearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add ss.crouchCount dummy
scoreboard objectives add ss.jumpCount minecraft.custom:minecraft.jump
scoreboard players add @a ss.jumpCount 0
scoreboard objectives add ss.isCrouched dummy
scoreboard players add @a ss.isCrouched 0 
scoreboard objectives add ss.isDoubleCrouched dummy
scoreboard players add @a ss.isDoubleCrouched 0
scoreboard objectives add ss.crouchTimer dummy
scoreboard players add @a ss.crouchTimer 0
scoreboard objectives add ss.leave minecraft.custom:minecraft.leave_game
scoreboard players add @a ss.leave 0
scoreboard objectives add ss.randomInt dummy
scoreboard objectives add ss.usedMace minecraft.used:minecraft.mace
scoreboard players add @a ss.usedMace 0

scoreboard objectives add showstats trigger
scoreboard players enable @a showstats
scoreboard objectives add showbonuses trigger
scoreboard players enable @a showbonuses
scoreboard objectives add showboth trigger
scoreboard players enable @a showboth

scoreboard objectives add ss.isLevitating dummy
scoreboard players add @a ss.isLevitating 0
scoreboard objectives add ss.isIdleLevitating dummy
scoreboard players add @a ss.isDoubleCrouched 0
scoreboard objectives add ss.isDescendLevitating dummy
scoreboard players add @a ss.isDoubleCrouched 0
scoreboard objectives add ss.levitationUnstuckTimer dummy
scoreboard players add @a ss.levitationUnstuckTimer 0
scoreboard objectives add ss.levitationReapplyFD dummy

scoreboard objectives add ss.teleportRange dummy
scoreboard objectives add ss.teleportCooldown dummy
scoreboard players add @a ss.teleportCooldown 0
scoreboard objectives add ss.teleportCharge dummy
scoreboard players add @a ss.teleportCharge 0

scoreboard objectives add ss.effect.chaosTruffle dummy
scoreboard players add @a ss.effect.chaosTruffle 0

scoreboard objectives add ss.effect.blockReachPie dummy
scoreboard players add @a ss.effect.blockReachPie 0

scoreboard objectives add ss.intTemp dummy
scoreboard objectives add ss.mathTemp dummy
scoreboard objectives add ss.mathOut dummy

scoreboard objectives add ss.size dummy
scoreboard players set @a[tag=!ss.initialized] ss.size 10

scoreboard objectives add ss.health dummy
scoreboard players set @a[tag=!ss.initialized] ss.health 20

scoreboard objectives add ss.armor dummy
scoreboard players set @a[tag=!ss.initialized] ss.armor 0

scoreboard objectives add ss.damage dummy
scoreboard players set @a[tag=!ss.initialized] ss.damage 10

scoreboard objectives add ss.speed dummy
scoreboard players set @a[tag=!ss.initialized] ss.speed 100

scoreboard objectives add ss.blockReach dummy
scoreboard players set @a[tag=!ss.initialized] ss.blockReach 45

scoreboard objectives add ss.entityReach dummy
scoreboard players set @a[tag=!ss.initialized] ss.entityReach 30

scoreboard objectives add ss.mineSpeed dummy
scoreboard players set @a[tag=!ss.initialized] ss.mineSpeed 10

scoreboard objectives add ss.attackSpeed dummy
scoreboard players set @a[tag=!ss.initialized] ss.attackSpeed 40


#BONUS stats
scoreboard objectives add ss.sizeBonus dummy
scoreboard players add @a ss.sizeBonus 0

scoreboard objectives add ss.healthBonus dummy
scoreboard players add @a ss.health 0

scoreboard objectives add ss.armorBonus dummy
scoreboard players add @a ss.armorBonus 0

scoreboard objectives add ss.damageBonus dummy
scoreboard players add @a ss.damageBonus 0

scoreboard objectives add ss.speedBonus dummy
scoreboard players add @a ss.speedBonus 0

scoreboard objectives add ss.blockReachBonus dummy
scoreboard players add @a ss.blockReachBonus 0

scoreboard objectives add ss.entityReachBonus dummy
scoreboard players add @a ss.entityReachBonus 0

scoreboard objectives add ss.mineSpeedBonus dummy
scoreboard players add @a ss.mineSpeedBonus 0

scoreboard objectives add ss.attackSpeedBonus dummy
scoreboard players add @a ss.attackSpeedBonus 0



tag @a[tag=!ss.initialized] add ss.initialized

#announce reload
execute as @s run tellraw @s [{"color":"#EAC435","text":"sanwichstats enabled! Check out the "},{"color":"#345995","text":"'Advancements'"},{"color":"#eac435","text":" tab for more info."}]
execute as @a[tag=ss.admin] run tellraw @s [{"color":"#EAC435","text":"sanwichstats enabled! Check out the "},{"color":"#345995","text":"'Advancements'"},{"color":"#eac435","text":" tab for more info."}]


#recipe unlocks
recipe give @a restat:statitems/adultgummy
recipe give @a restat:statitems/adultgummyb
recipe give @a restat:statitems/attackpowder
recipe give @a restat:bakersapple
recipe give @a restat:statitems/beatroot
recipe give @a restat:bottleoenchanting
recipe give @a restat:bottleoenchantingb
recipe give @a restat:statitems/burrowerbrew
recipe give @a restat:cryingobsidian
recipe give @a restat:echoshard
recipe give @a restat:statitems/fastbread
recipe give @a restat:statitems/healthnectar
recipe give @a restat:statitems/megamush
recipe give @a restat:statitems/minimush
recipe give @a restat:statitems/royalbiscuits
recipe give @a restat:statitems/royalbiscuitsb
recipe give @a restat:statitems/supplementbrick
recipe give @a restat:statitems/supplementbrickb
recipe give @a restat:statitems/tequila
recipe give @a restat:statitems/blockreachpie
recipe give @a restat:statitems/chaostruffle
recipe give @a restat:abilityitems/floatmacaron
recipe give @a restat:abilityitems/instantpopcorn
recipe give @a restat:nog/nog

advancement grant @a from restat:packdesc/root 
advancement revoke @a[tag=!ss.ability.levitation] only restat:packdesc/abilityitems/floatmacaron-on
advancement revoke @a[tag=!ss.ability.teleport] only restat:packdesc/abilityitems/instantpopcorn-on
advancement revoke @a[scores={ss.effect.blockReachPie=0}] only restat:packdesc/noarmor/blockreachpie-on
advancement revoke @a[scores={ss.effect.chaosTruffle=0}] only restat:packdesc/noarmor/chaostruffle-on