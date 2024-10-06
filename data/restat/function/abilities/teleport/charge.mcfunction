scoreboard players add @s[scores={ss.teleportCharge=..19}] ss.teleportCharge 1
execute as @s[scores={ss.teleportCharge=1..3}] at @s run playsound minecraft:block.copper_bulb.turn_on master @s ~ ~ ~ 1 1.6
execute as @s[scores={ss.teleportCharge=20..},tag=!ss.tpPrimed] run tag @s add ss.tpPrimed
execute as @s[scores={ss.teleportCharge=20..,ss.teleportCooldown=0}] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 0.25 1.42
execute as @s[scores={ss.teleportCharge=20..,ss.teleportCooldown=0}] at @s run particle dust_color_transition{from_color:[0.659,0.318,1.000],scale:1,to_color:[0.000,0.000,0.000]} ~ ~ ~ .5 1 .5 1 36 normal
execute as @s[scores={ss.teleportCharge=20..,ss.teleportCooldown=1..}] at @s run playsound minecraft:block.fire.ambient master @s ~ ~ ~ 1 1.64
execute as @s[scores={ss.teleportCharge=20..,ss.teleportCooldown=1..}] at @s run particle dust_color_transition{from_color:[1.000,0.039,0.039],scale:1,to_color:[0.000,0.000,0.000]} ~ ~ ~ .5 1 .5 .1 60 normal