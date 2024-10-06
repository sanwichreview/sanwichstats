scoreboard players add @s ss.jumpTimer 1

#execute as @s[scores={ss.jumpCount=2..}] run say double!
execute as @s[scores={ss.jumpCount=2..}] run scoreboard players set @s ss.isDoubleJumped 1
execute as @s[scores={ss.jumpCount=2..}] run scoreboard players set @s ss.jumpCount 0


execute as @s[scores={ss.jumpTimer=6..}] run scoreboard players set @s ss.jumpCount 0
execute as @s[scores={ss.jumpTimer=6..}] run scoreboard players set @s ss.jumpTimer 0
