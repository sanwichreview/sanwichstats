
execute as @s[tag=!ss.maxSpeed,tag=!ss.minHealth] run function restat:items/statitems/fastbread/statchange
execute as @s[tag=ss.minHealth] run damage @s 100000000000 magic by @s from @s
execute as @s[tag=ss.maxSpeed] run tellraw @s {"color":"gray","italic":true,"text":"You get nothing! You LOSE!"}
advancement revoke @s only restat:statitems/fastbread
function restat:setstats