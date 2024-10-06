execute store result storage restat:damage redamage.damage double .1 run scoreboard players get @s ss.damage
execute as @s run function restat:setstats/setdamage with storage restat:damage redamage
scoreboard players set @s ss.lowDamageCheck 0