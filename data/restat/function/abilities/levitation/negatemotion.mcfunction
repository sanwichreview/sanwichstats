
#execute as @s at @s unless entity @s[nbt={active_effects:[{id:"minecraft:slow_falling"}]}] rotated ~ ~ facing ^ ^ ^ run tp @s @s
#scoreboard players set $y player_motion.api.launch 1000
#execute as @s[scores={ss.isDescendLevitating=1},tag=!ss.levitateSlowFall] run function player_motion:api/launch_xyz
#scoreboard players set $y player_motion.api.launch -1000
#execute as @s[scores={ss.isLevitating=1},tag=!ss.levitateSlowFall] run function player_motion:api/launch_xyz
scoreboard players set @s ss.isLevitating 0
scoreboard players set @s ss.isDescendLevitating 0
tag @s remove ss.levitateNegateMotion
tag @s remove ss.levitateSlowFall
