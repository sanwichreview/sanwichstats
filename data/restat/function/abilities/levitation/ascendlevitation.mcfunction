execute as @s[scores={ss.isIdleLevitating=0,ss.levitationUnstuckTimer=0}] at @s run playsound minecraft:sanwichstats.magic1 master @a ~ ~ ~ .1 0.8
execute as @s[scores={ss.isIdleLevitating=0,ss.levitationUnstuckTimer=0}] at @s run particle minecraft:dust_plume ~ ~ ~ .15 .15 .15 .05 70 force @a
execute as @s[scores={ss.isIdleLevitating=0,ss.levitationUnstuckTimer=0}] at @s run particle minecraft:wax_off ~ ~ ~ .5 1 .5 1 40 force @a
scoreboard players set @s ss.isIdleLevitating 0
scoreboard players set @s ss.isDescendLevitating 0
scoreboard players set @s ss.isLevitating 1
tag @s[tag=!ss.levitator] add ss.levitator
attribute @s generic.gravity base set -.015
attribute @s generic.fall_damage_multiplier base set 0

#say levitating