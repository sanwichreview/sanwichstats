scoreboard players set @s ss.holdingJump 0
#say unjumped
#execute as @s[scores={ss.isDoubleJumped=1..}] run say undoublejumped
scoreboard players set @s ss.isDoubleJumped 0