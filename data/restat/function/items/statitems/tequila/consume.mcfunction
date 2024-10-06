advancement revoke @s only restat:statitems/tequila
execute as @s[tag=!ss.minArmor,tag=!ss.maxDamage] run function restat:items/statitems/tequila/statchange
execute as @s[tag=ss.maxDamage,tag=!ss.minArmor] run tellraw @s {"color":"gray","italic":true,"text":"You get nothing! You LOSE!"}
execute as @s[tag=ss.minArmor,tag=!ss.maxDamage] run tellraw @s {"color":"gray","italic":true,"text":"You get nothing! You LOSE!"}
execute as @s[tag=ss.minArmor,tag=ss.maxDamage] run tellraw @s {"color":"gray","italic":true,"text":"You get nothing! You LOSE!"}
execute as @s[tag=!ss.minArmor,tag=!ss.maxDamage] run function restat:setstats