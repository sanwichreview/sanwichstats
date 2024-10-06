scoreboard players remove @s ss.teleportRange 1

#execute if score @s ss.teleportRange matches 0 run particle dust{color:[0.906,0.522,1.000],scale:1} ~ ~ ~ 0 0 0 20 20 force @s
execute as @s[scores={ss.teleportCharge=0..19}] unless block ~ ~ ~ #restat:rayignore positioned ^ ^ ^-.5 run particle dust{color:[0.161,0.118,0.188],scale:.5} ~ ~ ~ 0.1 0.1 0.1 20 2 force @s
execute as @s[scores={ss.teleportCooldown=0,ss.teleportCharge=20..}] unless block ~ ~ ~ #restat:rayignore positioned ^ ^ ^-.5 run particle dust{color:[0.906,0.522,1.000],scale:.5} ~ ~ ~ 0 0 0 20 2 force @s

execute as @s[scores={ss.teleportCharge=20..},tag=!ss.tpRangeClick] unless block ~ ~ ~ #restat:rayignore positioned ^ ^ ^-.5 at @s run playsound minecraft:block.copper_bulb.turn_off master @s ~ ~ ~ 2 1.2
execute as @s[scores={ss.teleportCharge=20..},tag=!ss.tpRangeClick] unless block ~ ~ ~ #restat:rayignore positioned ^ ^ ^-.5 at @s run tag @s remove ss.tpOobClick
execute as @s[scores={ss.teleportCharge=20..},tag=!ss.tpRangeClick] unless block ~ ~ ~ #restat:rayignore positioned ^ ^ ^-.5 at @s run tag @s add ss.tpRangeClick


execute as @s[scores={ss.teleportCooldown=0,ss.teleportCharge=20..}] unless block ~ ~ ~ #restat:rayignore positioned ^ ^ ^-.5 run particle dust{color:[0.180,0.039,0.239],scale:.5} ~ ~ ~ 0 0 0 20 2 force @s
execute as @s[scores={ss.teleportCooldown=1..,ss.teleportCharge=20..}] unless block ~ ~ ~ #restat:rayignore positioned ^ ^ ^-.5 run particle dust{color:[0.588,0.000,0.020],scale:.5} ~ ~ ~ 0 0 0 20 2 force @s
execute if score @s ss.teleportRange matches 0.. if block ^ ^ ^ #restat:rayignore positioned ^ ^ ^.5 run function restat:abilities/teleport/previewraycast

execute if score @s ss.teleportRange matches -1 if block ^ ^ ^-.5 #restat:rayignore run tag @s remove ss.tpRangeClick

execute if score @s[scores={ss.teleportCharge=20..},tag=!ss.tpOobClick] ss.teleportRange matches -1 if block ^ ^ ^-.5 #restat:rayignore at @s run playsound minecraft:block.copper_bulb.turn_on master @s ~ ~ ~ 1 0.5
execute if score @s[scores={ss.teleportCharge=20..},tag=!ss.tpOobClick] ss.teleportRange matches -1 if block ^ ^ ^-.5 #restat:rayignore run tag @s add ss.tpOobClick
