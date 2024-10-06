scoreboard players remove @s ss.teleportRange 1


execute if score @s ss.teleportRange matches -1 run function restat:abilities/teleport/fail
execute unless block ~ ~ ~ #restat:rayignore positioned ^ ^ ^ run function restat:abilities/teleport/teleportinit
execute if score @s ss.teleportRange matches 0.. if block ^ ^ ^ #restat:rayignore positioned ^ ^ ^.2 run function restat:abilities/teleport/raycast
execute if score @s ss.teleportRange matches 0.. if block ^ ^ ^ #restat:rayignore positioned ^ ^ ^.2 run particle minecraft:wax_off ~ ~ ~ .2 .2 .2 1 1 normal @a 
