tellraw @s[tag=ss.maxDamage] {"color":"dark_red","underlined":true,"text":"Your damage cannot go any higher! Continue at your own peril!"}
tellraw @s[tag=ss.minArmor] {"color":"dark_red","underlined":true,"text":"You have no armor left to give! Continue at your own peril!"}

scoreboard players set @s[scores={ss.incompatabilityCheck=0}] ss.incompatabilityCheck 1