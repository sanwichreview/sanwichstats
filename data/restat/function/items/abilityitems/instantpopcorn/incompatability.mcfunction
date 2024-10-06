tellraw @s[scores={ss.healthCompare=..8},tag=!ss.majorAbility] {"color":"dark_red","underlined":true,"text":"You don't have any more health to give! This item will do nothing! (you may die, too)"}
tellraw @s[tag=ss.ability.teleport] {"color":"dark_red","underlined":true,"text":"You already have this ability! This item will do nothing!"}

scoreboard players set @s[scores={ss.incompatabilityCheck=0}] ss.incompatabilityCheck 1