
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



execute store result score @s ss.sizeCompare run attribute @s scale get 10

execute store result score @s ss.mathTemp run attribute @s scale base get 10
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s scale modifier value get ss.size
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
execute as @s[scores={ss.size=7..}] run tag @s add ss.maxSize
execute as @s[scores={ss.size=..-7}] run tag @s add ss.minSize
execute as @s[scores={ss.mathTemp=..3}] run tag @s add ss.minSize


execute store result score @s ss.healthCompare run attribute @s max_health get 1

execute store result score @s ss.mathTemp run attribute @s max_health base get
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s max_health modifier value get ss.health
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
execute as @s[scores={ss.health=10..}] run tag @s add ss.maxHealth
execute as @s[scores={ss.health=..-18}] run tag @s add ss.minHealth
execute as @s[scores={ss.mathTemp=..2}] run tag @s add ss.minHealth


execute store result score @s ss.armorCompare run attribute @s armor get 1

execute store result score @s ss.mathTemp run attribute @s armor base get
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s armor modifier value get ss.armor
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
execute as @s[scores={ss.armor=20..}] run tag @s add ss.maxArmor
execute as @s[scores={ss.armor=..-20}] run tag @s add ss.minArmor
execute as @s[scores={ss.mathTemp=..-20}] run tag @s add ss.minArmor


execute store result score @s ss.mathTemp run attribute @s attack_damage base get 10
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s attack_damage modifier value get ss.damage 10
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
scoreboard players operation @s ss.damageCompare = @s ss.intTemp
execute as @s[scores={ss.damage=35..}] run tag @s add ss.maxDamage
execute as @s[scores={ss.damage=..-35}] run tag @s add ss.minDamage


execute store result score @s ss.mathTemp run attribute @s movement_speed base get 1000
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s movement_speed modifier value get ss.speed 1000
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
scoreboard players operation @s ss.speedCompare = @s ss.intTemp
execute as @s[scores={ss.speed=60..}] run tag @s add ss.maxSpeed
execute as @s[scores={ss.speed=..-30}] run tag @s add ss.minSpeed


execute store result score @s ss.mathTemp run attribute @s block_interaction_range base get 10
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s block_interaction_range modifier value get ss.blockreach 10
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
scoreboard players operation @s ss.blockReachCompare = @s ss.intTemp
execute as @s[scores={ss.blockReach=30..}] run tag @s add ss.maxBlockReach
execute as @s[scores={ss.blockReach=..-20}] run tag @s add ss.minBlockReach


execute store result score @s ss.mathTemp run attribute @s entity_interaction_range base get 10
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s entity_interaction_range modifier value get ss.entityreach 10
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
scoreboard players operation @s ss.entityReachCompare = @s ss.intTemp
execute as @s[scores={ss.entityReach=20..}] run tag @s add ss.maxEntityReach
execute as @s[scores={ss.entityReach=..-20}] run tag @s add ss.minEntityReach


execute store result score @s ss.mathTemp run attribute @s block_break_speed base get 10
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s block_break_speed modifier value get ss.minespeed 10
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
scoreboard players operation @s ss.mineSpeedCompare = @s ss.intTemp
execute as @s[scores={ss.mineSpeed=15..}] run tag @s add ss.maxMineSpeed
execute as @s[scores={ss.mineSpeed=..-5}] run tag @s add ss.minMineSpeed


execute store result score @s ss.mathTemp run attribute @s attack_speed base get 10
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s attack_speed modifier value get ss.attackspeed 10
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
scoreboard players operation @s ss.attackSpeedCompare = @s ss.intTemp
execute as @s[scores={ss.attackSpeed=8..}] run tag @s add ss.maxAttackSpeed
execute as @s[scores={ss.attackSpeed=..-4}] run tag @s add ss.minAttackSpeed



execute as @s[tag=ss.maxSize] run tag @s add ss.statCap
execute as @s[tag=ss.minSize] run tag @s add ss.statCap

execute as @s[tag=ss.maxHealth] run tag @s add ss.statCap
execute as @s[tag=ss.minHealth] run tag @s add ss.statCap

execute as @s[tag=ss.maxArmor] run tag @s add ss.statCap
execute as @s[tag=ss.minArmor] run tag @s add ss.statCap

execute as @s[tag=ss.maxDamage] run tag @s add ss.statCap
execute as @s[tag=ss.minDamage] run tag @s add ss.statCap

execute as @s[tag=ss.maxSpeed] run tag @s add ss.statCap
execute as @s[tag=ss.minSpeed] run tag @s add ss.statCap

execute as @s[tag=ss.maxBlockReach] run tag @s add ss.statCap
execute as @s[tag=ss.minBlockReach] run tag @s add ss.statCap

execute as @s[tag=ss.maxEntityReach] run tag @s add ss.statCap
execute as @s[tag=ss.minEntityReach] run tag @s add ss.statCap

