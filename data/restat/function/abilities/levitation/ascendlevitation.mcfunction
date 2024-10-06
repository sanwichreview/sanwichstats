execute as @s[scores={ss.isIdleLevitating=0,ss.levitationUnstuckTimer=0},tag=!ss.levitator] at @s run playsound minecraft:sanwichstats.magic1 master @a ~ ~ ~ .1 0.8
execute as @s[scores={ss.isIdleLevitating=0,ss.levitationUnstuckTimer=0},tag=!ss.levitator] at @s run particle minecraft:dust_plume ~ ~ ~ .15 .15 .15 .05 70 force @a
execute as @s[scores={ss.isIdleLevitating=0,ss.levitationUnstuckTimer=0},tag=!ss.levitator] at @s run particle minecraft:wax_off ~ ~ ~ .5 1 .5 1 40 force @a
scoreboard players set @s ss.isIdleLevitating 0
scoreboard players set @s ss.isDescendLevitating 0
scoreboard players set @s ss.isLevitating 1

attribute @s fall_damage_multiplier modifier add ss.tempnofd -6527 add_value

attribute @s gravity modifier remove ss.levitationgravity 

execute as @s[tag=!ss.levitator] store result score @s ss.gravityTemp run attribute @s gravity get 100

tag @s[tag=!ss.levitator] add ss.levitator
execute as @s store result storage restat:gravity temp.gravity double -.01 run scoreboard players get @s ss.gravityTemp
execute as @s run function restat:abilities/levitation/ascend with storage restat:gravity temp

#say levitating