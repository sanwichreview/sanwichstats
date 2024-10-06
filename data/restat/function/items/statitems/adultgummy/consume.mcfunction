
execute as @s[tag=!ss.maxHealth] run function restat:items/statitems/adultgummy/statchange
execute as @s[tag=ss.maxHealth] run tellraw @s {"color":"gray","italic":true,"text":"You get nothing! You LOSE!"}
advancement revoke @s only restat:statitems/adultgummy
execute as @s[tag=!ss.maxHealth] run function restat:setstats