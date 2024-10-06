scoreboard players add @s ss.crouchTimer 1

#execute as @s[scores={ss.crouchCount=2..}] run say double!
execute as @s[scores={ss.crouchCount=2..}] run scoreboard players set @s ss.isDoubleCrouched 1
execute as @s[scores={ss.crouchCount=2..}] run scoreboard players set @s ss.crouchCount 0


execute as @s[scores={ss.crouchTimer=7..}] run scoreboard players set @s ss.crouchCount 0
execute as @s[scores={ss.crouchTimer=7..}] run scoreboard players set @s ss.crouchTimer 0
