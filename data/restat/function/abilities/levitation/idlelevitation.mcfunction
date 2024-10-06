
scoreboard players set @s ss.isLevitating 0
scoreboard players set @s ss.isDescendLevitating 0
scoreboard players set @s ss.isIdleLevitating 1

attribute @s gravity modifier remove ss.levitationgravity 

execute as @s store result storage restat:gravity temp.gravity double -.01 run scoreboard players get @s ss.gravityTemp
execute as @s run function restat:abilities/levitation/idle with storage restat:gravity temp

attribute @s fall_damage_multiplier modifier add ss.tempnofd -4671 add_value
tag @s add ss.levitateNegateMotion

