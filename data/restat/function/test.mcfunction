execute store result score @s ss.intTemp run data get entity @s Motion[1] 5000
execute store result storage restat:test test.negate double -1 run scoreboard players get @s ss.intTemp
execute as @s as @s run function restat:test2 with storage restat:test test
scoreboard players set $y player_motion.api.launch 700
execute as @s at @s run function player_motion:api/launch_xyz
scoreboard players set $y player_motion.api.launch -700
execute as @s at @s run function player_motion:api/launch_xyz