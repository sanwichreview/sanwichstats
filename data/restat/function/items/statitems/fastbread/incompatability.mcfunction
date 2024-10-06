tellraw @s[tag=ss.maxSpeed] {"color":"dark_red","underlined":true,"text":"Your speed cannot go any higher! Continue at your own peril!"}
tellraw @s[tag=ss.minHealth] {"color":"dark_red","underlined":true,"text":"You have no more health to give! Continue at your own peril! (you may die)"}

scoreboard players set @s[scores={ss.incompatabilityCheck=0}] ss.incompatabilityCheck 1