execute as @s[tag=ss.maxMineSpeed] run tag @s add ss.statCap
execute as @s[tag=ss.minMineSpeed] run tag @s add ss.statCap

execute as @s[tag=ss.maxAttackSpeed] run tag @s add ss.statCap
execute as @s[tag=ss.minAttackSpeed] run tag @s add ss.statCap



execute store result score @s ss.mathTemp run attribute @s scale base get 10
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s scale modifier value get ss.size
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
execute as @s[scores={ss.size=..6}] run tag @s remove ss.maxSize
execute as @s[scores={ss.size=-6..}] run tag @s remove ss.minSize
execute as @s[scores={ss.mathTemp=4..}] run tag @s remove ss.minSize

execute store result score @s ss.mathTemp run attribute @s max_health base get
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s max_health modifier value get ss.health
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
execute as @s[scores={ss.health=..9}] run tag @s remove ss.maxHealth
execute as @s[scores={ss.mathTemp=3..}] run tag @s remove ss.minHealth

execute store result score @s ss.mathTemp run attribute @s armor base get
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s armor modifier value get ss.armor
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
execute as @s[scores={ss.armor=..19}] run tag @s remove ss.maxArmor
execute as @s[scores={ss.armor=-19..}] run tag @s remove ss.minArmor
execute as @s[scores={ss.mathTemp=-19..}] run tag @s remove ss.minArmor

execute store result score @s ss.mathTemp run attribute @s attack_damage base get 10
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s attack_damage modifier value get ss.damage 10
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
execute as @s[scores={ss.damage=..34}] run tag @s remove ss.maxDamage
execute as @s[scores={ss.damage=-34..}] run tag @s remove ss.minDamage
execute as @s[scores={ss.mathTemp=-34..}] run tag @s remove ss.minDamage

execute store result score @s ss.mathTemp run attribute @s movement_speed base get 1000
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s movement_speed modifier value get ss.speed 1000
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
execute as @s[scores={ss.speed=..59}] run tag @s remove ss.maxSpeed
execute as @s[scores={ss.speed=-29..}] run tag @s remove ss.minSpeed

execute store result score @s ss.mathTemp run attribute @s block_interaction_range base get 10
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s block_interaction_range modifier value get ss.blockreach 10
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
execute as @s[scores={ss.blockReach=..29}] run tag @s remove ss.maxBlockReach
execute as @s[scores={ss.blockReach=-19..}] run tag @s remove ss.minBlockReach

execute store result score @s ss.mathTemp run attribute @s entity_interaction_range base get 10
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s entity_interaction_range modifier value get ss.entityreach 10
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
execute as @s[scores={ss.entityReach=..19}] run tag @s remove ss.maxEntityReach
execute as @s[scores={ss.entityReach=-19..}] run tag @s remove ss.minEntityReach

execute store result score @s ss.mathTemp run attribute @s block_break_speed base get 10
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s block_break_speed modifier value get ss.minespeed 10
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
execute as @s[scores={ss.mineSpeed=..14}] run tag @s remove ss.maxMineSpeed
execute as @s[scores={ss.mineSpeed=-4..}] run tag @s remove ss.minMineSpeed

execute store result score @s ss.mathTemp run attribute @s attack_speed base get 10
scoreboard players set @s ss.intTemp 0
execute store result score @s ss.intTemp run attribute @s attack_speed modifier value get ss.attackspeed 10
scoreboard players operation @s ss.mathTemp += @s ss.intTemp
execute as @s[scores={ss.attackSpeed=..7}] run tag @s remove ss.maxAttackSpeed
execute as @s[scores={ss.attackSpeed=-3..}] run tag @s remove ss.minAttackSpeed






execute if entity @s[tag=!ss.maxSize,tag=!ss.minSize,tag=!ss.maxHealth,tag=!ss.minHealth,tag=!ss.maxArmor,tag=!ss.minArmor,tag=!ss.maxDamage,tag=!ss.minDamage,tag=!ss.maxSpeed,tag=!ss.minSpeed,tag=!ss.maxBlockReach,tag=!ss.minBlockReach,tag=!ss.maxEntityReach,tag=!ss.minEntityReach,tag=!ss.maxMineSpeed,tag=!minMineSpeed,tag=!ss.maxAttackSpeed,tag=!ss.minAttackSpeed] run tag @s remove ss.statCap

execute as @s[tag=ss.statDisplayLinked] run function restat:statdisplay/tellstats
execute as @s[tag=ss.bonusDisplayLinked] run function restat:statbonusdisplay/tellbonuses

scoreboard players set @s ss.lowDamageCheck 0

scoreboard players set @s ss.deathDetect 0


scoreboard players set @s ss.refreshCheck 1

advancement revoke @s only restat:newdimension

