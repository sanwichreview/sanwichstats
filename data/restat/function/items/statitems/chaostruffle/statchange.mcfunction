$scoreboard players set @s ss.randomInt $(roll) 
execute as @s[scores={ss.randomInt=1}] run scoreboard players add @s ss.healthBonus 2 
execute as @s[scores={ss.randomInt=2}] run scoreboard players add @s ss.damageBonus 5
execute as @s[scores={ss.randomInt=3}] run scoreboard players add @s ss.speedBonus 10
execute as @s[scores={ss.randomInt=4}] run scoreboard players add @s ss.mineSpeedBonus 7
execute as @s[scores={ss.randomInt=5}] run scoreboard players add @s ss.entityReachBonus 5
execute as @s[scores={ss.randomInt=6}] run scoreboard players add @s ss.blockReachBonus 10
execute as @s[scores={ss.randomInt=7}] run scoreboard players add @s ss.attackSpeedBonus 2
scoreboard players set @s ss.effect.chaosTruffle 1
tag @s add ss.nochest
function restat:setstats