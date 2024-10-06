scoreboard players add @s[scores={ss.teleportCharge=..59}] ss.teleportCharge 1

effect give @s slow_falling 1 10 true

#execute as @s[scores={ss.teleportCharge=5}] store result score @s ss.intTemp run data get entity @s Motion[1] 100
#execute as @s[scores={ss.teleportCharge=5,ss.intTemp=..7}] run scoreboard players set $y player_motion.api.launch 400
#execute as @s[scores={ss.teleportCharge=5,ss.intTemp=16..}] run scoreboard players set $y player_motion.api.launch -200
#execute as @s[scores={ss.teleportCharge=5,ss.intTemp=..7}] run execute as @s at @s run function player_motion:api/launch_xyz
#execute as @s[scores={ss.teleportCharge=5,ss.intTemp=16..}] run execute as @s at @s run function player_motion:api/launch_xyz
execute as @s[scores={ss.teleportCharge=1}] run effect give @s levitation 1 4 true

execute as @s[scores={ss.teleportCharge=6},nbt={active_effects:[{id:"minecraft:levitation",duration:15}]}] run effect clear @s levitation


execute as @s[scores={ss.teleportCharge=3}] at @s run effect give @s slow_falling 1 10 true
execute as @s[scores={ss.teleportCharge=59..}] at @s run playsound block.beacon.deactivate master @s ~ ~ ~ .4 .7 .3 
execute as @s[scores={ss.teleportCharge=59..}] at @s run function restat:abilities/teleport/unfloat



execute as @s[scores={ss.teleportCharge=1..3}] at @s run playsound minecraft:block.copper_bulb.turn_on master @s ~ ~ ~ 1 1.6
execute as @s[scores={ss.teleportCharge=20},tag=!ss.tpPrimed] run tag @s add ss.tpPrimed
execute as @s[scores={ss.teleportCharge=20,ss.teleportCooldown=0}] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 0.25 1.42
execute as @s[scores={ss.teleportCharge=20,ss.teleportCooldown=0}] at @s run particle dust_color_transition{from_color:[0.659,0.318,1.000],scale:1,to_color:[0.000,0.000,0.000]} ~ ~ ~ .5 1 .5 1 36 normal
execute as @s[scores={ss.teleportCharge=20,ss.teleportCooldown=1..}] at @s run playsound minecraft:block.fire.ambient master @s ~ ~ ~ 1 1.64
execute as @s[scores={ss.teleportCharge=20,ss.teleportCooldown=1..}] at @s run particle dust_color_transition{from_color:[1.000,0.039,0.039],scale:1,to_color:[0.000,0.000,0.000]} ~ ~ ~ .5 1 .5 .1 60 normal


execute as @s[scores={ss.teleportCharge=1}] store result score @s ss.gravityTemp run attribute @s gravity get 100
execute as @s[scores={ss.teleportCharge=1}] store result storage restat:gravity temp.gravity double -.01 run scoreboard players get @s ss.gravityTemp
execute as @s[scores={ss.teleportCharge=1}] run function restat:abilities/teleport/float with storage restat:gravity temp