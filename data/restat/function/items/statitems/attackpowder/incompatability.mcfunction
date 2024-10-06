tellraw @s[tag=ss.minHealth] {"color":"dark_red","underlined":true,"text":"Your health cannot go any lower! Continue at your own peril (you may die)!"}
tellraw @s[tag=ss.maxAttackSpeed] {"color":"dark_red","underlined":true,"text":"Your attack speed cannot go any higher! Continue at your own peril!"}

scoreboard players set @s[scores={ss.incompatabilityCheck=0}] ss.incompatabilityCheck 1