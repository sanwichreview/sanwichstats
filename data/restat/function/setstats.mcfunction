
scoreboard players operation @s ss.mathTemp = @s ss.size
scoreboard players operation @s ss.mathTemp += @s ss.sizeBonus
execute store result storage restat:size resize.size double .1 run scoreboard players get @s ss.mathTemp
execute as @s run function restat:setstats/setsize with storage restat:size resize

scoreboard players operation @s ss.mathTemp = @s ss.health
scoreboard players operation @s ss.mathTemp += @s ss.healthBonus
execute store result storage restat:health rehealth.health double 1 run scoreboard players get @s ss.mathTemp
execute as @s run function restat:setstats/sethealth with storage restat:health rehealth
execute as @s[scores={ss.health=21..}] run effect give @s instant_health 2 1 true 

scoreboard players operation @s ss.mathTemp = @s ss.armor
scoreboard players operation @s ss.mathTemp += @s ss.armorBonus
execute store result storage restat:armor rearmor.armor double 1 run scoreboard players get @s ss.mathTemp
execute as @s run function restat:setstats/setarmor with storage restat:armor rearmor

scoreboard players operation @s ss.mathTemp = @s ss.damage
scoreboard players operation @s ss.mathTemp += @s ss.damageBonus
execute as @s store result storage restat:damage redamage.damage double .1 run scoreboard players get @s ss.mathTemp
execute as @s[scores={ss.lowDamageCheck=0}] run function restat:setstats/setdamage with storage restat:damage redamage

scoreboard players operation @s ss.mathTemp = @s ss.speed
scoreboard players operation @s ss.mathTemp += @s ss.speedBonus
execute store result storage restat:speed respeed.speed double .001 run scoreboard players get @s ss.mathTemp
execute as @s run function restat:setstats/setspeed with storage restat:speed respeed

scoreboard players operation @s ss.mathTemp = @s ss.blockReach
scoreboard players operation @s ss.mathTemp += @s ss.blockReachBonus
execute store result storage restat:blockreach reblockreach.blockreach float .1 run scoreboard players get @s ss.mathTemp
execute as @s run function restat:setstats/setblockreach with storage restat:blockreach reblockreach

scoreboard players operation @s ss.mathTemp = @s ss.entityReach
scoreboard players operation @s ss.mathTemp += @s ss.entityReachBonus
execute store result storage restat:entityreach reentityreach.entityreach double .1 run scoreboard players get @s ss.mathTemp
execute as @s run function restat:setstats/setentityreach with storage restat:entityreach reentityreach

scoreboard players operation @s ss.mathTemp = @s ss.mineSpeed
scoreboard players operation @s ss.mathTemp += @s ss.mineSpeedBonus
execute store result storage restat:minespeed reminespeed.minespeed double .1 run scoreboard players get @s ss.mathTemp
execute as @s run function restat:setstats/setminespeed with storage restat:minespeed reminespeed

scoreboard players operation @s ss.mathTemp = @s ss.attackSpeed
scoreboard players operation @s ss.mathTemp += @s ss.attackSpeedBonus
execute store result storage restat:attackspeed reattackspeed.attackspeed double .1 run scoreboard players get @s ss.mathTemp
execute as @s run function restat:setstats/setattackspeed with storage restat:attackspeed reattackspeed



execute as @s[scores={ss.size=17..}] run tag @s add ss.maxSize
execute as @s[scores={ss.size=..3}] run tag @s add ss.minSize

execute as @s[scores={ss.health=30..}] run tag @s add ss.maxHealth
execute as @s[scores={ss.health=..2}] run tag @s add ss.minHealth

execute as @s[scores={ss.armor=20..}] run tag @s add ss.maxArmor
execute as @s[scores={ss.armor=..-20}] run tag @s add ss.minArmor

execute as @s[scores={ss.damage=35..}] run tag @s add ss.maxDamage
execute as @s[scores={ss.damage=..-35}] run tag @s add ss.minDamage

execute as @s[scores={ss.speed=160..}] run tag @s add ss.maxSpeed
execute as @s[scores={ss.speed=..70}] run tag @s add ss.minSpeed

execute as @s[scores={ss.blockReach=75..}] run tag @s add ss.maxBlockReach
execute as @s[scores={ss.blockReach=..25}] run tag @s add ss.minBlockReach

execute as @s[scores={ss.entityReach=50..}] run tag @s add ss.maxEntityReach
execute as @s[scores={ss.entityReach=..25}] run tag @s add ss.minEntityReach

