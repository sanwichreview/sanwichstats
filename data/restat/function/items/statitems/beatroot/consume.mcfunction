
execute as @s[tag=!ss.minHealth,tag=!ss.maxDamage] run function restat:items/statitems/beatroot/statchange
execute as @s[tag=ss.minHealth] run damage @s 100000000000 restat:stupidity by @s from @s
execute as @s[tag=ss.maxDamage] run tellraw @s {"color":"gray","italic":true,"text":"You get nothing! You LOSE!"}
advancement revoke @s only restat:statitems/beatroot
execute as @s[tag=!ss.minHealth] run function restat:setstats