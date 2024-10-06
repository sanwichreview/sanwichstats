

tag @s remove ss.tpPrimed
#kill @e[type=ender_pearl,sort=nearest,limit=1] 
scoreboard players set @s ss.teleportRange 500
execute as @s at @s rotated as @s anchored eyes positioned ^ ^ ^ run function restat:abilities/teleport/raycast