execute as @s[scores={ss.mineSpeed=25..}] run tag @s add ss.maxMineSpeed
execute as @s[scores={ss.mineSpeed=..5}] run tag @s add ss.minMineSpeed

execute as @s[scores={ss.attackSpeed=48..}] run tag @s add ss.maxAttackSpeed
execute as @s[scores={ss.attackSpeed=..36}] run tag @s add ss.minAttackSpeed


execute as @s[scores={ss.size=17..}] run tag @s add ss.statCap
execute as @s[scores={ss.size=..3}] run tag @s add ss.statCap

execute as @s[scores={ss.health=30..}] run tag @s add ss.statCap
execute as @s[scores={ss.health=..2}] run tag @s add ss.statCap

execute as @s[scores={ss.armor=20..}] run tag @s add ss.statCap
execute as @s[scores={ss.armor=..-20}] run tag @s add ss.statCap

execute as @s[scores={ss.damage=35..}] run tag @s add ss.statCap
execute as @s[scores={ss.damage=..0}] run tag @s add ss.statCap

execute as @s[scores={ss.speed=160..}] run tag @s add ss.statCap
execute as @s[scores={ss.speed=..70}] run tag @s add ss.statCap

execute as @s[scores={ss.blockReach=75..}] run tag @s add ss.statCap
execute as @s[scores={ss.blockReach=..25}] run tag @s add ss.statCap

execute as @s[scores={ss.entityReach=50..}] run tag @s add ss.statCap
execute as @s[scores={ss.entityReach=..25}] run tag @s add ss.statCap

execute as @s[scores={ss.mineSpeed=25..}] run tag @s add ss.statCap
execute as @s[scores={ss.mineSpeed=..5}] run tag @s add ss.statCap

execute as @s[scores={ss.attackSpeed=48..}] run tag @s add ss.statCap
execute as @s[scores={ss.attackSpeed=..36}] run tag @s add ss.statCap


execute as @s[scores={ss.size=4..16}] run tag @s remove ss.maxSize
execute as @s[scores={ss.size=4..16}] run tag @s remove ss.minSize

execute as @s[scores={ss.health=4..28}] run tag @s remove ss.maxHealth
execute as @s[scores={ss.health=4..28}] run tag @s remove ss.minHealth

execute as @s[scores={ss.armor=-19..19}] run tag @s remove ss.maxArmor
execute as @s[scores={ss.armor=-19..19}] run tag @s remove ss.minArmor

execute as @s[scores={ss.damage=1..34}] run tag @s remove ss.maxDamage
execute as @s[scores={ss.damage=1..34}] run tag @s remove ss.minDamage

execute as @s[scores={ss.speed=71..159}] run tag @s remove ss.maxSpeed
execute as @s[scores={ss.speed=71..159}] run tag @s remove ss.minSpeed

execute as @s[scores={ss.blockReach=26..74}] run tag @s remove ss.maxBlockReach
execute as @s[scores={ss.blockReach=26..74}] run tag @s remove ss.minBlockReach

execute as @s[scores={ss.entityReach=26..49}] run tag @s remove ss.maxEntityReach
execute as @s[scores={ss.entityReach=26..49}] run tag @s remove ss.minEntityReach

execute as @s[scores={ss.mineSpeed=6..24}] run tag @s remove ss.maxMineSpeed
execute as @s[scores={ss.mineSpeed=6..24}] run tag @s remove ss.minMineSpeed

execute as @s[scores={ss.attackSpeed=..47}] run tag @s remove ss.maxAttackSpeed
execute as @s[scores={ss.attackSpeed=37..}] run tag @s remove ss.minAttackSpeed




execute if entity @s[tag=!ss.maxSize,tag=!ss.minSize,tag=!ss.maxHealth,tag=!ss.minHealth,tag=!ss.maxArmor,tag=!ss.minArmor,tag=!ss.maxDamage,tag=!ss.minDamage,tag=!ss.maxSpeed,tag=!ss.minSpeed,tag=!ss.maxBlockReach,tag=!ss.minBlockReach,tag=!ss.maxEntityReach,tag=!ss.minEntityReach,tag=!ss.maxMineSpeed,tag=!minMineSpeed,tag=!ss.maxAttackSpeed,tag=!ss.minAttackSpeed] run tag @s remove ss.statCap

execute as @s[tag=ss.statDisplayLinked] run function restat:statdisplay/tellstats
execute as @s[tag=ss.bonusDisplayLinked] run function restat:statbonusdisplay/tellbonuses

scoreboard players set @s ss.lowDamageCheck 0

scoreboard players set @s ss.deathDetect 0


advancement revoke @s only restat:newdimension

