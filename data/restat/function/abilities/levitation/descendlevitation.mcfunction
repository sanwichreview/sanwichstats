scoreboard players set @s ss.isLevitating 0
scoreboard players set @s ss.isIdleLevitating 0
scoreboard players set @s ss.isDescendLevitating 1
attribute @s generic.gravity base set .02
execute if items entity @s weapon.* minecraft:mace run attribute @s generic.gravity base set .08
attribute @s generic.fall_damage_multiplier base set 0
execute if items entity @s weapon.* minecraft:mace run attribute @s generic.fall_damage_multiplier base set 1
execute unless items entity @s weapon.* minecraft:mace run tag @s remove ss.maceDescending
execute if items entity @s weapon.* minecraft:mace run tag @s add ss.maceDescending
tag @s add ss.levitateNegateMotion
tag @s add ss.levitateSlowFall
effect give @s slow_falling 1 1 true 