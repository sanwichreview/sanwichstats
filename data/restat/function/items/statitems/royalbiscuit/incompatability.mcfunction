tellraw @s[tag=ss.minHealth] {"color":"dark_red","underlined":true,"text":"You don't have any more health to give! Continue at your own peril! (you may die)"}
tellraw @s[tag=ss.minHealth] {"color":"dark_red","underlined":true,"text":"Your armor cannot go any higher! Continue at your own peril!"}

scoreboard players set @s[scores={ss.incompatabilityCheck=0}] ss.incompatabilityCheck 1