execute at @s run particle minecraft:wax_off ~ ~ ~ .5 1 .5 1 40 force @a
$summon item_frame ^ ^ ^-.2 {Invulnerable:1b,Tags:["$(id)","ss.tp"]}
$execute as @e[type=item_frame,limit=1,tag=$(id),tag=ss.tp] at @s if block ~ ~1 ~ #restat:rayignore run tp @e[type=player,scores={ss.entID=$(id)}] ~ ~-.6 ~
$execute as @e[type=item_frame,limit=1,tag=$(id),tag=ss.tp] at @s unless block ~ ~1 ~ #restat:rayignore unless block ~ ~-1 ~ #restat:rayignore run tp @e[type=player,scores={ss.entID=$(id)}] ~ ~-.6 ~
$execute as @e[type=item_frame,limit=1,tag=$(id),tag=ss.tp] at @s unless block ~ ~1 ~ #restat:rayignore if block ~ ~-1 ~ #restat:rayignore run tp @e[type=player,scores={ss.entID=$(id)}] ~ ~-1.6 ~
playsound entity.enderman.teleport master @a ~ ~ ~ .3 1.2
particle minecraft:wax_off ~ ~ ~ .5 1 .5 1 40 force @a
effect give @s slow_falling 1 0 true 
effect give @s weakness 4 0 true
damage @s[scores={ss.teleportCooldown=1..}] 6 magic by @s from @s
scoreboard players set @s ss.teleportCooldown 80
#scoreboard players set $y player_motion.api.launch 6000
execute as @s at @s if block ~ ~-1 ~ #restat:rayignore run scoreboard players set $y player_motion.api.launch 11000
execute as @s at @s if block ~ ~-1 ~ #restat:rayignore run effect give @s slow_falling 3 0 true 
execute as @s at @s if block ~ ~-1 ~ #restat:rayignore run execute as @s at @s run function player_motion:api/launch_xyz
$kill @e[type=item_frame,tag=$(id),tag=ss.tp]

#just in case
tag @s remove ss.tpRangeClick

