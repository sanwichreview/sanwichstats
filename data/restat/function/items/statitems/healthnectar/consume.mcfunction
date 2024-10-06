

execute as @s[tag=!ss.maxHealth,tag=!ss.minArmor] run function restat:items/statitems/healthnectar/statchange
execute as @s[tag=ss.maxHealth] run tellraw @s {"color":"gray","italic":true,"text":"You get nothing! You LOSE!"}
execute as @s[tag=ss.maxArmor] run tellraw @s {"color":"gray","italic":true,"text":"You get nothing! You LOSE!"}
advancement revoke @s only restat:statitems/healthnectar
function restat:setstats
#damage @s 0 falling_anvil