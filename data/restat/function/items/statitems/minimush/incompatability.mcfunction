tellraw @s {"color":"dark_red","underlined":true,"text":"You're at your smallest! Shrink no further! (you may die)"}
tellraw @s[tag=ss.minHealth] {"color":"dark_red","underlined":true,"text":"You don't have any more health to give! Continue at your own peril! (you may die)"}
scoreboard players set @s[scores={ss.incompatabilityCheck=0}] ss.incompatabilityCheck 1