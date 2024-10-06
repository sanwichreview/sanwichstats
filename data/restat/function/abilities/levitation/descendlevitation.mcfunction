scoreboard players set @s ss.isLevitating 0
scoreboard players set @s ss.isIdleLevitating 0
scoreboard players set @s ss.isDescendLevitating 1

attribute @s gravity modifier remove ss.levitationgravity 

execute as @s store result storage restat:gravity temp.gravity double -.01 run scoreboard players get @s ss.gravityTemp
execute as @s run function restat:abilities/levitation/descend with storage restat:gravity temp

execute if items entity @s weapon.* minecraft:mace run function restat:abilities/levitation/ground

attribute @s fall_damage_multiplier modifier add ss.tempnofd -6527 add_value
execute if items entity @s weapon.* minecraft:mace run attribute @s fall_damage_multiplier modifier remove ss.tempnofd
execute unless items entity @s weapon.* minecraft:mace run tag @s remove ss.maceDescending
execute if items entity @s weapon.* minecraft:mace run tag @s add ss.maceDescending
tag @s add ss.levitateNegateMotion
tag @s add ss.levitateSlowFall
effect give @s slow_falling 1 1 true 

#say descend